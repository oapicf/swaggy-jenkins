part of swagger.api;


@Entity()
class HudsonmodelListView {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'jobs')
  List<HudsonmodelFreeStyleProject> jobs = [];
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'url')
  String url = null;
  
  HudsonmodelListView();

  @override
  String toString()  {
    return 'HudsonmodelListView[_class=$_class, description=$description, jobs=$jobs, name=$name, url=$url, ]';
  }

}

