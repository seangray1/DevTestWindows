/**
 * @File Name          : newProjectSchedule.js
 * @Description        : 
 * @Author             : Sean Gray
 * @Group              : 
 * @Last Modified By   : Sean Gray
 * @Last Modified On   : 2/4/2020, 3:05:38 PM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    9/7/2019   Sean Gray     Initial Version
**/
import { LightningElement, track, api, wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import ApprovedOrRejected from '@salesforce/apex/ProjectSchedule.ProjectScheduleInsert';
import testapexBudgetOutput from '@salesforce/apex/ProjectSchedule.testBudget';
import { getObjectInfo } from "lightning/uiObjectInfoApi";
import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import SCHEDULE_LINE_ITEMS from "@salesforce/schema/Schedule_Line_Item__c.Product_Options__c";
import SCHEDULE_OBJECT from "@salesforce/schema/Schedule_Line_Item__c";
import GetProductOptions from "@salesforce/apex/ProjectSchedule.GetProductOptions";


// import COURTESYCALL_FIELD from '@salesforce/schema/Case.Case_Type__c';

var budgetlength;
var i;
var budgetLineItem;
var budgetlineItemsTest = {};
export default class NewProjectSchedule extends NavigationMixin (LightningElement) {
@track ScreenLoaded = false;
@track ProductOptions = [{}];
@track ScheduleLineItems;
    @track savedRecord = true;
    @track loading;
    @track test = true;
    @track BudgetLineItemRecieved ="";
    @track schedulename = 'test';
    @track recordId;
    @track data;
    @track testing = 'test';
    @track Budgetlineitems = [{}];
    getcurrentpageurl = (new URL(document.location)).searchParams;
    @api jobIdtosearch = this.getcurrentpageurl.get('job__id');
    @track startDate;
    @track endDate;
    @track ProjectLineItems = [{}];
    @track ScheduleLineItemOptions = [{
    }];
    @track AccountRoles;
// @wire(getObjectInfo, { objectApiName: SCHEDULE_OBJECT })
//   objectInfo;
// @wire(getPicklistValues, {
//     recordTypeId: "$objectInfo.data.defaultRecordTypeId",
//     fieldApiName: SCHEDULE_LINE_ITEMS
//   })
//   ScheduleLineItems;


    connectedCallback(){
    this.recordId = this.jobIdtosearch;
    this.ScreenLoaded = true;
    
    GetProductOptions({}).then((result) => {
        var AccountRolePicklistValues = result;
        for (var i = 0; i < AccountRolePicklistValues.length; i++) {
          this.ProductOptions.push({
            label: AccountRolePicklistValues[i],
            value: AccountRolePicklistValues[i]
          });
        }
  
        this.ProductOptions.shift();
      });
      console.log(this.ProductOptions);
    testapexBudgetOutput({recordId:this.recordId})
        .then(result => {
            this.budgetlineItemsRecieved = result;
            budgetlength = this.budgetlineItemsRecieved.length;
        // i = 0;
    for (i = 0; i < budgetlength; i++){
        this.Budgetlineitems.push({name: this.budgetlineItemsRecieved[i].Trade__c, description : this.budgetlineItemsRecieved[i].Trade__c, 
            startDate : null, endDate : null, connectedTo : null, dayDiff : null});
            
        this.ScheduleLineItemOptions.push({label : this.budgetlineItemsRecieved[i].Trade__c, value : this.budgetlineItemsRecieved[i].Trade__c});
        
    }
    
    this.Budgetlineitems.shift();
    this.ScheduleLineItemOptions.shift();
    //this.ScheduleLineItemOptions.shift();
        })        
    }

    get options() {
        for (i = 0; i < this.Budgetlineitems.length; i++){
            this.ScheduleLineItemOptions.push({label : this.Budgetlineitems[i].name, value : this.Budgetlineitems[i].name}); 
        }
        return this.ScheduleLineItemOptions;
    }

    UpdateName(event){
        this.schedulename = event.detail.value;
    }
    handleNameChange(e){
        var nameCh = e.detail.value;
        var rowInd = e.target.parentNode.parentNode.rowIndex;
        console.log(' Row ind ' + rowInd);
        console.log('Namech ' + nameCh);
        this.Budgetlineitems = this.getAllAccountRoleObjects();
    }
    handleStartDateChange(event){
        this.startDate = event.detail.value;
    }
    handleEndDateChange(event){
        this.endDate = event.detail.value;
    }
    Cancel(){
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: this.recordId,
                objectApiName: 'ATI_Job__c',
                actionName: 'view',
            },
        });
    }
    CreateProject(){
        this.loading = true;
        let UpdatedJSON = this.GenerateProjectJSON();
        ApprovedOrRejected({schedulename : this.schedulename, recordId : this.recordId, ProjectJSON:UpdatedJSON})
        .then(result => {
            this.data = result;
            if(this.data !== null){
            this[NavigationMixin.Navigate]({
                type: 'standard__recordPage',
                attributes: {
                    recordId: this.data,
                    objectApiName: 'Schedule__c',
                    actionName: 'view',
                },
            });
        }
        })
    
    
    
}
DeleteARRow(e){
    var DeleteRowIndex = e.target.parentNode.parentNode.rowIndex;
    
    this.Budgetlineitems = this.getAllAccountRoleObjects();
    this.Budgetlineitems.splice(DeleteRowIndex-1,1);
}
getAllAccountRoleObjects() {
    var ScheduleLineItems = [];
//var AccountRoless
    //Get Value from HTML 
    let TblRow =  Array.from(this.template.querySelectorAll('table.ActRoles tbody tr'));
    
    let RowCount = TblRow.length;
    
    for(let k=0; k<RowCount; k++){
        let ScheduleName = TblRow[k].querySelector('.ScheduleName').value;
        let ScheduleDescription = TblRow[k].querySelector('.ScheduleDescription').value;
        //let ARAddress = TblRow[k].querySelector('.ARAddress').value;
        let ScheduleStartDate = TblRow[k].querySelector('.ScheduleStartDate').value;
        let ScheduleEndDate = TblRow[k].querySelector('.ScheduleEndDate').value;
        let ScheduleConnectedTo = TblRow[k].querySelector('.ScheduleConnectedTo').value;
        let ScheduleDaysDiff = TblRow[k].querySelector('.ScheduleDaysDiff').value;
        
        ScheduleLineItems.push({
            name: ScheduleName, description: ScheduleDescription,  startDate: ScheduleStartDate, endDate: ScheduleEndDate, connectedTo : ScheduleConnectedTo, dayDiff : ScheduleDaysDiff
        });
        

    }
    return ScheduleLineItems;
}

testBudgetOutput(){
    testapexBudgetOutput({bud: this.testing})

}

AddNewRow(){
        //this.AccountRoleNew(Name ='test');
    this.Budgetlineitems.push({Name : ''});
}    
GenerateProjectJSON() {
var ProjectObject = {
Budgetlineitems : this.getProjectObjects()
};
return JSON.stringify(ProjectObject);

}

getProjectObjects() {
    var Projects = [];
        let ProjTblRow =  Array.from(this.template.querySelectorAll('table.ProjTbl tbody tr'));
        
        let ProjRowCount = ProjTblRow.length;
        for(let Projindex=0; Projindex<ProjRowCount; Projindex++){
            let ProjName = ProjTblRow[Projindex].querySelector('.ProjName').value;
            let ProjStartDate = ProjTblRow[Projindex].querySelector('.ProjStartDate').value;
            let ProjEndDate = ProjTblRow[Projindex].querySelector('.ProjEndDate').value;
                Projects.push({
                    name: ProjName,
                    startDate: ProjStartDate,
                    endDate: ProjEndDate,
                    order : '',
                    days : ''
                });
            }
            
            return Projects;
        }  
}