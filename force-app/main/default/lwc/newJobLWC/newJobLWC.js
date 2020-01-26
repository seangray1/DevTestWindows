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
import SearchAccountRoles from '@salesforce/apex/NewJobController.GetAccountRoles';

export default class NewJobLWC extends LightningElement {

@track NewCaller = false;
@track NewAccount = false;
@track NewProperty = false;
@track PropertyID;
@track PropertyPicked = false;
@track AccountRoles = [{}];
@track AccountRolesRecieved ='';

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
PropertyChange(event){
    this.PropertyID = event.detail.value;
    console.log(this.PropertyID.length);
    if(this.PropertyID.length > 17){
    this.PropertyPicked = true;
    
    var PropertyJSON = {'PropertyId': this.PropertyID};
    var PackagedJSON = JSON.stringify(PropertyJSON);
    
    SearchAccountRoles({PropertyId:PackagedJSON})
    .then(result => {
        this.AccountRolesRecieved = result;
        for (var i = 0; i < this.AccountRolesRecieved.length; i++){
                this.AccountRoles.push({name: this.AccountRolesRecieved[i],}) 
            }
        console.log('records' + this.records);
        this.error = undefined;
        //console.log(' records ', this.records);
    })
    .catch(error => {
        this.error = error;
        this.records = undefined;
    });

}
}


}