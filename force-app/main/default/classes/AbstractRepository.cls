/**
 * Provide Base Repository Implementations
 * @author ercarval - topi
 */
public abstract class AbstractRepository {

    virtual
    public SObject save (SObject aggregate) {

        if (aggregate == null) return null;

        upsert aggregate;

        return aggregate;
    }

    virtual
    public List<SObject> save (List<SObject> aggregates) {

        if (aggregates == null) return new List<SObject>();

        if (aggregates.isEmpty()) return aggregates;

        upsert aggregates;

        return aggregates;
    }

}