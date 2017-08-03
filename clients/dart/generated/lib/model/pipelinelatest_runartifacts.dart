part of swagger.api;


@Entity()
class PipelinelatestRunartifacts {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'size')
  int size = null;
  

  @Property(name: 'url')
  String url = null;
  

  @Property(name: '_class')
  String _class = null;
  
  PipelinelatestRunartifacts();

  @override
  String toString()  {
    return 'PipelinelatestRunartifacts[name=$name, size=$size, url=$url, _class=$_class, ]';
  }

}

