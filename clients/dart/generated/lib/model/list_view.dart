part of swagger.api;


@Entity()
class ListView {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'jobs')
  List<FreeStyleProject> jobs = [];
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'url')
  String url = null;
  
  ListView();

  @override
  String toString()  {
    return 'ListView[_class=$_class, description=$description, jobs=$jobs, name=$name, url=$url, ]';
  }

}

