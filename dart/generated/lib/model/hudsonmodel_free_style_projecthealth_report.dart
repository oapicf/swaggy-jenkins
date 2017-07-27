part of swagger.api;


@Entity()
class HudsonmodelFreeStyleProjecthealthReport {
  
  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'iconClassName')
  String iconClassName = null;
  

  @Property(name: 'iconUrl')
  String iconUrl = null;
  

  @Property(name: 'score')
  int score = null;
  

  @Property(name: '_class')
  String _class = null;
  
  HudsonmodelFreeStyleProjecthealthReport();

  @override
  String toString()  {
    return 'HudsonmodelFreeStyleProjecthealthReport[description=$description, iconClassName=$iconClassName, iconUrl=$iconUrl, score=$score, _class=$_class, ]';
  }

}

