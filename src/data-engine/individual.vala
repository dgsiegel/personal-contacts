using Gee;

class Individual : Object {

    public signal void changed ();

    public ArrayList<AbstractPersona> personas;

    public Individual () {
      personas = new ArrayList<AbstractPersona>();
    }

    public Individual.with_person (AbstractPersona p) {
      this ();
      add (p);
    }

    public void add (AbstractPersona p) {
      personas.add(p);
    }
}
