@IsTest
public with sharing class cfg_Contact_VerifyAccount_Test
{
@IsTest

static void VerifyAccountTest()
{
// Retrieve default NPSP Trigger Handlers
List<npsp__Trigger_Handler__c> triggerHandlers = npsp.TDTM_Config_API.getCachedRecords();

// Add our Trigger Handler to cached Trigger Handlers
npsp__Trigger_Handler__c th = new npsp__Trigger_Handler__c();
th.Name = 'VerifyAccount';
th.npsp__Class__c = 'cfg_Contact_VerifyAccount_TDTM';
th.npsp__Object__c = 'Contact';
th.npsp__Trigger_Action__c = 'BeforeInsert;';
th.npsp__Active__c = true;
th.npsp__Load_Order__c = 1;
th.npsp__Asynchronous__c = false;

triggerHandlers.add(th);

system.debug('cfg_Contact_AccountAssignment_TDTM VerifyAccount');
Test.startTest();
//Opportunity aOpportunity = new Opportunity();
//aOpportunity.AccountId = '0015400000WqBqmAAF';
//aOpportunity.ContactId = '0035400000ZAfRoAAL';
//aOpportunity.CloseDate = Date.today();
//aOpportunity.StageName  = 'Closed Won';
//aOpportunity.Name = 'test1';
//insert aOpportunity;
// '1999-01-01T23:01:01Z';
Test.stopTest();

}
}