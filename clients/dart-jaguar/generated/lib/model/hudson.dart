import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/all_view.dart';

import 'package:openapi/model/free_style_project.dart';

import 'package:openapi/model/unlabeled_load_statistics.dart';

import 'package:openapi/model/hudsonassigned_labels.dart';

part 'hudson.jser.dart';

class Hudson {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('assignedLabels', isNullable: false,  )
  final List<HudsonassignedLabels> assignedLabels;
  
  @Alias('mode', isNullable: false,  )
  final String mode;
  
  @Alias('nodeDescription', isNullable: false,  )
  final String nodeDescription;
  
  @Alias('nodeName', isNullable: false,  )
  final String nodeName;
  
  @Alias('numExecutors', isNullable: false,  )
  final int numExecutors;
  
  @Alias('description', isNullable: false,  )
  final String description;
  
  @Alias('jobs', isNullable: false,  )
  final List<FreeStyleProject> jobs;
  
  @Alias('primaryView', isNullable: false,  )
  final AllView primaryView;
  
  @Alias('quietingDown', isNullable: false,  )
  final bool quietingDown;
  
  @Alias('slaveAgentPort', isNullable: false,  )
  final int slaveAgentPort;
  
  @Alias('unlabeledLoad', isNullable: false,  )
  final UnlabeledLoadStatistics unlabeledLoad;
  
  @Alias('useCrumbs', isNullable: false,  )
  final bool useCrumbs;
  
  @Alias('useSecurity', isNullable: false,  )
  final bool useSecurity;
  
  @Alias('views', isNullable: false,  )
  final List<AllView> views;
  

  Hudson(
      

{
     this.class_ = null,  
     this.assignedLabels = const [],  
     this.mode = null,  
     this.nodeDescription = null,  
     this.nodeName = null,  
     this.numExecutors = null,  
     this.description = null,  
     this.jobs = const [],  
     this.primaryView = null,  
     this.quietingDown = null,  
     this.slaveAgentPort = null,  
     this.unlabeledLoad = null,  
     this.useCrumbs = null,  
     this.useSecurity = null,  
     this.views = const [] 
    
    }
  );

  @override
  String toString() {
    return 'Hudson[class_=$class_, assignedLabels=$assignedLabels, mode=$mode, nodeDescription=$nodeDescription, nodeName=$nodeName, numExecutors=$numExecutors, description=$description, jobs=$jobs, primaryView=$primaryView, quietingDown=$quietingDown, slaveAgentPort=$slaveAgentPort, unlabeledLoad=$unlabeledLoad, useCrumbs=$useCrumbs, useSecurity=$useSecurity, views=$views, ]';
  }
}

@GenSerializer(nullableFields: true)
class HudsonSerializer extends Serializer<Hudson> with _$HudsonSerializer {

}

