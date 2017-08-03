part of swagger.api;


@Entity()
class GithubFile {
  
  @Property(name: 'content')
  GithubContent content = null;
  

  @Property(name: '_class')
  String _class = null;
  
  GithubFile();

  @override
  String toString()  {
    return 'GithubFile[content=$content, _class=$_class, ]';
  }

}

