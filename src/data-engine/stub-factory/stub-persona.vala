using Gee;

public class StubPersona : AbstractPersona {

    public StubPersona (string name, string email, string jabber) {
        attributes.add(new Name(name));
        attributes.add(new EMail(email));
        attributes.add(new Jabber(jabber));
    }

    public override void commit () {
        stdout.printf("Commit called on stub persona!\n");
    }
}
