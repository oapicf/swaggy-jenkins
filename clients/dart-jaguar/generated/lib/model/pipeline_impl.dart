import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/pipeline_impllinks.dart';

part 'pipeline_impl.jser.dart';

class PipelineImpl {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('estimatedDurationInMillis', isNullable: false,  )
  final int estimatedDurationInMillis;
  
  @Alias('fullName', isNullable: false,  )
  final String fullName;
  
  @Alias('latestRun', isNullable: false,  )
  final String latestRun;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('organization', isNullable: false,  )
  final String organization;
  
  @Alias('weatherScore', isNullable: false,  )
  final int weatherScore;
  
  @Alias('_links', isNullable: false,  )
  final PipelineImpllinks links;
  

  PipelineImpl(
      

{
     this.class_ = null,  
     this.displayName = null,  
     this.estimatedDurationInMillis = null,  
     this.fullName = null,  
     this.latestRun = null,  
     this.name = null,  
     this.organization = null,  
     this.weatherScore = null,  
     this.links = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineImpl[class_=$class_, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullName=$fullName, latestRun=$latestRun, name=$name, organization=$organization, weatherScore=$weatherScore, links=$links, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineImplSerializer extends Serializer<PipelineImpl> with _$PipelineImplSerializer {

}

