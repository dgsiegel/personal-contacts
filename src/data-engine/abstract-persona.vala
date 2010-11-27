using Gee;

public abstract class AbstractPersona : Object {

  //private 

  public bool mutable { get; private set; } // default = false; }

  public ArrayList<AbstractAttribute> attributes = new ArrayList<AbstractAttribute>(); // get / set!
 
  //public 

  public abstract void commit ();
}
