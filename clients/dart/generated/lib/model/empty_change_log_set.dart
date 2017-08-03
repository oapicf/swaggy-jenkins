part of swagger.api;


@Entity()
class EmptyChangeLogSet {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'kind')
  String kind = null;
  
  EmptyChangeLogSet();

  @override
  String toString()  {
    return 'EmptyChangeLogSet[_class=$_class, kind=$kind, ]';
  }

}

