using Gee;

class Demo.HelloWorld : GLib.Object {

    public static int main(string[] args) {
        var personas = new ArrayList<AbstractPersona>();
        var individuals = new ArrayList<Individual>();

        AbstractPersonaFactory fact = new StubPersonaFactory ();
        personas = fact.GetAll();
  
        foreach (AbstractPersona p in personas) {
            p.commit();
            individuals.add(new Individual.with_person(p));
        }

        foreach (Individual i in individuals) {
            foreach (AbstractPersona p in i.personas) {
                foreach (AbstractAttribute a in p.attributes) {
                   
                    var n = a as Name;
                    var m = a as EMail;
                    var o = a as Jabber;

                    if (n != null)
                      stdout.printf ("My Name is: %s\n", n.name);

                    if (m != null)
                      stdout.printf ("My EMail is: %s\n", m.email);

                    if (o != null)
                      stdout.printf ("My Jabber is: %s\n", o.jabber);
                }
            }
        }

        return 0;
    }
}

