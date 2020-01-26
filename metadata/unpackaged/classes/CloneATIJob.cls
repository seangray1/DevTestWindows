/**
 * @File Name          : CloneATIJob.cls
 * @Description        : 
 * @Author             : sean.gray@atirestoration.com
 * @Group              : 
 * @Last Modified By   : sean.gray@atirestoration.com
 * @Last Modified On   : 1/9/2020, 10:44:20 AM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    1/9/2020   sean.gray@atirestoration.com     Initial Version
**/
public class CloneATIJob {
    @AuraEnabled
    public static ATI_Job__c CloneSObject(String recordID){
        ATI_Job__c oldJob;
        try{
        if(Schema.sObjectType.ATI_Job__c.isAccessible()){
              oldJob = [SELECT Id, name, Job_Name__c,Job_Number__c, Account__c, Contact__r.ID, Customer__c, Lead_Source__c, Description__c, Job_Class__c, Project_Site_Contact_Name__c,Contact_Information__c, Project_Manager__r.id, Branch_Manager__r.id, Project_Site_Contact_Account__c, Office2__r.id, Stage__c, Taken_By__c, Project_type__c, Referred_by__r.id, CloseDate__c,Probability__c, County__c, City_of_LA__c, Project_Site_Address_2__c, Project_site_address__c, Project_site_city__c, Project_site_state__c, Project_site_zipcode__c, Year_Structure_built__c, Date_of_loss__c, Project_Site_Contact_Email__c, no_Email_Available__c, Policy__c, Deductible__c, Claim__c, Cont_P_O_Client_Job__c, PO__c, Send_prelim__c from ATI_Job__c Where Id = :recordID];
               //update oldJob;
            system.debug('CloneSObject working');
        }
        
        return oldJob;
        }
        catch(Exception ex){
            throw new AuraHandledException('Error: '+ex.getMessage());
        }
   } 
}