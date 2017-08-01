part of swagger.api;


@Entity()
class HudsonsecuritycsrfDefaultCrumbIssuer {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'crumb')
  String crumb = null;
  

  @Property(name: 'crumbRequestField')
  String crumbRequestField = null;
  
  HudsonsecuritycsrfDefaultCrumbIssuer();

  @override
  String toString()  {
    return 'HudsonsecuritycsrfDefaultCrumbIssuer[_class=$_class, crumb=$crumb, crumbRequestField=$crumbRequestField, ]';
  }

}

