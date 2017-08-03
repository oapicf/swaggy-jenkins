part of swagger.api;


@Entity()
class PipelineActivityartifacts {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'size')
  int size = null;
  

  @Property(name: 'url')
  String url = null;
  

  @Property(name: '_class')
  String _class = null;
  
  PipelineActivityartifacts();

  @override
  String toString()  {
    return 'PipelineActivityartifacts[name=$name, size=$size, url=$url, _class=$_class, ]';
  }

}

