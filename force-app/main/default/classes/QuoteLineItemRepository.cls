/**
 * @description: This is an exclusive class to process SOQLs operations to QuoteLineItems records.
 * @author: Reirysson Costa
 */
virtual public with sharing class QuoteLineItemRepository extends AbstractRepository{
    
    virtual public List<QuoteLineItem> getQuoteLineItemsByIds( List<String> quoteLineItemsIds ) {
        return [
                SELECT
                    Id
                    , Discount
                    , ApprovalProcess__c
                FROM
                    QuoteLineItem
                WHERE
                    Id IN : quoteLineItemsIds
        ];
    }
}