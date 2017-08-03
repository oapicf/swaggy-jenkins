part of swagger.api;


@Entity()
class GenericResource {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'durationInMillis')
  int durationInMillis = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'result')
  String result = null;
  

  @Property(name: 'startTime')
  String startTime = null;
  
  GenericResource();

  @override
  String toString()  {
    return 'GenericResource[_class=$_class, displayName=$displayName, durationInMillis=$durationInMillis, id=$id, result=$result, startTime=$startTime, ]';
  }

}

