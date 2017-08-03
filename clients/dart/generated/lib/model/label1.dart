part of swagger.api;


@Entity()
class Label1 {
  
  @Property(name: '_class')
  String _class = null;
  
  Label1();

  @override
  String toString()  {
    return 'Label1[_class=$_class, ]';
  }

}

