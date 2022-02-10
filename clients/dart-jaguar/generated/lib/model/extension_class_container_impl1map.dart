import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/extension_class_impl.dart';

part 'extension_class_container_impl1map.jser.dart';

class ExtensionClassContainerImpl1map {
  
  @Alias('io.jenkins.blueocean.service.embedded.rest.PipelineImpl', isNullable: false,  )
  final ExtensionClassImpl ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl;
  
  @Alias('io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl', isNullable: false,  )
  final ExtensionClassImpl ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  ExtensionClassContainerImpl1map(
      

{
     this.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl = null,  
     this.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'ExtensionClassContainerImpl1map[ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl=$ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl, ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl=$ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class ExtensionClassContainerImpl1mapSerializer extends Serializer<ExtensionClassContainerImpl1map> with _$ExtensionClassContainerImpl1mapSerializer {

}

