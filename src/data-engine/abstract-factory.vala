using Gee;

public abstract class AbstractPersonaFactory : Object {

    public AbstractPersonaFactory () {

    }

    public abstract ArrayList<AbstractPersona> GetAll ();
}

public abstract class AbstractGroupFactory : Object {

    public AbstractGroupFactory () {

    }

    public abstract ArrayList<Group> GetAll ();
}
