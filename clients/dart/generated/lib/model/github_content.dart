part of swagger.api;


@Entity()
class GithubContent {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'sha')
  String sha = null;
  

  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'repo')
  String repo = null;
  

  @Property(name: 'size')
  int size = null;
  

  @Property(name: 'owner')
  String owner = null;
  

  @Property(name: 'path')
  String path = null;
  

  @Property(name: 'base64Data')
  String base64Data = null;
  
  GithubContent();

  @override
  String toString()  {
    return 'GithubContent[name=$name, sha=$sha, _class=$_class, repo=$repo, size=$size, owner=$owner, path=$path, base64Data=$base64Data, ]';
  }

}

