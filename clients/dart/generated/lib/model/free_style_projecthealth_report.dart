part of swagger.api;


@Entity()
class FreeStyleProjecthealthReport {
  
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
  
  FreeStyleProjecthealthReport();

  @override
  String toString()  {
    return 'FreeStyleProjecthealthReport[description=$description, iconClassName=$iconClassName, iconUrl=$iconUrl, score=$score, _class=$_class, ]';
  }

}

