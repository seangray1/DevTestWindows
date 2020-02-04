/**
 * @File Name          : newJobLWC.js
 * @Description        : 
 * @Author             : Sean Gray
 * @Group              : 
 * @Last Modified By   : Sean Gray
 * @Last Modified On   : 2/1/2020, 11:16:12 AM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    1/23/2020   Sean Gray     Initial Version
**/
import { LightningElement, track } from 'lwc';
//import SearchAccountRoles from '@salesforce/apex/NewJobController.GetAccountRoles';
import SearchProperties from '@salesforce/apex/NewJobController.GetProperties';
import GetMasterJobs from '@salesforce/apex/NewJobController.GetMasterJobs';
import checkId from '@salesforce/apex/NewJobController.CheckId';
import CreateNewJob from '@salesforce/apex/NewJobController.CreateNewJob';
import { NavigationMixin } from 'lightning/navigation';
var ContactJSON;
var AccountJSON;
var PropertyJSON;
var JobJSON;
const DELAY = 600;
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
@track ContactId;
@track ContactType;
@track FirstName;
@track LastName;
@track MailingStreet;
@track MailingCity;
@track MailingState;
@track MailingCounty;
@track AccountId;
@track MailingPostalCode;
@track Phone;
@track Email;
@track PhoneExt;
@track AccountName;
@track BillingStreet;
@track BillingCity;
@track BillingState;
@track BillingPostalCode;
@track TypeChange;
@track BillingCountry;
@track AccountPhone;
@track AccountPhoneExt;
@track City;
@track Country;
@track State;
@track AddressLine1;
@track PropertyType;
@track Zip;
@track Description;
@track Division;
@track Office;
@track JobClass;
@track EstimateType;
@track Claim;
@track Deductible;
@track AccountRoleLineItems = [{}];
@track loading = false;
@track data;
ContactIdChange(e){
    this.ContactId = e.detail.value;
}
ContactTypeChange(e){
    this.ContactType = e.detail.value;
}
FirstNameChange(e){
    this.FirstName = e.detail.value;
}
LastNameChange(e){
    this.LastName = e.detail.value;
}
MailingStreetChange(e){
    this.MailingStreet = e.detail.value;
}
MailingCityChange(e){
    this.MailingCity = e.detail.value;
}
MailingStateChange(e){
    this.MailingState = e.detail.value;
}
MailingCountyChange(e){
    this.MailingCounty = e.detail.value;
}
AccountIdChange(e){
    this.AccountId = e.detail.value;
}
MailingPostalCodeChange(e){
    this.MailingPostalCode = e.detail.value;
}
PhoneChange(e){
    this.Phone = e.detail.value;
}
EmailChange(e){
    this.Email = e.detail.value;
}
PhoneExtChange(e){
    this.PhoneExt = e.detail.value;
}
AccountNameChange(e){
    this.AccountName = e.detail.value;
}
BillingStreetChange(e){
    this.BillingStreet = e.detail.value;
}
BillingCityChange(e){
    this.BillingCity = e.detail.value;
}
BillingStateChange(e){
    this.BillingState = e.detail.value;
}
BillingPostalCodeChange(e){
    this.BillingPostalCode = e.detail.value;
}
TypeChange(e){
    this.Type = e.detail.value;
}
BillingCountryChange(e){
    this.BillingCountry = e.detail.value;
}
AccountPhoneChange(e){
    this.AccountPhone = e.detail.value;
}
AccountPhoneExt(e){
    this.AccountPhoneExtChange = e.detail.value;
}
PropertyNameChange(e){
    this.PropertyName = e.detail.value;
}
CityChange(e){
    this.City = e.detail.value;
}
CountryChange(e){
    this.Country = e.detail.value;
}
StateChange(e){
    this.State = e.detail.value;
}
AddressLine1Change(e){
    this.AddressLine1 = e.detail.value;
}
PropertyTypeChange(e){
    this.PropertyType = e.detail.value;
}
ZipChange(e){
    this.Zip = e.detail.value;
}
DescriptionChange(e){
    this.Description = e.detail.value;
}
DivisionChange(e){
    this.Division = e.detail.value;
}
OfficeChange(e){
    this.Office = e.detail.value;
}
JobClassChange(e){
    this.JobClass = e.detail.value;
}
EstimateTypeChange(e){
    this.EstimateType = e.detail.value;
}
ClaimChange(e){
    this.Claim = e.detail.value;
}
DeductibleChange(e){
    this.Deductible = e.detail.value;
}
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
    this.PropertyID = this.PropertySelectedField.Id;
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
       if(this.searchKey.length === 0){this.Properties = null;}
       if(this.searchKey.length >= 3){
           
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
        }
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
        //let ARAddress = TblRow[k].querySelector('.ARAddress').value;
        let ARContact = TblRow[k].querySelector('.ARContact').value;
        let ARAccount = TblRow[k].querySelector('.ARAccount').value;
        AccountRoles.push({
            Name: ARName, Roles__c: ARRoles,  Contact_ID__c: ARContact, Account_ID__c: ARAccount
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
    this.AccountRoles.splice(DeleteRowIndex-1,1);
}

CreateNewJob(){
            if(((!this.ContactId ) && (!this.LastName)) || ((!this.ContactId) && (!this.AccountId && (!this.AccountName || !this.AccountPhone)))){
                this.error = true;
            }else{
            this.loading = true;
            let AccountRoleInfo = this.GenerateAccountRoleJSON();
            //Account Roles is good to go.
            //Caller now
            //set up a JSON set up.
            ContactJSON = JSON.stringify({'ContactId': this.ContactId, 'FirstName': this.FirstName, 'ContactType':this.ContactType, 'LastName': this.LastName,
            'MailingStreet': this.MailingStreet,'MailingCity': this.MailingCity,'MailingState': this.MailingState,'MailingCounty': this.MailingCounty,
            'AccountId': this.AccountId,'MailingPostalCode': this.MailingPostalCode,'Phone': this.Phone,'Email': this.Email,
            'PhoneExt': this.PhoneExt});
            //Now for the Account
            AccountJSON = JSON.stringify({'AccountName': this.AccountName, 'BillingStreet': this.BillingStreet, 'BillingCity': this.BillingCity,
            'BillingState': this.BillingState,'BillingPostalCode': this.BillingPostalCode,'TypeChange': this.TypeChange,'BillingCountry': this.BillingCountry,
            'PhoneChange': this.PhoneChange,'AccountPhoneExt': this.AccountPhoneExt});
            //Property Data
            PropertyJSON = JSON.stringify({'PropertyId': this.PropertyID, 'City': this.City, 'Country': this.Country, 'State': this.State,
            'AddressLine1': this.AddressLine1,'PropertyType': this.PropertyType, 'Zip': this.Zip});
            //Job Fields
            JobJSON = JSON.stringify({'Description': this.Description, 'Division': this.Division, 'Office': this.Office, 'JobClass': this.JobClass,
            'EstimateType': this.EstimateType,'Claim': this.Claim, 'Deductible': this.Deductible});
            //Master Job is just MasterJobId, if null then need to create a new one.
            CreateNewJob({ContactInfo : ContactJSON, AccountRoleInfo : AccountRoleInfo, AccountInfo : AccountJSON, PropertyInfo : PropertyJSON,
                JobInfo : JobJSON, MasterJobId:this.MasterJobId})
                .then(result => {
                                this.data = result;
                                if(this.data !== null){
                                this[NavigationMixin.Navigate]({
                                    type: 'standard__recordPage',
                                    attributes: {
                                        recordId: this.data,
                                        objectApiName: 'ATI_Job__c',
                                        actionName: 'view',
                                    },
                                });
                            }
                            })
    }
}
   

GenerateAccountRoleJSON(){
    var AccountRoleObject = {AccountRoleLineItems : this.GetAccountRolesObjects()
    };
        return JSON.stringify(AccountRoleObject);
}

GetAccountRolesObjects() {
        var AccountRoles = [];
        let ActTblRow =  Array.from(this.template.querySelectorAll('table.ActRoles tbody tr'));
        console.log('ProjTblRow' + ActTblRow);
        let ActRowCount = ActTblRow.length;
        for(let Actindex=0; Actindex<ActRowCount; Actindex++){
            let ARName = ActTblRow[Actindex].querySelector('.ARName').value;
            let ARRoles = ActTblRow[Actindex].querySelector('.ARRoles').value;
            let ARContact = ActTblRow[Actindex].querySelector('.ARContact').value;
            let ARAccount = ActTblRow[Actindex].querySelector('.ARAccount').value;
            AccountRoles.push({
                    name: ARName,
                    roles: ARRoles,
                    contact: ARContact,
                    account: ARAccount
                });
            }
            console.log('Account Roles' + AccountRoles);
            return AccountRoles;
        }  
    }