import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/branch_impllinks.dart';

import 'package:openapi/model/pipeline_run_impl.dart';

import 'package:openapi/model/string_parameter_definition.dart';

import 'package:openapi/model/branch_implpermissions.dart';

part 'branch_impl.jser.dart';

class BranchImpl {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('estimatedDurationInMillis', isNullable: false,  )
  final int estimatedDurationInMillis;
  
  @Alias('fullDisplayName', isNullable: false,  )
  final String fullDisplayName;
  
  @Alias('fullName', isNullable: false,  )
  final String fullName;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('organization', isNullable: false,  )
  final String organization;
  
  @Alias('parameters', isNullable: false,  )
  final List<StringParameterDefinition> parameters;
  
  @Alias('permissions', isNullable: false,  )
  final BranchImplpermissions permissions;
  
  @Alias('weatherScore', isNullable: false,  )
  final int weatherScore;
  
  @Alias('pullRequest', isNullable: false,  )
  final String pullRequest;
  
  @Alias('_links', isNullable: false,  )
  final BranchImpllinks links;
  
  @Alias('latestRun', isNullable: false,  )
  final PipelineRunImpl latestRun;
  

  BranchImpl(
      

{
     this.class_ = null,  
     this.displayName = null,  
     this.estimatedDurationInMillis = null,  
     this.fullDisplayName = null,  
     this.fullName = null,  
     this.name = null,  
     this.organization = null,  
     this.parameters = const [],  
     this.permissions = null,  
     this.weatherScore = null,  
     this.pullRequest = null,  
     this.links = null,  
     this.latestRun = null 
    
    }
  );

  @override
  String toString() {
    return 'BranchImpl[class_=$class_, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullDisplayName=$fullDisplayName, fullName=$fullName, name=$name, organization=$organization, parameters=$parameters, permissions=$permissions, weatherScore=$weatherScore, pullRequest=$pullRequest, links=$links, latestRun=$latestRun, ]';
  }
}

@GenSerializer(nullableFields: true)
class BranchImplSerializer extends Serializer<BranchImpl> with _$BranchImplSerializer {

}

