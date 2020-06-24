import { LightningElement, track, api, wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
// import ApprovedOrRejected from '@salesforce/apex/ProjectSchedule.ProjectScheduleInsert';
// import testapexBudgetOutput from '@salesforce/apex/ProjectSchedule.retrieveBudgetLineItems';

var budgetlength;
var i;
var budgetLineItem;
var budgetlineItemsTest = {};
export default class budgetLWC extends NavigationMixin (LightningElement) {
    activeSections = [
        "Budget Info",
        "Budget Line Items",
      ];
    connectedCallback(){
    this.recordId = this.jobIdtosearch;
    // testapexBudgetOutput({recordId:this.recordId})
    //     .then(result => {
            // console.log('First Result is : ' + result);
            // this.budgetlineItemsRecieved = result;
            // console.log('Result is '+ this.budgetlineItemsRecieved);
            // budgetlength = this.budgetlineItemsRecieved.length;
        // i = 0;
    // for (i = 0; i < 20; i++){
    //     this.Budgetlineitems.push({name: this.budgetlineItemsRecieved[i],}) 
    // }
    /*for(budgetLineItem in budgetlineItemsTest){
        this.Budgetlineitems.push({name: budgetLineItem})   
    }*/

    this.Budgetlineitems.push({name:'Appliances'});
    this.Budgetlineitems.push({name:'Cabinetry'});
    this.Budgetlineitems.shift();
       // })        
    }
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
    

    UpdateName(event){
        this.schedulename = event.detail.value;
    }
    handleNameChange(event){
        this.name = event.detail.value;
    }
    handleStartDateChange(event){
        this.startDate = event.detail.value;
    }
    handleEndDateChange(event){
        this.endDate = event.detail.value;
    }
    handleSectionToggle(event) {
        const openSections = event.detail.openSections;
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
    AddRow(){
        this.Budgetlineitems.push({Trade__c:''});
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
                    objectApiName: 'Project__c',
                    actionName: 'view',
                },
            });
        }
        })
    
    
    
}
    testBudgetOutput(){
        testapexBudgetOutput({bud: this.testing})

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
        console.log('ProjTblRow' + ProjTblRow);
        let ProjRowCount = ProjTblRow.length;
        for(let Projindex=0; Projindex<ProjRowCount; Projindex++){
            let ProjName = ProjTblRow[Projindex].querySelector('.ProjName').value;
            let ProjStartDate = ProjTblRow[Projindex].querySelector('.ProjStartDate').value;
            let ProjEndDate = ProjTblRow[Projindex].querySelector('.ProjEndDate').value;
                Projects.push({
                    name: ProjName,
                    startDate: ProjStartDate,
                    endDate: ProjEndDate
                });
            }
            console.log('Projects' + Projects);
            return Projects;
        }
    }