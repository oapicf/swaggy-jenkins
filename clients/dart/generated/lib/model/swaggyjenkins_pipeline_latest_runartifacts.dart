part of swagger.api;


@Entity()
class SwaggyjenkinsPipelineLatestRunartifacts {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'size')
  int size = null;
  

  @Property(name: 'url')
  String url = null;
  

  @Property(name: '_class')
  String _class = null;
  
  SwaggyjenkinsPipelineLatestRunartifacts();

  @override
  String toString()  {
    return 'SwaggyjenkinsPipelineLatestRunartifacts[name=$name, size=$size, url=$url, _class=$_class, ]';
  }

}

