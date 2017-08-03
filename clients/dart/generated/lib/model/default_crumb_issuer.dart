part of swagger.api;


@Entity()
class DefaultCrumbIssuer {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'crumb')
  String crumb = null;
  

  @Property(name: 'crumbRequestField')
  String crumbRequestField = null;
  
  DefaultCrumbIssuer();

  @override
  String toString()  {
    return 'DefaultCrumbIssuer[_class=$_class, crumb=$crumb, crumbRequestField=$crumbRequestField, ]';
  }

}

