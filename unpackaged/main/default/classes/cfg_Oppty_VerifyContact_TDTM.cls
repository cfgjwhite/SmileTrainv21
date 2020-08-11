////////////////////////////////////////////////////////////////////////////
//  Created on 7/28/2020.
//  Description : Table Drive Trigger Management Handler - Opportunity trigger
//   Checks Contacts on Opportunity/Donation records when created.
////////////////////////////////////////////////////////////////////////////

global without sharing class cfg_Oppty_VerifyContact_TDTM extends npsp.TDTM_Runnable
{

    ////////////////////////////////////////////////////////////////////////////
    global override npsp.TDTM_Runnable.DmlWrapper run(List<SObject> newlist,
            List<SObject> oldlist,
            npsp.TDTM_Runnable.Action triggerAction,
            Schema.DescribeSObjectResult objResult) {

        //declare variables
        npsp.TDTM_Runnable.dmlWrapper dmlWrapper = new npsp.TDTM_Runnable.DmlWrapper();


        List<Opportunity> newOpptyList = (List<Opportunity>) newlist;
        List<Opportunity> oldOpptyList = (List<Opportunity>) oldlist;
        //Set<Id> actIds = new Set<Id>();

        system.debug('cfg_Opportunity_VerifyContact_TDTM triggerAction: ' + triggerAction + 'Enter');
        //actions for 'BeforeInsert' triggers
        if (triggerAction == npsp.TDTM_Runnable.Action.BeforeInsert) {

            //check if the Primary Contact is currently blank
            for(Opportunity aOppty : newOpptyList)
            {
                    //aOppty.Amount =  333;
            }

        }

        system.debug('cfg_Opportunity_VerifyContacts_TDTM triggerAction: ' + triggerAction + 'Exit');
        //return records
        return dmlWrapper;
    }
    ////////////////////////////////////////////////////////////////////////////




}