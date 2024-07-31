trigger QuoteTrigger on Quote (before Insert, after Insert,before Update, after Update, before delete, after delete) {
    new QuoteHandler().run();
}