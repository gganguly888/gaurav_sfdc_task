public with sharing class ExpenseEXT {
    public Expense__c expObj{get;set;}
    public List<Members_Expense__c> memExp{get;set;}

    public ExpenseEXT(ApexPages.StandardController controller) {
        expObj = (Expense__c)controller.getRecord();
        memExp = getExpMembers();
    }
    
    public List<Members_Expense__c> getExpMembers(){
        return [Select Member__r.Name,Contributed_Amount__c from Members_Expense__c where Expense__c =: expObj.Id];
    }
}