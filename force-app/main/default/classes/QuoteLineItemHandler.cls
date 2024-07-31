/**
 * @description: This is an exclusive class to process and delegate operations to triggered QuoteLineItem records.
 * @author: Reirysson Costa
 */
public with sharing class QuoteLineItemHandler extends TriggerHandler {

    private List<QuoteLineItem> tNew;
	private List<QuoteLineItem> tOld;
	private Map<Id, QuoteLineItem> tNewMap;
	private Map<Id, QuoteLineItem> tOldMap;

    private QuoteLineItemFilter filter;
    private QuoteLineItemRepository repository;

    public QuoteLineItemHandler() {
        this.tNew = (List<QuoteLineItem>) Trigger.new;
		this.tOld = (List<QuoteLineItem>) Trigger.old;
		this.tNewMap = (Map<Id, QuoteLineItem>) Trigger.newMap;
		this.tOldMap = (Map<Id, QuoteLineItem>) Trigger.oldMap;

        this.repository = new QuoteLineItemRepository();
        this.filter = new QuoteLineItemFilter();
    }

    public override void beforeInsert() {
	}

    public override void beforeUpdate() {
    }

    public override void afterInsert() {
        this.validateDiscount();
	}

    public override void afterUpdate() {

	}

    private void validateDiscount() {

        List<QuoteLineItem> quoteLineItemsToApprovalProcess = this.filter.byChangedDiscount(this.tNew, this.tOldMap);
        
        
    }
}