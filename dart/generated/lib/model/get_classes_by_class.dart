part of swagger.api;


@Entity()
class GetClassesByClass {
  
  @Property(name: 'classes')
  List<String> classes = [];
  

  @Property(name: '_class')
  String _class = null;
  
  GetClassesByClass();

  @override
  String toString()  {
    return 'GetClassesByClass[classes=$classes, _class=$_class, ]';
  }

}

