@isTest
public class ExpenseEXTTest{
    public static testMethod void testMtd(){
        Expense__c exp = new Expense__c();
        exp.Amount__c = 10.0;
        exp.Event_Date__c = Date.today();
        insert exp;
        
        Member__c mem = new Member__c();
        mem.Email__c = 'abc@gmail.com';
        insert mem;
        
        Members_Expense__c memExp = new Members_Expense__c();
        memExp.Expense__c = exp.id;
        memExp.Member__c = mem.id;
        memExp.Contributed_Amount__c = 10.0;
        insert memExp;
        
        ExpenseEXT expExt = new ExpenseEXT(new ApexPages.StandardController(exp));
        expExt.getExpMembers();
    }
}