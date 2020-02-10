/**
 * @File Name          : cloneJobLWC.js
 * @Description        : 
 * @Author             : Sean Gray
 * @Group              : 
 * @Last Modified By   : Sean Gray
 * @Last Modified On   : 1/21/2020, 5:31:04 PM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    1/21/2020   Sean Gray     Initial Version
**/
import { LightningElement, track, api, wire } from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { getRecord } from 'lightning/uiRecordApi';
import JOB_OBJECT from '@salesforce/schema/ATI_Job__c';
import { NavigationMixin, CurrentPageReference } from 'lightning/navigation';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

const fields = [
    'ATI_Job__c.Name',  'ATI_Job__c.Job_Name__c', 
    // 'ATI_Job__c.Job_Number__c', 'ATI_Job__c.Account__c', 'ATI_Job__c.Contact__c', 'ATI_Job__c.Taken_By__c', 'ATI_Job__c.Customer__c',
    // 'ATI_Job__c.Lead_Source__c', 'ATI_Job__c.Year_Structure_Built__c', 'ATI_Job__c.Date_of_Loss__c', 'ATI_Job__c.Description__c', 'ATI_Job__c.Job_Class__c', 'ATI_Job__c.Probability__c',
    // 'ATI_Job__c.Project_Site_Contact_Name__c', 'ATI_Job__c.Project_Site_Contact_Account__c', 'ATI_Job__c.Office2__c',  'ATI_Job__c.Stage__c', 
    // 'ATI_Job__c.Project_type__c', 
    // 'ATI_Job__c.Referred_by__c', 
    // 'ATI_Job__c.CloseDate__c', 
    // 'ATI_Job__c.Contact_Information__c', 
    // 'ATI_Job__c.City_of_LA__c', 
    // 'ATI_Job__c.Project_Site_Address__c', 
    // 'ATI_Job__c.Project_Site_Address_2__c', 
    // 'ATI_Job__c.Project_Site_City__c', 
    // 'ATI_Job__c.Project_Site_State__c', 
    // 'ATI_Job__c.Project_Site_Zipcode__c', 
    // 'ATI_Job__c.Project_Site_Contact_Email__c', 
    // 'ATI_Job__c.no_Email_Available__c', 
    // 'ATI_Job__c.Policy__c', 
    // 'ATI_Job__c.Deductible__c', 
    // 'ATI_Job__c.Claim__c', 
    // 'ATI_Job__c.Cont_P_O_Client_Job__c', 
    // 'ATI_Job__c.PO__c', 
    // 'ATI_Job__c.Send_Prelim__c'
];
export default class CloneJobLWC extends LightningElement {
    connectedCallback(){
        console.log('Record id is ' + this.recordId);
    }
@track ContPOClientJob;
@track PO;
@track SendPrelim;
@track CityOfLA;
@track ProjectSiteCity;
@track ProjectSiteState;
@track ProjectSiteZipcode;
@track ProjectSiteContactEmail;
@track NoEmailAvailable;
@track Policy;
@track Deductible;
@track Claim;
@track Probability;
@track ProjectSiteAddress;
@track ProjectSiteAddress2;
@track ProjectSiteContactAccount;
@track ProjectSiteContactName;
@track Office;
@track Stage;
@track ReferredBy;
@track CloseDate;
@track ContactInformation;
@track LeadSource;
@track YearStructureBuilt;
@track DateOfLoss;
@track Description;
@track JobClass;
@track Name;
@track JobName;
@track JobNumber;
@track Account;
@track Contact;
@track TakenBy;
@track Customer;
@track No = false;

@api recordId;    
@track Yes = false;
@track Start = true;
    
@wire(CurrentPageReference) pageRef;

@wire(getObjectInfo, { objectApiName: JOB_OBJECT })
    objectInfo;

@wire(getRecord, { recordId: '$recordId', fields })
	loadJob({ error, data }) {
		if (error) {
            console.log('error' + error);
			// TODO: handle error
		} else if (data) {
			
           console.log('Testing name ' + data.fields.Name.value);
            this.Name = data.fields.Name.value;
            this.JobName = data.fields.Job_Name__c.value;
            // this.JobNumber = data.fields.Job_Number__c.value;
            // this.Account = data.fields.Account__c.value;
            // this.Contact = data.fields.Contact__c.value;
            // this.TakenBy = data.fields.Taken_By__c.value;
            // this.Customer = data.fields.Customer__c.value;
            // this.LeadSource = data.fields.Lead_Source__c.value;
            // this.YearStructureBuilt = data.fields.Year_Structure_Built__c.value;
            // this.DateOfLoss = data.fields.Date_of_Loss__c.value;
            // this.Description = data.fields.Description__c.value;
            // this.JobClass = data.fields.Job_Class__c.value;
            // this.Probability = data.fields.Probability__c.value;
            // this.ProjectSiteContactName = data.fields.Project_Site_Contact_Name__c.value;
            // this.ProjectSiteContactAccount = data.fields.Project_Site_Contact_Account__c.value;
            // this.Office = data.fields.Office2__c.value;
            // this.Stage = data.fields.Stage__c.value;
            // this.ProjectType = data.fields.Project_type__c.value;
            // this.ReferredBy = data.fields.Referred_by__c.value;
            // this.County = data.fields.County__c.value;
            // this.CloseDate = data.fields.CloseDate__c.value;
            // this.ContactInformation = data.fields.Contact_Information__c.value;
            // this.CityOfLA = data.fields.City_of_LA__c.value;
            // this.ProjectSiteAddress = data.fields.Project_Site_Address__c.value;
            // this.ProjectSiteAddress2 = data.fields.Project_Site_Address_2__c.value;
            // this.ProjectSiteCity = data.fields.Project_Site_City__c.value;
            // this.ProjectSiteState = data.fields.Project_Site_State__c.value;
            // this.ProjectSiteZipcode = data.fields.Project_Site_Zipcode__c.value;
            // this.ProjectSiteContactEmail = data.fields.Project_Site_Contact_Email__c.value;
            // this.NoEmailAvailable = data.fields.no_Email_Available__c.value;
            // this.Policy = data.fields.Policy__c.value;
            // this.Deductible = data.fields.Deductible__c.value;
            // this.Claim = data.fields.Claim__c.value;
            // this.ContPOClientJob = data.fields.Cont_P_O_Client_Job__c.value;
            // this.PO = data.fields.PO__c.value;
            // this.SendPrelim = data.fields.Send_Prelim__c.value;
            

		}
    }
    YesTrue(){
        this.Start = false;
        this.Yes = true;
    }
    NoTrue(){
        this.Start = false;
        this.No = true;
    }
    Cancel(){
        this.loading = true;
        this.dispatchEvent(new CustomEvent('closeform'));
        // this[NavigationMixin.Navigate]({
        //     type: 'standard__recordPage',
        //     attributes: {
        //         recordId: this.recordId,
        //         objectApiName: 'ATI_Job__c',
        //         actionName: 'view',
        //     },
        // });
    }
}