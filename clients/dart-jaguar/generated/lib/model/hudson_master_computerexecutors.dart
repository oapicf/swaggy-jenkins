import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/free_style_build.dart';

part 'hudson_master_computerexecutors.jser.dart';

class HudsonMasterComputerexecutors {
  
  @Alias('currentExecutable', isNullable: false,  )
  final FreeStyleBuild currentExecutable;
  
  @Alias('idle', isNullable: false,  )
  final bool idle;
  
  @Alias('likelyStuck', isNullable: false,  )
  final bool likelyStuck;
  
  @Alias('number', isNullable: false,  )
  final int number;
  
  @Alias('progress', isNullable: false,  )
  final int progress;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  HudsonMasterComputerexecutors(
      

{
     this.currentExecutable = null,  
     this.idle = null,  
     this.likelyStuck = null,  
     this.number = null,  
     this.progress = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'HudsonMasterComputerexecutors[currentExecutable=$currentExecutable, idle=$idle, likelyStuck=$likelyStuck, number=$number, progress=$progress, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class HudsonMasterComputerexecutorsSerializer extends Serializer<HudsonMasterComputerexecutors> with _$HudsonMasterComputerexecutorsSerializer {

}

