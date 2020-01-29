/**
 * @File Name          : newJobLWC.js
 * @Description        : 
 * @Author             : Sean Gray
 * @Group              : 
 * @Last Modified By   : Sean Gray
 * @Last Modified On   : 1/23/2020, 3:08:44 PM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    1/23/2020   Sean Gray     Initial Version
**/
import { LightningElement, track } from 'lwc';
//import SearchAccountRoles from '@salesforce/apex/NewJobController.GetAccountRoles';
import SearchProperties from '@salesforce/apex/NewJobController.GetProperties';
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
@track AccountRoles;
@track AccountRolesSelected = false;
@track AccountRolesRecieved ='';
@track inputDisabled = true;
@track PropertySelected = false;
@track PropertySelectedField;

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
    this.AccountRoleNew(Name ='test');
    this.AccountRoles.push(this.AccountRoleNew);
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
populatePropertyField(event){
    
   // console.log('Property Id first is + ' + this.Property.Id);
    //console.log('Property Id first is + ' + this.testingProperty);
    //this.PropertyID = event.detail.value;
    this.Properties = '';
    this.PropertySelected = true;
    this.testingProperty = event.target.value;
    this.PropertySelectedField = event.target.value;
    console.log('Testing name alert ' + this.PropertySelectedField.name);
    console.log('PropertyID ' + this.testingProperty);

    checkId({propId:this.testingProperty.Id}).then(result => {
        this.AccountRoles = result;
        this.AccountRolesSelected = true;
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
}