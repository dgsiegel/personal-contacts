using Gee;

public class StubPersonaFactory : AbstractPersonaFactory {

    private ArrayList<AbstractPersona> personas;

    public StubPersonaFactory () {
        personas = new ArrayList<AbstractPersona>();

        personas.add (new StubPersona ("John", "foo@google.com", "hans@jabber.ccc.de"));
        personas.add (new StubPersona ("Doe", "doe@yahoo.com", "jochen@gnome.org"));
        personas.add (new StubPersona ("Hanna", "hanna@go.com", "hans@xmpp.com"));        
    }

    public override ArrayList<AbstractPersona> GetAll () {
        return personas;
    }
}
