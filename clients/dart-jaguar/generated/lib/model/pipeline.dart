import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/pipelinelatest_run.dart';

part 'pipeline.jser.dart';

class Pipeline {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('organization', isNullable: false,  )
  final String organization;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('fullName', isNullable: false,  )
  final String fullName;
  
  @Alias('weatherScore', isNullable: false,  )
  final int weatherScore;
  
  @Alias('estimatedDurationInMillis', isNullable: false,  )
  final int estimatedDurationInMillis;
  
  @Alias('latestRun', isNullable: false,  )
  final PipelinelatestRun latestRun;
  

  Pipeline(
      

{
     this.class_ = null,  
     this.organization = null,  
     this.name = null,  
     this.displayName = null,  
     this.fullName = null,  
     this.weatherScore = null,  
     this.estimatedDurationInMillis = null,  
     this.latestRun = null 
    
    }
  );

  @override
  String toString() {
    return 'Pipeline[class_=$class_, organization=$organization, name=$name, displayName=$displayName, fullName=$fullName, weatherScore=$weatherScore, estimatedDurationInMillis=$estimatedDurationInMillis, latestRun=$latestRun, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineSerializer extends Serializer<Pipeline> with _$PipelineSerializer {

}

