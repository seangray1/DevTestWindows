/**
 * @File Name          : NewJobController.cls
 * @Description        : 
 * @Author             : sean.gray@atirestoration.com
 * @Group              : 
 * @Last Modified By   : sean.gray@atirestoration.com
 * @Last Modified On   : 2/5/2020, 11:17:36 AM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    1/28/2020   sean.gray@atirestoration.com     Initial Version
**/
public with sharing class NewJobController {
    @AuraEnabled
    public static List<Account_Roles__c> GetAccountRoless(String PropertyId) {
        Id PropertyIDFinal;
        system.debug('Property is ' + PropertyID);
        JSONWrapper PropertyIDs = (JSONWrapper)JSON.deserialize(PropertyId, JSONWrapper.class);
        // for(Id ca : PropertyIDs.PropertyID){
        // PropertyIDFinal = ca; }
        system.debug('PropertyID is ' + PropertyID);
        List<Account_Roles__c> a = [Select Name FROM Account_Roles__c Where Property_ID__c =: PropertyIDs.PropertyID];
        system.debug('Account roles are ' + a);
        return a;
    }
    public class JSONWrapper{
        public List<Id> PropertyId {get;set;}
    }
    @AuraEnabled(cacheable = true)
    public static List<Property__c> GetProperties(String searchKey) {
        
        system.debug('Property is ' + searchKey);
        //JSONWrapper PropertyIDs = (JSONWrapper)JSON.deserialize(PropertyId, JSONWrapper.class);
        // for(Id ca : PropertyIDs.PropertyID){
        // PropertyIDFinal = ca; }
        String searchLikeKey = '%' + searchKey + '%';
        List<Property__c> props = [Select Id, Name, State__c, City__c, Address_Line_1__c, Zip__c FROM Property__c Where Address_Line_1__c Like : searchLikeKey];
        system.debug('Properties are ' + props);
        return props;
    }
    @AuraEnabled(cacheable = true)
    public static List<Office__c> GetOffices(String searchKey) {
        String searchLikeKey = '%' + searchKey + '%';
        List<Office__c> off = [Select Id, Name FROM Office__c Where Name Like : searchLikeKey];
        
        return off;
    }
    @AuraEnabled(cacheable = true)
    public static List<Contact> GetCustomers(String searchKey) {
        
        system.debug('Customer Key is ' + searchKey);
        //JSONWrapper PropertyIDs = (JSONWrapper)JSON.deserialize(PropertyId, JSONWrapper.class);
        // for(Id ca : PropertyIDs.PropertyID){
        // PropertyIDFinal = ca; }
        String searchLikeKey = '%' + searchKey + '%';
        List<Contact> conts = [Select Id, LastName, FirstName, Account.Name, Account.Id, Name FROM Contact Where Name Like : searchLikeKey Limit 10];
        system.debug('Contacts are ' + conts);
        return conts;
    }
    @AuraEnabled(cacheable = true)
    public static List<Account> GetContactAccounts(String searchKey) {
        
        system.debug('Customer Key is ' + searchKey);
        //JSONWrapper PropertyIDs = (JSONWrapper)JSON.deserialize(PropertyId, JSONWrapper.class);
        // for(Id ca : PropertyIDs.PropertyID){
        // PropertyIDFinal = ca; }
        String searchLikeKey = '%' + searchKey + '%';
        List<Account> accts = [Select Id,Name FROM Account Where Name Like : searchLikeKey Limit 10];
        system.debug('Contacts are ' + accts);
        return accts;
    }
    
    @AuraEnabled 
    public static list<Account_Roles__c> CheckId(string propId){
        List<Account_Roles__c> a = [Select Id, Name, Roles__c, Contact_ID__c, Address__c, Account_ID__c FROM Account_Roles__c Where Property_ID__c =: propId];
        system.debug('Prop Id + ' + propId);
        system.debug('Contact ID is ' + a);
        return a;

    }
    @AuraEnabled 
    public static list<Master_Job__c> GetMasterJobs(string propId){
        List<Master_Job__c> mj = [Select Id, Name, Stage__c, Property_ID__c FROM Master_Job__c Where Property_ID__c =: propId AND Active__c = true];
        system.debug('Prop Id + ' + propId);
        
        return mj;

        
    }
    @AuraEnabled  
    public static List<String> getPickListValuesIntoList(){  
               List<String> pickListValuesList= new List<String>(); 
                Schema.DescribeFieldResult fieldResult = Account_Roles__c.Roles__c.getDescribe();   
                List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();   
                for( Schema.PicklistEntry pickListVal : ple){  
                  pickListValuesList.add(pickListVal.getLabel());  
                }       
                return pickListValuesList;
            }
        
    @AuraEnabled 
    public static Id CreateNewJob(string ContactInfo, string AccountRoleInfo, string AccountInfo, string PropertyInfo, string JobInfo, string MasterJobId){
        system.debug('Contact Wrap ' + ContactInfo);
        ContactWrapper contactWrap = (ContactWrapper)JSON.deserialize(ContactInfo, ContactWrapper.class);
        system.debug('Contact deserialized first name ' +contactWrap.FirstName);
        AccountWrapper accountWrap = (AccountWrapper)JSON.deserialize(AccountInfo, AccountWrapper.class);
        system.debug('Contact Wrap ' + contactWrap);
        system.debug(' Contact Info ' + ContactInfo);
        system.debug(' AccountRoleInfo ' + AccountRoleInfo);
        system.debug(' Account Info ' + AccountInfo);
        system.debug(' Property Info ' + PropertyInfo);
        system.debug(' Job Info ' + JobInfo);
        system.debug(' MasterJob Info ' + MasterJobId);
        // List<Master_Job__c> mj = [Select Id, Name, Stage__c, Property_ID__c FROM Master_Job__c Where Property_ID__c =: propId AND Active__c = true];
        // system.debug('Prop Id + ' + propId);
        Id test;
        return test;

    }
    public class ContactWrapper{
        public List<Id> ContactId {get;set;}
        public string ContactType {get;set;}
        public string FirstName {get;set;}
        public string LastName {get;set;}
        public string MailingStreet {get;set;}
        public string MailingCity {get;set;}
        public string MailingState {get;set;}
        public string MailingCounty {get;set;}
        public list<Id> AccountId {get;set;}
        public string Phone {get;set;}
        public string Email {get;set;}
        public string PhoneExt {get;set;}
        public string MailingPostalCode {get;set;}
    }
    public class ContactId {
        public Id ContactId {get;set;}
    
    }
    public class AccountId{
        public Id AccountId {get;set;}
    }
    
    public class AccountRoleWrapper{
        public List<Id> PropertyId {get;set;}
    }
    public class PropertyWrapper{
        public List<Id> PropertyId {get;set;}
    }
    public class JobWrapper{
        public List<Id> PropertyId {get;set;}
    }
    public class AccountWrapper{
        //public List<Id> PropertyId {get;set;}
        public string AccountName {get;set;}
        public string BillingStreet {get;set;}
        public string BillingCity {get;set;}
        public string BillingState {get;set;}
        public string BillingPostalCode {get;set;}
        public string TypeChange {get;set;}
        public string BillingCountry {get;set;}
        public string AccountPhone {get;set;}
        public string AccountPhoneExt {get;set;}
    }
    
// @track AccountName;
// @track BillingStreet;
// @track BillingCity;
// @track BillingState;
// @track BillingPostalCode;
// @track TypeChange;
// @track BillingCountry;
// @track AccountPhone;
// @track AccountPhoneExt;
// @track City;
// @track Country;
// @track State;
// @track AddressLine1;
// @track PropertyType;
// @track Zip;
// @track Description;
// @track Division;
// @track Office;
// @track JobClass;
// @track EstimateType;
// @track Claim;
// @track Deductible;
}