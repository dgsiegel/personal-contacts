public class Persona : Object {

  public bool mutable { get; default = false; }

  private MultiMap<Attribute.value_type, Attribute> attributes;
 
  
  public void commit ();

}
