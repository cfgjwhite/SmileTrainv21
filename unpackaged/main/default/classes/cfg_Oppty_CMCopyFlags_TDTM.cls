////////////////////////////////////////////////////////////////////////////
//  Description : Table Drive Trigger Management Handler - Opportunity trigger
//  Copies Flags
////////////////////////////////////////////////////////////////////////////
global without sharing class cfg_Oppty_CMCopyFlags_TDTM extends npsp.TDTM_Runnable
{

////////////////////////////////////////////////////////////////////////////
global override npsp.TDTM_Runnable.DmlWrapper run(List<SObject> newlist,List<SObject> oldlist,npsp.TDTM_Runnable.Action triggerAction,
Schema.DescribeSObjectResult objResult)
{
//declare variables
npsp.TDTM_Runnable.dmlWrapper dmlWrapper = new npsp.TDTM_Runnable.DmlWrapper();

List<Opportunity> newOpptyList = (List<Opportunity>) newlist;
List<Opportunity> oldOpptyList = (List<Opportunity>) oldlist;
//Set<Id> actIds = new Set<Id>();

system.debug('cfg_Oppty_CMCopyFlags_TDTM triggerAction: ' + triggerAction + 'Enter');

system.debug('cfg_Oppty_CMCopyFlags_TDTM triggerAction: ' + triggerAction + 'Exit');
//return records
return dmlWrapper;
}
}
////////////////////////////////////////////////////////////////////////////