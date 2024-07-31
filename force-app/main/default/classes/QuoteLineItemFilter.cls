/**
 * @description: Filter to QuoteLineItems objects in test context
 * @author: Reirysson Costa
 */
public with sharing class QuoteLineItemFilter extends Filter {

    public List<QuoteLineItem> byChangedDiscount ( List<QuoteLineItem> quotes, Map<Id, QuoteLineItem> oldQuoteLineItems ) {

        List<String> fieldsChanged = new List<String>{ 'Discount' };

        return (List<QuoteLineItem>) this.relevantChangeRecordsFilter( quotes, oldQuoteLineItems, fieldsChanged );
    }
}