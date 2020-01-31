/**
 * @File Name          : newJobLWC.js
 * @Description        : 
 * @Author             : Sean Gray
 * @Group              : 
 * @Last Modified By   : Sean Gray
 * @Last Modified On   : 1/31/2020, 2:49:14 PM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    1/23/2020   Sean Gray     Initial Version
**/
import { LightningElement, track } from 'lwc';
//import SearchAccountRoles from '@salesforce/apex/NewJobController.GetAccountRoles';
import SearchProperties from '@salesforce/apex/NewJobController.GetProperties';
import GetMasterJobs from '@salesforce/apex/NewJobController.GetMasterJobs';
import checkId from '@salesforce/apex/NewJobController.CheckId';

const DELAY = 900;
export default class NewJobLWC extends LightningElement {
@track testingProperty;
    @track Properties; 
@track searchKey;
@track NewCaller = false;
@track NewAccount = false;
@track NewProperty = false;
@track PropertyID;
@track PropertyPicked = false;
@track AccountRoles = [{}];
@track AccountRolesSelected = false;
@track AccountRolesRecieved ='';
@track inputDisabled = true;
@track PropertySelected = false;
@track PropertySelectedField;
@track PropertyValue;
@track bShowModal = false;
@track MasterJobDetails;
@track MasterJobId;

 //connectedCallback(){
//     this.AccountRoles.push({Name : '',})
 //}
ToggleNewCaller(){
    this.NewAccount = false;
    if(!this.NewCaller){
        this.NewCaller = true;
    }else{
        this.NewCaller = false;
    }
}
ToggleNewAccount(){
    if(!this.NewAccount){
        this.NewAccount = true;
    }else{
        this.NewAccount = false;
    }
}
ToggleNewProperty(){
    if(!this.NewProperty){
        this.NewProperty = true;
    }else{
        this.NewProperty = false;
    }
}
AddNewRow(){
    //this.AccountRoleNew(Name ='test');
    this.AccountRoles.push({Name : '', Type : '', Contact : ''});
}
showModal(){
    this.bShowModal = true;
}
closeModal(){
    this.bShowModal = false;
}
// PropertyChange(event){
//     this.PropertyID = event.detail.value;
//     console.log(this.PropertyID.length);
//     if(this.PropertyID.length > 17){
//     this.PropertyPicked = true;
    
//     var PropertyJSON = {'PropertyId': this.PropertyID};
//     var PackagedJSON = JSON.stringify(PropertyJSON);
    
//     SearchAccountRoles({PropertyId:PackagedJSON})
//     .then(result => {
//         this.AccountRolesRecieved = result;
//         for (var i = 0; i < this.AccountRolesRecieved.length; i++){
//                 this.AccountRoles.push({name: this.AccountRolesRecieved[i],}) 
//             }
//         console.log('records' + this.records);
//         this.error = undefined;
//         //console.log(' records ', this.records);
//     })
//     .catch(error => {
//         this.error = error;
//         this.records = undefined;
//     });

// }
// }
populateMasterJobField(event){
    this.MasterJobDetails = event.target.value;
    this.MasterJobId = this.MasterJobDetails.Id;
    this.bShowModal = false;
}
populatePropertyField(event){
    
   // console.log('Property Id first is + ' + this.Property.Id);
    //console.log('Property Id first is + ' + this.testingProperty);
    //this.PropertyID = event.detail.value;
    this.Properties = '';
    this.PropertySelected = true;
    this.testingProperty = event.target.value;
    this.PropertySelectedField = event.target.value;
    this.PropertyValue = this.PropertySelectedField.Name;
    console.log('Testing name alert ' + this.PropertySelectedField.name);
    console.log('PropertyID ' + this.testingProperty);

    checkId({propId:this.testingProperty.Id}).then(result => {
        this.AccountRoles = result;
        this.AccountRolesSelected = true;
        console.log('Account Roles is ' + this.AccountRoles);
        console.log('Account Roles Name ' + this.AccountRoles.Name);
        console.log('Account Roles Contact ' + this.AccountRoles.Contact_ID__c);
    })
    GetMasterJobs({propId:this.testingProperty.Id}).then(result => {
        this.MasterJobs = result;
        if(this.MasterJobs !== null){
            this.bShowModal = true;
        }
    })
}
PropertyChanged(event){
    
    // window.clearTimeout(this.delayTimeout);
    console.log('testing ');
    window.clearTimeout(this.delayTimeout);
       this.searchKey = event.target.value;
        // eslint-disable-next-line @lwc/lwc/no-async-operation
        //this.delayTimeout = setTimeout(() => {
            // eslint-disable-next-line @lwc/lwc/no-async-operation
            this.delayTimeout = setTimeout(() => {
                SearchProperties({searchKey : this.searchKey})
                .then(result => {
                    this.Properties = result;
                    console.log('Properties ' + this.Properties);
                })
                
                .catch(error => {
                    this.error = error;
                });
            }, DELAY);
        // });

}

getAllAccountRoleObjects() {
    var AccountRoles = [];
//var AccountRoless
    //Get Value from HTML 
    let TblRow =  Array.from(this.template.querySelectorAll('table.ActRoles tbody tr'));
    console.log('tbl' + TblRow);
    let RowCount = TblRow.length;
    console.log('RowCount' + RowCount);
    for(let k=0; k<RowCount; k++){
        let ARName = TblRow[k].querySelector('.ARName').value;
        let ARRoles = TblRow[k].querySelector('.ARRoles').value;
        let ARAddress = TblRow[k].querySelector('.ARAddress').value;
        let ARContact = TblRow[k].querySelector('.ARContact').value;
        let ARAccount = TblRow[k].querySelector('.ARAccount').value;
        // let TblReg = TblRow[k].querySelectorAll('.PM_Reg');
        // let TblOt = TblRow[k].querySelectorAll('.PM_OT');
        // let TblDbl = TblRow[k].querySelectorAll('.PM_DBL');
        
        

        
        //let CWPw = TblRow[k].querySelector('.CWPw').checked;
        
        AccountRoles.push({
            Name: ARName, Roles__c: ARRoles, Address__c : ARAddress, Contact_ID__c: ARContact, Account_ID__c: ARAccount
        });
        console.log('Account roles contains ' +AccountRoles);

    }
    return AccountRoles;
}


DeleteARRow(e){
    var DeleteRowIndex = e.target.parentNode.parentNode.rowIndex;
    console.log('Delete row index ' + DeleteRowIndex);
    console.log('Test ' + e);
    this.AccountRoles = this.getAllAccountRoleObjects();
   
   // let x1 = e.target.getElementById("TblRow").parentNode.rowIndex;
    //console.log('Delete row please ' + x1);

    this.AccountRoles.splice(DeleteRowIndex-1,1);
//var i = r.parentNode.parentNode.rowIndex;
//document.getElementById("myTable").deleteRow(i);
    // this.Supervisors = this.getAllSupervisorObjects();
    // this.CrewMembers = this.getAllCrewMembersObjects();
}





}