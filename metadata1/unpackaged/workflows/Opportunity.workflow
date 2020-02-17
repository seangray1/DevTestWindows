<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>AE_Manager_Job_Alert</fullName>
        <description>AE Job Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Account_Executive_1__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Account_Executive_2__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_AE_Assignment</template>
    </alerts>
    <alerts>
        <fullName>After_Hour_Lead_entry_Email_Alert</fullName>
        <description>After Hour Lead entry Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>ATI_Job_Templates/ATI_Job_New_Job_requires_BM_to_assign_PD</template>
    </alerts>
    <alerts>
        <fullName>Alert_Admin_Managers_and_Job_Creator_of_Job_Approval_via_email</fullName>
        <description>Alert Admin Managers and Job Creator of Job Approval via email</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <field>Submitted_for_Approval_By__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Job_Approval_Approved</template>
    </alerts>
    <alerts>
        <fullName>Alert_Admin_Managers_and_Job_Creator_of_Job_Rejection_via_email</fullName>
        <description>Alert Admin Managers and Job Creator of Job Rejection via email</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <field>Submitted_for_Approval_By__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Job_Approval_Rejected</template>
    </alerts>
    <alerts>
        <fullName>Alert_Collections_for_all_Jobs_with_project_type_equal_to_certified</fullName>
        <description>Alert Collections for all Jobs with project type equal to certified</description>
        <protected>false</protected>
        <recipients>
            <recipient>Collections</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Project_Type_Certified</template>
    </alerts>
    <alerts>
        <fullName>Branch_Manager_PM_Notification</fullName>
        <description>Branch Manager PD Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Branch_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Branch_Manager_PM_Notification_SJ_SF</fullName>
        <description>Branch Manager PD Notification - SJ/SF</description>
        <protected>false</protected>
        <recipients>
            <recipient>Regional_Director_Northwest</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>San_Francisco_Branch</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Building_Consultant_on_a_Job</fullName>
        <description>Building Consultant on a Job</description>
        <protected>false</protected>
        <recipients>
            <field>Branch_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Project_Manager_new__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Building_Consultant_on_a_job</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Chicago</fullName>
        <ccEmails>ChicagoNewLoss@atirestoration.com</ccEmails>
        <description>Call Center New Job Notification - Chicago</description>
        <protected>false</protected>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Dallas</fullName>
        <ccEmails>DallasNewLoss@atirestoration.com</ccEmails>
        <description>Call Center New Job Notification - Dallas</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admin_Managers_Dallas</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Admins_Dallas</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Denver</fullName>
        <ccEmails>DenverNewLoss@atirestoration.com</ccEmails>
        <description>Call Center New Job Notification - Denver</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admins_Denver</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Flagstaff</fullName>
        <ccEmails>FlagstaffNewLoss@atirestoration.com</ccEmails>
        <description>Call Center New Job Notification - Flagstaff</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admin_Managers_Phoenix</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Admins_Phoenix</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>andrew.kahler@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jason.rains@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jason.silvius@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Florida</fullName>
        <description>Call Center New Job Notification - Florida</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admin_Managers_Tampa</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Admins_Tampa</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Houston</fullName>
        <ccEmails>HoustonNewLoss@atirestoration.com</ccEmails>
        <description>Call Center New Job Notification - Houston</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admin_Managers_Houston</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Admins_Houston</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_LA</fullName>
        <description>Call Center New Job Notification - LA</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admin_Managers_Los_Angeles</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Admins_Los_Angeles</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Las_Vegas</fullName>
        <description>Call Center New Job Notification - Las Vegas</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admins_Las_Vegas</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_New_England</fullName>
        <description>Call Center New Job Notification - New England</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admins_New_England</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Orange</fullName>
        <description>Call Center New Job Notification - Orange</description>
        <protected>false</protected>
        <recipients>
            <recipient>becky.saragosa@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>natalie.yrineo@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tiffany.entsminger@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>veronica.campos@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Philly</fullName>
        <description>Call Center New Job Notification - Philly</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admins_Philadelphia</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Phoenix</fullName>
        <ccEmails>PhoenixNewLoss@atirestoration.com</ccEmails>
        <description>Call Center New Job Notification - Phoenix</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admins_Phoenix</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>charley.felton@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jason.rains@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Riverside</fullName>
        <description>Call Center New Job Notification - Riverside</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admin_Managers_Riverside</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Admins_Riverside</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>gerardo.morenojr@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_SD</fullName>
        <description>Call Center New Job Notification - SD</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admin_Managers_San_Diego</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Admins_San_Diego</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_SF</fullName>
        <ccEmails>SanFranciscoNewLoss@atirestoration.com</ccEmails>
        <description>Call Center New Job Notification - San Francisco</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admin_Managers_San_Francisco</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Admins_San_Francisco</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>abigail.johnson@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>dan.ward@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_SJ</fullName>
        <ccEmails>SanJoseNewLoss@atirestoration.com</ccEmails>
        <description>Call Center New Job Notification - San Jose</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admins_San_Jose</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>abigail.johnson@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>brian.byrd@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>dan.ward@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>heather.szopa@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kelli.smith@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Sacramento</fullName>
        <description>Call Center New Job Notification - Sacramento</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admin_Managers_Sacramento</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Admins_Sacramento</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Seattle</fullName>
        <description>Call Center New Job Notification - Seattle</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admins_Seattle</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Call_Center_New_Job_Notification_Tucson</fullName>
        <ccEmails>TucsonNewLoss@atirestoration.com</ccEmails>
        <description>Call Center New Job Notification - Tucson</description>
        <protected>false</protected>
        <recipients>
            <recipient>Admin_Managers_Tucson</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>Admins_Tucson</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>fred.osburn@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jay.post@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Completed_Job_Notification_to_PD</fullName>
        <description>Completed Job Notification to PD</description>
        <protected>false</protected>
        <recipients>
            <field>Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Completed_Job_Notification</template>
    </alerts>
    <alerts>
        <fullName>Credit_Request_Approval</fullName>
        <description>Credit Request Approval</description>
        <protected>false</protected>
        <recipients>
            <field>Credit_Request_Submitter_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Credit_Request_Approval</template>
    </alerts>
    <alerts>
        <fullName>Credit_Request_Rejection</fullName>
        <description>Credit Request Rejection</description>
        <protected>false</protected>
        <recipients>
            <field>Credit_Request_Submitter_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Credit_Request_Rejection</template>
    </alerts>
    <alerts>
        <fullName>ERA_on_Job_Notification</fullName>
        <description>ERA on Job Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Account_Executive_1__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Contract_Email_Templates/ERA_on_Job_notification</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_to_Payroll_for_Union_Certified_or_Biohazard_Jobs</fullName>
        <description>Email Alert to Payroll for Union, Certified or Biohazard Jobs</description>
        <protected>false</protected>
        <recipients>
            <recipient>chad.rose@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>janine.watson@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Job_is_Union_Certified_or_BIO</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_to_Scott_Moore_for_new_Orange_E_S_jobs</fullName>
        <description>Email Alert to Scott Moore for new Orange E/S jobs</description>
        <protected>false</protected>
        <recipients>
            <recipient>scott.moore@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Opportunity_Email_Templates/Opportunity_E_S_Job_Notification</template>
    </alerts>
    <alerts>
        <fullName>Email_alert_for_new_Los_Angeles_E_S_jobs</fullName>
        <description>Email alert for new Los Angeles E/S jobs</description>
        <protected>false</protected>
        <recipients>
            <recipient>chris.fucci@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>drew.wendland@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>joanne.kelley@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>julie.marcus@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>julie.paris@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rich.campos@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>vicky.flores@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_E_S_Job_Notification</template>
    </alerts>
    <alerts>
        <fullName>Email_alert_for_new_Orange_E_S_jobs</fullName>
        <description>Email alert for new Orange E/S jobs</description>
        <protected>false</protected>
        <recipients>
            <recipient>don.marvel@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>gregg.zembik@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>natalie.yrineo@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ruby.granados@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>scott.moore@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tiffany.entsminger@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>veronica.campos@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_E_S_Job_Notification</template>
    </alerts>
    <alerts>
        <fullName>Email_alert_for_new_Riverside_E_S_jobs</fullName>
        <description>Email alert for new Riverside E/S jobs</description>
        <protected>false</protected>
        <recipients>
            <recipient>henry.cho@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>joel.guzman@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>maria.vasquez@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>nancy.rodriguez@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_E_S_Job_Notification</template>
    </alerts>
    <alerts>
        <fullName>Email_alert_for_new_San_Diego_E_S_jobs</fullName>
        <description>Email alert for new San Diego E/S jobs</description>
        <protected>false</protected>
        <recipients>
            <recipient>cassandra.spindler@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>david.ambriz@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>eric.gotham@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jenny.pace@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>julie.gurrola@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rick.labella@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_E_S_Job_Notification</template>
    </alerts>
    <alerts>
        <fullName>Error_City_of_LA</fullName>
        <description>Error - City of LA</description>
        <protected>false</protected>
        <recipients>
            <recipient>kurt.davis@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sean.gray@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Error_City_of_LA</template>
    </alerts>
    <alerts>
        <fullName>Job_Lost_Alert</fullName>
        <description>Job Lost Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>nat.lee@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Lost_Job</template>
    </alerts>
    <alerts>
        <fullName>Job_Name_Change_Alert</fullName>
        <description>Job Name Change Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>nat.lee@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Job_Name_Change_Notification</template>
    </alerts>
    <alerts>
        <fullName>Job_Number_Change_Alert</fullName>
        <description>Job Number Change Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>jenny.pace@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>susan.hart@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Job_Number_Change_Notification</template>
    </alerts>
    <alerts>
        <fullName>Large_Loss_Notification_for_Bucky_Buchanan</fullName>
        <description>Large Loss Notification for Bucky Buchanan</description>
        <protected>false</protected>
        <recipients>
            <recipient>bucky.buchanan@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Opportunity_Email_Templates/Large_Loss_Email_Template</template>
    </alerts>
    <alerts>
        <fullName>Large_Loss_Notification_for_Jeff_Huddleston</fullName>
        <description>Large Loss Notification for Jeff Huddleston</description>
        <protected>false</protected>
        <recipients>
            <recipient>jeff.huddleston@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Opportunity_Email_Templates/Large_Loss_Email_Template</template>
    </alerts>
    <alerts>
        <fullName>Large_Loss_Notification_for_scott_Moore</fullName>
        <description>Large Loss Notification for Scott Moore</description>
        <protected>false</protected>
        <recipients>
            <recipient>scott.moore@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Opportunity_Email_Templates/Large_Loss_Email_Template</template>
    </alerts>
    <alerts>
        <fullName>National_Account_Protocol_Email_Notification_JCPenney_CBRE</fullName>
        <ccEmails>national@ATIrestoration.com</ccEmails>
        <description>National Account Protocol Email Notification JCPenney/CBRE</description>
        <protected>false</protected>
        <recipients>
            <field>PD_Email_For_National_Account_Workflow__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>PM_Email_For_National_Account_Workflow__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/National_Accounts_Protocol_JCPenney_CBRE</template>
    </alerts>
    <alerts>
        <fullName>New_PD_Job_Assignment</fullName>
        <description>New PD Job Assignment</description>
        <protected>false</protected>
        <recipients>
            <field>Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Job_Assignment_PM</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Branch_Manager_PM_Assignment</fullName>
        <description>Opportunity: Branch Manager PM Assignment</description>
        <protected>false</protected>
        <recipients>
            <field>Branch_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_New_Job_requires_BM_to_assign_PM</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Hurricane_Florence_Notification</fullName>
        <description>Opportunity: Hurricane Florence Notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>channyn.rowe@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>doug.fairless@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>gary.moore@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>luan.nguyen@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>thomas.mcguire@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Hurricane_Florence_Notification</template>
    </alerts>
    <alerts>
        <fullName>Ops_Manager_Job_Alert</fullName>
        <description>Ops Manager Job Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Operations_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Ops_Manager_Assignment</template>
    </alerts>
    <alerts>
        <fullName>Send_client_welcome_letter_when_job_is_marked_won</fullName>
        <description>Send client welcome email when job is marked won</description>
        <protected>false</protected>
        <recipients>
            <field>Project_Site_Contact_Name__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Client_Welcome_Letter</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_PD_when_customer_replies_to_SMS_that_they_re_not_satisfied_with_jo</fullName>
        <description>Send email to PD when customer replies to SMS that they&apos;re not satisfied with job</description>
        <protected>false</protected>
        <recipients>
            <field>Project_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Send_PD_email_when_customer_is_not_satisfied</template>
    </alerts>
    <alerts>
        <fullName>Superintendent_Job_Alert</fullName>
        <description>Project Manager (formerly Superintendent) Job Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Project_Manager_new__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Superintendent_Assignment</template>
    </alerts>
    <alerts>
        <fullName>Survey_3_Day_Reminder</fullName>
        <description>Survey 3 Day Reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Project_Site_Contact_Name__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Survey_Templates/Customer_Survey_3_Day_Reminder_Email</template>
    </alerts>
    <alerts>
        <fullName>Survey_6_Day_Reminder</fullName>
        <description>Survey 6 Day Reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Project_Site_Contact_Name__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Survey_Templates/Customer_Survey_6_Day_Reminder_Email</template>
    </alerts>
    <alerts>
        <fullName>Survey_Email</fullName>
        <description>Survey Email</description>
        <protected>false</protected>
        <recipients>
            <field>Project_Site_Contact_Name__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Survey_Templates/Customer_Survey_Email</template>
    </alerts>
    <alerts>
        <fullName>Survey_Participation_Job</fullName>
        <description>Survey Participation- Job</description>
        <protected>false</protected>
        <recipients>
            <field>Project_Site_Contact_Name__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Survey_Templates/Survey_Participation</template>
    </alerts>
    <alerts>
        <fullName>Wine_Country_Fire_Email_Alert</fullName>
        <description>Wine Country Fire Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>kelli.smith@atirestoration.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>donotreply@atirestoration.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Opportunity_Email_Templates/Opportunity_Wine_Country_Fire_Job_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>Blank_Operations_Manager</fullName>
        <description>Job Assignment must be blanked out when cloning a new job.</description>
        <field>Operations_Manager__c</field>
        <name>Blank Operations Manager</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Record_Type_to_Job_Approved</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Job_Approved</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change Record Type to Job (Approved)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Check_PM_Approval_Only_Checkbox</fullName>
        <description>Check the PM Approval Only Checkbox (must assign PM prior to this)</description>
        <field>PM_Approval_Only__c</field>
        <literalValue>1</literalValue>
        <name>Check PM Approval Only Checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Job_Complete_Field</fullName>
        <field>Completion_Date__c</field>
        <name>Clear Job Complete Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Job_Completion_Date</fullName>
        <description>Clears job completion date when job is marked back to &quot;Won&quot; from &quot;Complete&quot;.</description>
        <field>Completion_Date__c</field>
        <name>Clear Job Completion Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Job_Start_Date</fullName>
        <description>Clears job start date when job is marked &quot;Lost&quot;</description>
        <field>Job_Start_Date__c</field>
        <name>Clear Job Start Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_PN_Request_Date</fullName>
        <field>PN_Request_Date__c</field>
        <name>Clear PN Request Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Completion_Date_Stamp</fullName>
        <description>Time stamp of when Job stage is set to &apos;Complete&apos;</description>
        <field>Completion_Date__c</field>
        <formula>TODAY()</formula>
        <name>Completion Date Stamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Credit_Request_Status_to_Approved</fullName>
        <description>Field update to set Credit Request Status to &apos;Approved&apos; upon approval of Manager in the Credit Request Approval Process</description>
        <field>Credit_Request_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Credit Request Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Credit_Request_Status_to_Rejected</fullName>
        <description>Field update to set the Credit Request Status to &apos;Rejected,&apos; when a Manager rejects a request in the Credit Request Approval Process</description>
        <field>Credit_Request_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Credit Request Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Credit_Request_Status_to_Unapproved</fullName>
        <description>Field update to set Credit Request Status to &apos;Unapproved&apos; in Credit Request Approval Process</description>
        <field>Credit_Request_Status__c</field>
        <literalValue>Unapproved</literalValue>
        <name>Credit Request Status to Unapproved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Credit_Request_Submitter_Email</fullName>
        <description>Field update to populate email of credit request submitter&apos;s email</description>
        <field>Credit_Request_Submitter_Email__c</field>
        <formula>$User.Email</formula>
        <name>Credit Request Submitter Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Opted_Out_Update_on_Contact</fullName>
        <description>Email Opted Out Update on Contact</description>
        <field>PersonHasOptedOutOfEmail</field>
        <literalValue>1</literalValue>
        <name>Email Opted Out Update on Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Update_on_Job</fullName>
        <description>Field update to clear out &apos;Add/Correct Email&apos; field after trigger to populate updated email onto Contact record</description>
        <field>Add_Correct_Email__c</field>
        <name>Email Update on Job</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>JC_Adj</fullName>
        <description>Update proposed job cost adjustment to bring a jobs gross profit to estimated</description>
        <field>GP_AdjWF__c</field>
        <formula>if(round(abs( Job_to_Date_Work_Billed_Next_Month__c * (1-Gross_Profit__c )- Job_to_Date_Costs_Next_Month_Costs__c),-2)&lt;5000,0,(round(Job_to_Date_Work_Billed_Next_Month__c * (1-Gross_Profit__c )- Job_to_Date_Costs_Next_Month_Costs__c,-2)))</formula>
        <name>JC Adj</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Job_Approval_Date_Time</fullName>
        <field>Date_Time_Approved__c</field>
        <formula>NOW()</formula>
        <name>Job Approval Date/Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Job_Approved_By</fullName>
        <field>Approved_By__c</field>
        <formula>$User.FirstName + &quot; &quot; + $User.LastName</formula>
        <name>Job Approved By</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Job_Send_Prelim_Last_Modified_By</fullName>
        <field>Send_Prelim_Last_Modified_By__c</field>
        <formula>$User.FirstName + &quot; &quot; + $User.LastName</formula>
        <name>Job Send Prelim Last Modified By</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Job_Send_Prelim_Last_Modified_Date_Time</fullName>
        <description>Records the Date/Time that the Send Prelim field was last modified</description>
        <field>Send_Prelim_Last_Modified_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Job Send Prelim Last Modified Date/Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Job_Start_Date_Stamp</fullName>
        <field>Job_Start_Date__c</field>
        <formula>NOW()</formula>
        <name>Job Start Date Stamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Job_Submittal_Date_Time</fullName>
        <field>Date_Time_Submitted_for_Approval__c</field>
        <formula>NOW()</formula>
        <name>Job Submittal Date/Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Job_Submitted_for_Approval_By</fullName>
        <description>Field to indicate which Admin submitted the new job for approval-- fed by Job Approval Process Initial Submission Actions field update.</description>
        <field>Submitted_for_Approval_By__c</field>
        <formula>$User.Email</formula>
        <name>Job Submitted for Approval By</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Job_Type_update</fullName>
        <field>Job_Type__c</field>
        <formula>IF( ISPICKVAL (Account.Job_Type__c, &quot;Existing Business&quot;),&quot;Existing Business&quot;, &quot;New Business&quot;)</formula>
        <name>Job Type update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Job_Workflow_for_LA_USD</fullName>
        <description>If Job is LA USD, mark the Job as union. Look at Job class (school or government agency) and county is LA.</description>
        <field>Project_Type__c</field>
        <literalValue>Certified</literalValue>
        <name>Job Workflow for LA USD</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Job_Workflow_for_SD_USD</fullName>
        <description>If Job is SD USD, mark the Job as Certified. Look at Job class (school or government agency) and county is SD</description>
        <field>Project_Type__c</field>
        <literalValue>Certified</literalValue>
        <name>Job Workflow for SD USD</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Last_Job_Date_Population</fullName>
        <field>Last_Job_Date__c</field>
        <formula>TODAY()</formula>
        <name>Last Job Date Population</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Naming_Convention</fullName>
        <description>Workflow field update to populate Opportunity Name with &apos;Job Number | Job Name&apos;</description>
        <field>Name</field>
        <formula>Job_Number__c &amp; &quot; &quot; &amp; &quot;|&quot; &amp; &quot; &quot; &amp; Job_Name__c</formula>
        <name>Opportunity Naming Convention</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PD_Email_Field_Update</fullName>
        <description>Field update for Custom Field &quot;PD_Email_For_National_Account_Workflow__c&quot; in Opportunity (JOBS)</description>
        <field>PD_Email_For_National_Account_Workflow__c</field>
        <formula>Project_Manager__r.Email</formula>
        <name>PD Email Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PM_Email_Field_Update</fullName>
        <description>Field update for custom field &quot;	PM_Email_For_National_Account_Workflow__c&quot; in Opportunity(JOBS).</description>
        <field>PM_Email_For_National_Account_Workflow__c</field>
        <formula>Project_Manager_new__r.Email</formula>
        <name>PM Email Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Description_of_Loss</fullName>
        <field>Description_of_Loss__c</field>
        <formula>LEFT(Description,255)</formula>
        <name>Populate Description of Loss</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Record_previous_job_name</fullName>
        <description>Populates the previous job name if job name is changed.</description>
        <field>Prev_Job_Name__c</field>
        <formula>PRIORVALUE(  Job_Name__c  )</formula>
        <name>Record previous job name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Date_Time_Client_Welcome_Email_Sent</fullName>
        <field>Date_Time_Client_Welcome_Email_Sent__c</field>
        <formula>now()</formula>
        <name>Set Date/Time Client Welcome Email Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Mod_Alloc</fullName>
        <description>Sets the modified allocations field to &quot;22.5&quot;</description>
        <field>Modified_Allocations__c</field>
        <formula>22.5</formula>
        <name>Set Mod Alloc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_PM_to_Pete_Carlson</fullName>
        <description>Set PM to Pete Carlson</description>
        <field>Project_Manager_new__c</field>
        <lookupValue>pete.carlson@atirestoration.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Set PM to Pete Carlson</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_PN_Request_Date</fullName>
        <field>PN_Request_Date__c</field>
        <formula>TODAY()</formula>
        <name>Set PN Request Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Send_Prelim_field_to_no_for_prg_jobs</fullName>
        <field>Send_Prelim__c</field>
        <literalValue>No</literalValue>
        <name>Set Send Prelim field to no for prg jobs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_to_Won_for_ES</fullName>
        <description>For all ES jobs, stage should be marked Won.</description>
        <field>StageName</field>
        <literalValue>Won</literalValue>
        <name>Stage to Won for ES</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Close_Date_when_Won</fullName>
        <field>CloseDate</field>
        <formula>today()</formula>
        <name>Update Close Date when Won or Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Forecast_Last_Timberline_Update</fullName>
        <field>Forecast_Last_Timberline_Update__c</field>
        <formula>NOW()</formula>
        <name>Update Forecast Last Timberline Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Job_GP</fullName>
        <field>Gross_Profit__c</field>
        <formula>Project_Manager__r.Default_Gross_Profit__c</formula>
        <name>Update Job GP%</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Last_Timberline_Update_field</fullName>
        <description>Updates Last Timberline Update field with current date time when a record is saved.</description>
        <field>Last_Timberline_Update__c</field>
        <formula>NOW()</formula>
        <name>Update Last Timberline Update field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_of_Last_Stage_Change</fullName>
        <description>Records date/time of last change to/from Won Stage</description>
        <field>Date_of_Last_Stage_Change_To_From_Won__c</field>
        <formula>NOW()</formula>
        <name>Update of Last Stage Change</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>check_1sub_checkbox</fullName>
        <field>X1sub__c</field>
        <literalValue>1</literalValue>
        <name>check 1sub checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Jitterbit_Forecast_OBM</fullName>
        <apiVersion>33.0</apiVersion>
        <description>Outbound message to Timberline via Jitterbit to request Forecast Analysis fields be updated</description>
        <endpointUrl>https://ATI69420.jitterbit.net/PROD/ForecastAPICall</endpointUrl>
        <fields>Id</fields>
        <fields>Job_Number__c</fields>
        <fields>Name</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>jitterbit@atirestoration.com</integrationUser>
        <name>Jitterbit Forecast OBM</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Jitterbit_Job_OBM</fullName>
        <apiVersion>33.0</apiVersion>
        <description>Outbound message to send Opportunity fields to Timberline via Jitterbit</description>
        <endpointUrl>https://ATI69420.jitterbit.net/PROD/OpportunityAPICall</endpointUrl>
        <fields>Account_Executive_1_Timber__c</fields>
        <fields>Account_Executive_2_Timber__c</fields>
        <fields>City_of_LA_Timber__c</fields>
        <fields>County__c</fields>
        <fields>Division__c</fields>
        <fields>GL_Account_Prefix__c</fields>
        <fields>Id</fields>
        <fields>Job_Name__c</fields>
        <fields>Job_Number__c</fields>
        <fields>Job_to_Date_Costs__c</fields>
        <fields>Job_to_Date_Dollars_Paid__c</fields>
        <fields>Job_to_Date_Payments__c</fields>
        <fields>Job_to_Date_Work_Billed__c</fields>
        <fields>Last_Month_Costs__c</fields>
        <fields>Last_Month_Dollars_Paid__c</fields>
        <fields>Last_Month_Work_Billed__c</fields>
        <fields>Modified_Allocations__c</fields>
        <fields>Month_to_Date_Costs__c</fields>
        <fields>Month_to_Date_Dollars_Paid__c</fields>
        <fields>Month_to_Date_Work_Billed__c</fields>
        <fields>Next_Month_Costs__c</fields>
        <fields>Next_Month_Dollars_Paid__c</fields>
        <fields>Next_Month_Work_Billed__c</fields>
        <fields>PM_Approval_Only__c</fields>
        <fields>Project_Manager_Timber__c</fields>
        <fields>Project_Site_Address_2__c</fields>
        <fields>Project_Site_Address__c</fields>
        <fields>Project_Site_City__c</fields>
        <fields>Project_Site_Fax__c</fields>
        <fields>Project_Site_State__c</fields>
        <fields>Project_Site_Zipcode__c</fields>
        <fields>Quarter_to_Date_Costs__c</fields>
        <fields>Quarter_to_Date_Dollars_Paid__c</fields>
        <fields>Quarter_to_Date_Work_Billed__c</fields>
        <fields>Receivable_Balance__c</fields>
        <fields>Superintendent__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Work_Phone__c</fields>
        <fields>X1sub__c</fields>
        <fields>Year_to_Date_Costs__c</fields>
        <fields>Year_to_Date_Dollars_Paid__c</fields>
        <fields>Year_to_Date_Work_Billed__c</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>jitterbit@atirestoration.com</integrationUser>
        <name>Jitterbit Job OBM</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>AE Job Alert</fullName>
        <actions>
            <name>AE_Manager_Job_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 OR 2) and 3</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Account_Executive_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Account_Executive_2__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Job (Approved)</value>
        </criteriaItems>
        <description>When an AE gets assigned to a job, they get notified ONLY on approved job.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Alert Collections for certified%2Funion project types</fullName>
        <actions>
            <name>Alert_Collections_for_all_Jobs_with_project_type_equal_to_certified</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Project_Type__c</field>
            <operation>equals</operation>
            <value>Certified,Union</value>
        </criteriaItems>
        <description>Email notification sent to collections for all Jobs with a Project Type of &apos;Prevailing Wage / Certified&apos; or &apos;Union&apos;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Alert File Clerk when Jobs are marked Lost</fullName>
        <actions>
            <name>Job_Lost_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Lost</value>
        </criteriaItems>
        <description>Email notification to flie clerk when Opportunity Stage is set to Lost</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Alert payroll when job is PW%2C union%2C or biohazard</fullName>
        <actions>
            <name>Email_Alert_to_Payroll_for_Union_Certified_or_Biohazard_Jobs</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Call_Union_Bring_in_New_Hires_Contact_Payroll</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>If project type is union, certified or division is biohazard, and only if job stage is Won, notify Payroll and set task for Project Manager for new hire orientation.  Task Due date is 6 hours within assignment</description>
        <formula>OR(
   ISPICKVAL(Division__c , &quot;Biohazard&quot;), 
   ISPICKVAL(Project_Type__c , &quot;Union&quot;), 
   ISPICKVAL(Project_Type__c , &quot;Certified&quot;)
)

&amp;&amp;

ISPICKVAL(StageName,&quot;Won&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BM email for PD assignment</fullName>
        <actions>
            <name>Opportunity_Branch_Manager_PM_Assignment</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Branch_Manager__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Email Alert to Branch Managers to assign a Project Director to a Job.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BM email for PD assignment- SF%2FSJ</fullName>
        <actions>
            <name>Branch_Manager_PM_Notification_SJ_SF</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Branch_Manager__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Office__c</field>
            <operation>equals</operation>
            <value>San Francisco,San Jose</value>
        </criteriaItems>
        <description>Email Alert to Branch Managers to assign a Project Director to a Job.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Building Consultant on a Job</fullName>
        <actions>
            <name>Building_Consultant_on_a_Job</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Building_Consultant__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>When this checkbox is check, it will send email to EVP&apos;s, BM, PM, Super, and Ops Manager.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Clear PN Request Date if Send Prelim is No</fullName>
        <actions>
            <name>Clear_PN_Request_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Send_Prelim__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Completion Date Stamp</fullName>
        <actions>
            <name>Completion_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Stamps the Date that a Job&apos;s Stage was set to Complete</description>
        <formula>AND(ISBLANK(Completion_Date__c),  
OR(
AND(ISNEW(), OR(TEXT(StageName) = &apos;Work Complete&apos;, TEXT(StageName) = &apos;Billing Complete&apos;)),
AND(ISCHANGED(StageName ), OR(TEXT(StageName) = &apos;Work Complete&apos;, TEXT(StageName) = &apos;Billing Complete&apos;))
)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Construction Job to Blank Ops Manager</fullName>
        <actions>
            <name>Blank_Operations_Manager</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( OR( TEXT(Division__c )== &apos;Construction&apos;, TEXT(Division__c )== &apos;Marketing&apos; ), OR( ISNEW(),  ISCHANGED(Division__c ) ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ERA on Job</fullName>
        <actions>
            <name>ERA_on_Job_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.ERA__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Workflow email alert to notify PM and AE that there is an ERA related to a Job</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email Alert to Scott Moore for new Orange E%2FS jobs</fullName>
        <actions>
            <name>Email_Alert_to_Scott_Moore_for_new_Orange_E_S_jobs</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>Office2__c  = &apos;Orange&apos; &amp;&amp;  ISPICKVAL(Division__c, &quot;Emergency Svces&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email Update on Job</fullName>
        <actions>
            <name>Email_Update_on_Job</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Field update to clear out &apos;Add/Correct Email&apos; field after trigger to populate updated email onto Contact record</description>
        <formula>Add_Correct_Email__c != null</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Error - City of LA</fullName>
        <actions>
            <name>Error_City_of_LA</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.City_of_LA__c</field>
            <operation>notEqual</operation>
            <value>Yes,No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.City_of_LA__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>When City of LA throws an error, it will send an email to recipient</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Hurricane Florence Notification</fullName>
        <actions>
            <name>Opportunity_Hurricane_Florence_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Job_Category__c</field>
            <operation>equals</operation>
            <value>Hurricane Florence</value>
        </criteriaItems>
        <description>Notification goes to:
Gary Moore
Doug Fairless
Tom McGuire
Luan Nguyen
Channyn Rowe</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>JC Adj</fullName>
        <actions>
            <name>JC_Adj</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Job_Number__c</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <description>Update proposed job cost adjustment to bring a jobs gross profit to estimated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Jitterbit Forecast OBM</fullName>
        <actions>
            <name>Jitterbit_Forecast_OBM</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Update_Forecast__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Outbound message to Timberline via Jitterbit to request Forecast Analysis fields be updated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Jitterbit Job OBM</fullName>
        <actions>
            <name>Jitterbit_Job_OBM</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <description>Outbound message to send Opportunity fields to Timberline via Jitterbit</description>
        <formula>OR(AND(ISCHANGED(StageName),ISPICKVAL(StageName, &quot;Won&quot;)) ,Sync_to_Timberline__c = TRUE, 
ISCHANGED(PM_Approval_Only__c),
AND(ISCHANGED(Project_Manager_new__c), NOT(ISNULL( Last_Successful_Timberline_Update__c)), X1sub__c = FALSE))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Job Lost - Clear Start%2FCompletion Dates</fullName>
        <actions>
            <name>Clear_Job_Completion_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Clear_Job_Start_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Lost</value>
        </criteriaItems>
        <description>Clears job start date and completion date when job is marked &quot;Lost&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Job Name Change Alert</fullName>
        <actions>
            <name>Job_Name_Change_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>When Job name has changed, email Vonda Barela that Job name has changed.</description>
        <formula>ISCHANGED(Job_Name__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Job Number Change Alert</fullName>
        <actions>
            <name>Job_Number_Change_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>When Job number has changed, email Jenny Pace, Vonda Barela, and payroll.</description>
        <formula>ISCHANGED (Job_Number__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Job Start Date Stamp</fullName>
        <actions>
            <name>Clear_Job_Complete_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Clear_Job_Completion_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Job_Start_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Stamps the Date that a Job&apos;s Stage was set to Won (and overwrites Job Start Date each time)</description>
        <formula>OR(AND(ISNEW(),TEXT(StageName) = &apos;Won&apos;),AND(ISCHANGED(StageName ),TEXT(StageName) = &apos;Won&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Job Type update</fullName>
        <actions>
            <name>Job_Type_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Job_Type__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Work Complete,Billing Complete</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Job Workflow for LA County Educational</fullName>
        <actions>
            <name>Job_Workflow_for_LA_USD</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If Job is LA county educational or governmental and stage is won, mark the Job as union. Look at Job class (school or government agency) and county is LA.</description>
        <formula>AND( CONTAINS( County__c , &quot;Los Angeles&quot;),  ISPICKVAL( StageName,&quot;Won&quot;), OR( ISPICKVAL( Job_Class__c , &quot;Municipality/ Gov&apos;t&quot;), ISPICKVAL( Job_Class__c , &quot;Educational&quot;) ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Job Workflow for SD USD</fullName>
        <actions>
            <name>Job_Workflow_for_SD_USD</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If Job is SD USD, mark the Job as Certified. Look at Job class (school or government agency) and county is SD</description>
        <formula>AND( CONTAINS( County__c , &quot;San Diego&quot;), OR( ISPICKVAL( Job_Class__c , &quot;Municipality/ Gov&apos;t&quot;), ISPICKVAL( Job_Class__c , &quot;Educational&quot;) ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Last Job Date Population</fullName>
        <actions>
            <name>Last_Job_Date_Population</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.OwnerId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Population of the Last Job Date to be used in Bonus calculations of New Business vs. Existing Business.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>National Accounts Protocol</fullName>
        <actions>
            <name>National_Account_Protocol_Email_Notification_JCPenney_CBRE</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>PD_Email_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>PM_Email_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>Has_national_account__c = TRUE &amp;&amp; (ISCHANGED( Project_Manager_new__c ) || ISCHANGED( Project_Manager__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>New PD Job Assignment</fullName>
        <actions>
            <name>New_PD_Job_Assignment</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>A workflow email alert will be created to alert a Project Director immediately following Job assignment.</description>
        <formula>RecordTypeId = &apos;01270000000UPGF&apos;  &amp;&amp; 
(ISCHANGED( Project_Manager__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Naming Convention</fullName>
        <actions>
            <name>Opportunity_Naming_Convention</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Name</field>
            <operation>greaterOrEqual</operation>
        </criteriaItems>
        <description>Workflow field update to populate Opportunity Name with &apos;Job Name | Job Number&apos;</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Ops Manager Assignment</fullName>
        <actions>
            <name>Ops_Manager_Job_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Ops Manager Assignment workflow</description>
        <formula>RecordTypeId = &apos;01270000000UPGF&apos; &amp;&amp; 
(ISCHANGED(Project_Manager_new__c))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate Description of Loss</fullName>
        <actions>
            <name>Populate_Description_of_Loss</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(Description)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Project Manager %28formerly Superintendent%29 Assignment</fullName>
        <actions>
            <name>Superintendent_Job_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Sends an email when a Project Manager is assigned to a job</description>
        <formula>ISCHANGED( Project_Manager_new__c ) || ISNEW()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Record Date%2FTime of Status Change</fullName>
        <actions>
            <name>Update_of_Last_Stage_Change</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Records date/time of last change to/from Won Stage</description>
        <formula>OR(  AND(  ISCHANGED(StageName),  ISPICKVAL(StageName, &quot;Won&quot;)  ),   AND(  ISCHANGED(StageName),  ISPICKVAL(PRIORVALUE(StageName),&quot;Won&quot;))  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Record previous job name</fullName>
        <actions>
            <name>Record_previous_job_name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populates the previous job name if job name is changed.</description>
        <formula>ISCHANGED( Name )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Send Prelim Last Modified</fullName>
        <actions>
            <name>Job_Send_Prelim_Last_Modified_By</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Job_Send_Prelim_Last_Modified_Date_Time</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Records the user that modified the &apos;Send Prelim&apos; field and the date/time of modification.</description>
        <formula>ISCHANGED( Send_Prelim__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Send client welcome email when job is marked won</fullName>
        <actions>
            <name>Send_client_welcome_letter_when_job_is_marked_won</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Set_Date_Time_Client_Welcome_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Client_Welcome_Letter</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Project_Site_Contact_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Date_Time_Client_Welcome_Email_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Project_Manager_New_Full_Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Division__c</field>
            <operation>notEqual</operation>
            <value>Marketing,Consulting</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Estimate_Only__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Ladder_Assist__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends client welcome email when the job is marked as won and there is a superintendent/operations manager entered

Changed: 

Opportunity: Super_Ops to Project Manager New Full Name criteria</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set Mod Alloc - Consultants</fullName>
        <actions>
            <name>Set_Mod_Alloc</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4 OR 5 OR 6</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>equals</operation>
            <value>Rudi Suminski</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>equals</operation>
            <value>Brian Bailey</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>equals</operation>
            <value>Consultant Consultant</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>equals</operation>
            <value>Thomas Moreno</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>equals</operation>
            <value>Andy England</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>equals</operation>
            <value>Aaron Berkman</value>
        </criteriaItems>
        <description>Sets the modified allocations field to &quot;22.5&quot; for jobs where PM is Rudi Suminski, Brian Bailey, Consultant, Thomas Moreno, Andy England, or Aaron Berkman.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set PN Request Date if Send Prelim is Yes</fullName>
        <actions>
            <name>Set_PN_Request_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Send_Prelim__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set Send Prelim field to no for program jobs</fullName>
        <actions>
            <name>Set_Send_Prelim_field_to_no_for_prg_jobs</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update &apos;Send Prelim&apos; field to &apos;No&apos; for most program Jobs, all national accounts (lead source), all contents, marketing, and consulting jobs, educational and municipal/gov&apos;t jobs (job class), certain accounts, and all jobs in certain states.</description>
        <formula>ISPICKVAL(Send_Prelim__c, &quot;&quot;) &amp;&amp; 

	((BEGINS(TEXT(LeadSource), &quot;Program&quot;) &amp;&amp; NOT(ISPICKVAL(LeadSource, &quot;Program - Contractor Connection&quot;))) || 

	BEGINS(TEXT(LeadSource),&quot;National Account&quot;) || ISPICKVAL(Division__c,&quot;Contents&quot;) || ISPICKVAL(Division__c,&quot;Marketing&quot;) || ISPICKVAL(Division__c,&quot;Consulting&quot;) || ISPICKVAL(Job_Class__c,&quot;Educational&quot;) || ISPICKVAL(Job_Class__c,&quot;Municipality/ Gov&apos;t&quot;) || BEGINS(Account.Name, &quot;Allstate&quot;) || BEGINS(Account.Name, &quot;Alacrity&quot;) || BEGINS(Account.Name, &quot;Encompass&quot;) || BEGINS(Account.Name, &quot;CSAA&quot;) || BEGINS(Account.Name, &quot;Farmers&quot;) || BEGINS(Account.Name, &quot;Watterson&quot;) || BEGINS(Account.Name, &quot;JC Penney&quot;) || BEGINS(Account.Name, &quot;JP Morgan Chase&quot;) || BEGINS(Account.Name, &quot;Wyndham Worldwide&quot;) || BEGINS(Account.Name, &quot;National Community Renaissance&quot;) || BEGINS(Account.Name, &quot;Burlington Northern&quot;) || BEGINS(Account.Name, &quot;Facility Source&quot;) || BEGINS(Account.Name, &quot;Jones Lang LaSalle Americas&quot;) || BEGINS(Account.Name, &quot;2B Adjusting&quot;) || BEGINS(Account.Name, &quot;Essex Property Trust&quot;) || BEGINS(Account.Name, &quot;Wal-Mart&quot;) || BEGINS(Account.Name, &quot;City of Phoenix&quot;) || BEGINS(Account.Name, &quot;Aimco Property Management&quot;) || BEGINS(Account.Name, &quot;Cushman &amp; Wakefield&quot;) || BEGINS(Account.Name, &quot;St. Joseph&apos;s Hosp.&quot;) || BEGINS(Account.Name, &quot;Walgreens&quot;) || BEGINS(Account.Name, &quot;Watterson Environmental Group&quot;) || BEGINS(Account.Name, &quot;Prometheus Real Estate Group&quot;) || BEGINS(Account.Name, &quot;Irvine Company&quot;) || Project_Site_State__c = &quot;CO&quot; || Project_Site_State__c = &quot;CT&quot; || Project_Site_State__c = &quot;DE&quot; || (Project_Site_State__c = &quot;FL&quot; &amp;&amp; ISPICKVAL(Job_Class__c,&quot;Residential&quot;)) || Project_Site_State__c = &quot;HI&quot; || Project_Site_State__c = &quot;ID&quot; || Project_Site_State__c = &quot;IL&quot; || Project_Site_State__c = &quot;KY&quot; || Project_Site_State__c = &quot;MD&quot; || Project_Site_State__c = &quot;NE&quot; || Project_Site_State__c = &quot;NJ&quot; || Project_Site_State__c = &quot;NY&quot; || Project_Site_State__c = &quot;ND&quot; || Project_Site_State__c = &quot;PA&quot; || Project_Site_State__c = &quot;VT&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Task reminder to PM to call customer at 42 hours after approval</fullName>
        <active>true</active>
        <description>Automatic task creation 42 hours after approval of an opportunity if the PM has not yet modified the record.</description>
        <formula>AND ( RecordTypeId  = &quot;012n00000000B3t&quot;,  ISPICKVAL (StageName, &quot;Qualified&quot;),  Date_Time_Approved__c &gt; LastModifiedDate)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Reminder_to_follow_up_with_job_contact</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Opportunity.Date_Time_Approved__c</offsetFromField>
            <timeLength>42</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update 1sub checkbox%2C PM%2C and PM Approval Only checkbox</fullName>
        <actions>
            <name>Check_PM_Approval_Only_Checkbox</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_PM_to_Pete_Carlson</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>check_1sub_checkbox</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>equals</operation>
            <value>Cort Gilliam</value>
        </criteriaItems>
        <description>If Cort Gilliam is the Project Director, check the 1sub checkbox, assign the PM as Pete Carlson, and check the PM Approval Only checkbox.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Close Date when Won or Lost</fullName>
        <actions>
            <name>Update_Close_Date_when_Won</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Won,Lost</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Forecast Last Timberline Update Field</fullName>
        <actions>
            <name>Update_Forecast_Last_Timberline_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Update_Forecast__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Date/Time stamp of &apos;Update Forecast&apos; field marked to True</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Job GP%25</fullName>
        <actions>
            <name>Update_Job_GP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Project_Manager__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Gross_Profit__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Workflow to update Job Gross Profit</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Last Timberline Update field</fullName>
        <actions>
            <name>Update_Last_Timberline_Update_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates Last Timberline Update field with current date time when a record is saved.</description>
        <formula>OR(Sync_to_Timberline__c = TRUE, AND(ISCHANGED(Superintendent__c), NOT(ISNULL( Last_Successful_Timberline_Update__c)), X1sub__c = FALSE))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Wine Country Fire Notification</fullName>
        <actions>
            <name>Wine_Country_Fire_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Job_Category__c</field>
            <operation>equals</operation>
            <value>Wine Country Fires</value>
        </criteriaItems>
        <description>Kelli Smith would like to be notified for any lead is created for bay area.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Call_Union_Bring_in_New_Hires_Contact_Payroll</fullName>
        <assignedToType>owner</assignedToType>
        <description>Call the Union, bring in workers for new hire orientation and contact payroll to discuss hiring procedures.  Task is due within 6 hours of creation.  Escalate to Steve if not completed.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Call Union, Bring in New Hires &amp; Contact Payroll</subject>
    </tasks>
    <tasks>
        <fullName>Client_Welcome_Letter</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Sent client welcome email</subject>
    </tasks>
    <tasks>
        <fullName>Reminder_to_follow_up_with_job_contact</fullName>
        <assignedToType>owner</assignedToType>
        <description>It has been 42 hours since this Job has been approved and the record.  Please follow up with the client.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.Date_Time_Approved__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Reminder to follow up with job contact</subject>
    </tasks>
</Workflow>