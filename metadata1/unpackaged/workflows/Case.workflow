<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Daily_Update_Due</fullName>
        <description>Daily Update Due</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Case_Templates/Daily_Update_Reminder</template>
    </alerts>
    <alerts>
        <fullName>Daily_Update_Missed</fullName>
        <description>Daily Update Missed</description>
        <protected>false</protected>
        <recipients>
            <recipient>arlene.uribe@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>frank.islas@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Case_Templates/Daily_Update_Missed</template>
    </alerts>
    <alerts>
        <fullName>Next_Action_Due</fullName>
        <description>Next Action Due</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Case_Templates/Next_Action_Due</template>
    </alerts>
    <fieldUpdates>
        <fullName>Clear_Daily_Update_Due</fullName>
        <field>Daily_Update_Due__c</field>
        <name>Clear Daily Update Due</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Next_Action</fullName>
        <description>Clears the Next Update field when the milestone is marked complete.</description>
        <field>Next_Action_Date_Time__c</field>
        <name>Clear Next Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Daily_Update_Due</fullName>
        <field>Daily_Update_Due__c</field>
        <formula>NOW()+(23/24)</formula>
        <name>Set Daily Update Due</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Last_Update</fullName>
        <field>Last_Daily_Update__c</field>
        <formula>NOW()</formula>
        <name>Set Last Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Service_Case</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Contact Center Case</fullName>
        <actions>
            <name>Update_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Live Chat</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
