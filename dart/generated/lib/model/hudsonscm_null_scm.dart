part of swagger.api;


@Entity()
class HudsonscmNullSCM {
  
  @Property(name: '_class')
  String _class = null;
  
  HudsonscmNullSCM();

  @override
  String toString()  {
    return 'HudsonscmNullSCM[_class=$_class, ]';
  }

}

