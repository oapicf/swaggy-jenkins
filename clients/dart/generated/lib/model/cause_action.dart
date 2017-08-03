part of swagger.api;


@Entity()
class CauseAction {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'causes')
  List<CauseUserIdCause> causes = [];
  
  CauseAction();

  @override
  String toString()  {
    return 'CauseAction[_class=$_class, causes=$causes, ]';
  }

}

