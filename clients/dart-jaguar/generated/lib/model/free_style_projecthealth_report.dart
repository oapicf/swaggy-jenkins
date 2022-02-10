import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'free_style_projecthealth_report.jser.dart';

class FreeStyleProjecthealthReport {
  
  @Alias('description', isNullable: false,  )
  final String description;
  
  @Alias('iconClassName', isNullable: false,  )
  final String iconClassName;
  
  @Alias('iconUrl', isNullable: false,  )
  final String iconUrl;
  
  @Alias('score', isNullable: false,  )
  final int score;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  FreeStyleProjecthealthReport(
      

{
     this.description = null,  
     this.iconClassName = null,  
     this.iconUrl = null,  
     this.score = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'FreeStyleProjecthealthReport[description=$description, iconClassName=$iconClassName, iconUrl=$iconUrl, score=$score, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class FreeStyleProjecthealthReportSerializer extends Serializer<FreeStyleProjecthealthReport> with _$FreeStyleProjecthealthReportSerializer {

}

