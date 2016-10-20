<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_sending_to_recipients_or_contributers</fullName>
        <description>Email sending to recipients or contributers</description>
        <protected>false</protected>
        <recipients>
            <field>Recipients_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/eVoice</template>
    </alerts>
    <alerts>
        <fullName>Sending_the_Email_to_the_contributers</fullName>
        <description>Sending the Email to the contributers</description>
        <protected>false</protected>
        <recipients>
            <field>Recipients_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/eVoice</template>
    </alerts>
    <fieldUpdates>
        <fullName>Email_Update</fullName>
        <description>Email Update</description>
        <field>Recipients_Email__c</field>
        <formula>Member__r.Email__c</formula>
        <name>Email Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Email field update for contributers</fullName>
        <actions>
            <name>Email_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Member__c.Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email field update for members/contributers!!</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email sending</fullName>
        <actions>
            <name>Email_sending_to_recipients_or_contributers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Members_Expense__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email sending to recipients</fullName>
        <actions>
            <name>Sending_the_Email_to_the_contributers</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Members_Expense__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email sending to recipients/contributers!!</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
