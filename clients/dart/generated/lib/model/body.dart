part of swagger.api;


@Entity()
class Body {
  
  @Property(name: 'favorite')
  bool favorite = null;
  
  Body();

  @override
  String toString()  {
    return 'Body[favorite=$favorite, ]';
  }

}

