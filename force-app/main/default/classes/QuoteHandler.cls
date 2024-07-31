/**
 * @description: This is an exclusive class to process and delegate operations to triggered Quote records.
 * @author: Reirysson Costa
 */
public with sharing class QuoteHandler extends TriggerHandler {

    private List<Quote> tNew;
	private List<Quote> tOld;
	private Map<Id, Quote> tNewMap;
	private Map<Id, Quote> tOldMap;


    public QuoteHandler() {
        this.tNew = (List<Quote>) Trigger.new;
		this.tOld = (List<Quote>) Trigger.old;
		this.tNewMap = (Map<Id, Quote>) Trigger.newMap;
		this.tOldMap = (Map<Id, Quote>) Trigger.oldMap;
    }

    public override void beforeInsert() {
	}

    public override void beforeUpdate() {
    }
}