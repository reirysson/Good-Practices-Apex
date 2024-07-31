trigger QuoteLineItemTrigger on QuoteLineItem (before Insert, after Insert,before Update, after Update, before delete, after delete) {
    new QuoteHandler().run();
}