part of swagger.api;


@Entity()
class HudsonscmEmptyChangeLogSet {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'kind')
  String kind = null;
  
  HudsonscmEmptyChangeLogSet();

  @override
  String toString()  {
    return 'HudsonscmEmptyChangeLogSet[_class=$_class, kind=$kind, ]';
  }

}

