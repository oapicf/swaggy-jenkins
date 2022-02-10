import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'default_crumb_issuer.jser.dart';

class DefaultCrumbIssuer {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('crumb', isNullable: false,  )
  final String crumb;
  
  @Alias('crumbRequestField', isNullable: false,  )
  final String crumbRequestField;
  

  DefaultCrumbIssuer(
      

{
     this.class_ = null,  
     this.crumb = null,  
     this.crumbRequestField = null 
    
    }
  );

  @override
  String toString() {
    return 'DefaultCrumbIssuer[class_=$class_, crumb=$crumb, crumbRequestField=$crumbRequestField, ]';
  }
}

@GenSerializer(nullableFields: true)
class DefaultCrumbIssuerSerializer extends Serializer<DefaultCrumbIssuer> with _$DefaultCrumbIssuerSerializer {

}

