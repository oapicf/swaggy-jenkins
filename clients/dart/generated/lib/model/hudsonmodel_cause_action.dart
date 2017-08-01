part of swagger.api;


@Entity()
class HudsonmodelCauseAction {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'causes')
  List<HudsonmodelCauseUserIdCause> causes = [];
  
  HudsonmodelCauseAction();

  @override
  String toString()  {
    return 'HudsonmodelCauseAction[_class=$_class, causes=$causes, ]';
  }

}

