part of swagger.api;


@Entity()
class PipelineRunartifacts {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'size')
  int size = null;
  

  @Property(name: 'url')
  String url = null;
  

  @Property(name: '_class')
  String _class = null;
  
  PipelineRunartifacts();

  @override
  String toString()  {
    return 'PipelineRunartifacts[name=$name, size=$size, url=$url, _class=$_class, ]';
  }

}

