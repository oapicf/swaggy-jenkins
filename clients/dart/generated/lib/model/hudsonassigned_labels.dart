part of swagger.api;


@Entity()
class HudsonassignedLabels {
  
  @Property(name: '_class')
  String _class = null;
  
  HudsonassignedLabels();

  @override
  String toString()  {
    return 'HudsonassignedLabels[_class=$_class, ]';
  }

}

