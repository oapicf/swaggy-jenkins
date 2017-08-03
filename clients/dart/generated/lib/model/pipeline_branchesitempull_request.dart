part of swagger.api;


@Entity()
class PipelineBranchesitempullRequest {
  
  @Property(name: '_links')
  PipelineBranchesitempullRequestlinks links = null;
  

  @Property(name: 'author')
  String author = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'title')
  String title = null;
  

  @Property(name: 'url')
  String url = null;
  

  @Property(name: '_class')
  String _class = null;
  
  PipelineBranchesitempullRequest();

  @override
  String toString()  {
    return 'PipelineBranchesitempullRequest[links=$links, author=$author, id=$id, title=$title, url=$url, _class=$_class, ]';
  }

}

