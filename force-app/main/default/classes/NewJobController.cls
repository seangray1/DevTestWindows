/**
 * @File Name          : NewJobController.cls
 * @Description        : 
 * @Author             : sean.gray@atirestoration.com
 * @Group              : 
 * @Last Modified By   : sean.gray@atirestoration.com
 * @Last Modified On   : 1/28/2020, 11:03:31 AM
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
        List<Property__c> props = [Select Id, Name, State__c, City__c, Address_Line_1__c, Zip__c FROM Property__c Where Name Like : searchLikeKey];
        system.debug('Properties are ' + props);
        return props;
    }
    @AuraEnabled 
    public static list<Account_Roles__c> CheckId(string propId){
        List<Account_Roles__c> a = [Select Id, Name, Roles__c, Contact_ID__c FROM Account_Roles__c Where Property_ID__c =: propId];
        system.debug('Prop Id + ' + propId);
        return a;

    }
}