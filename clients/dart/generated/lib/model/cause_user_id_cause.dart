part of swagger.api;


@Entity()
class CauseUserIdCause {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'shortDescription')
  String shortDescription = null;
  

  @Property(name: 'userId')
  String userId = null;
  

  @Property(name: 'userName')
  String userName = null;
  
  CauseUserIdCause();

  @override
  String toString()  {
    return 'CauseUserIdCause[_class=$_class, shortDescription=$shortDescription, userId=$userId, userName=$userName, ]';
  }

}

