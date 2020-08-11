////////////////////////////////////////////////////////////////////////////
//
//  Description : Table Drive Trigger Management Handler - Opportunity trigger
//   Checks Contacts on Opportunity/Donation records when created.
////////////////////////////////////////////////////////////////////////////

global without sharing class cfg_Contact_VerifyAccount_TDTM extends npsp.TDTM_Runnable
{

////////////////////////////////////////////////////////////////////////////
    global override npsp.TDTM_Runnable.DmlWrapper run(List<SObject> newlist,
            List<SObject> oldlist,
            npsp.TDTM_Runnable.Action triggerAction,
            Schema.DescribeSObjectResult objResult) {

//declare variables
        npsp.TDTM_Runnable.dmlWrapper dmlWrapper = new npsp.TDTM_Runnable.DmlWrapper();

        List<Contact> newContactList = (List<Contact>) newlist;
        List<Contact> oldContactList = (List<Contact>) oldlist;

        system.debug('cfg_Contact_VerifyAccount_TDTM triggerAction: ' + triggerAction + 'Enter');
//actions for 'BeforeInsert' triggers
        if (triggerAction == npsp.TDTM_Runnable.Action.BeforeInsert)
        {
            for(Contact aContact : newContactList)
            {

            }
        }
        system.debug('cfg_Contact_VerifyAccount_TDTM triggerAction: ' + triggerAction + 'Exit');
//return records
        return dmlWrapper;
    }
////////////////////////////////////////////////////////////////////////////




}