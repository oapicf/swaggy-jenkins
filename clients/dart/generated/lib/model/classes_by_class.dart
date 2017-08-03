part of swagger.api;


@Entity()
class ClassesByClass {
  
  @Property(name: 'classes')
  List<String> classes = [];
  

  @Property(name: '_class')
  String _class = null;
  
  ClassesByClass();

  @override
  String toString()  {
    return 'ClassesByClass[classes=$classes, _class=$_class, ]';
  }

}

