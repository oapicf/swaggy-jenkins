import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/cause_action.dart';

import 'package:openapi/model/empty_change_log_set.dart';

part 'free_style_build.jser.dart';

class FreeStyleBuild {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('number', isNullable: false,  )
  final int number;
  
  @Alias('url', isNullable: false,  )
  final String url;
  
  @Alias('actions', isNullable: false,  )
  final List<CauseAction> actions;
  
  @Alias('building', isNullable: false,  )
  final bool building;
  
  @Alias('description', isNullable: false,  )
  final String description;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('duration', isNullable: false,  )
  final int duration;
  
  @Alias('estimatedDuration', isNullable: false,  )
  final int estimatedDuration;
  
  @Alias('executor', isNullable: false,  )
  final String executor;
  
  @Alias('fullDisplayName', isNullable: false,  )
  final String fullDisplayName;
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('keepLog', isNullable: false,  )
  final bool keepLog;
  
  @Alias('queueId', isNullable: false,  )
  final int queueId;
  
  @Alias('result', isNullable: false,  )
  final String result;
  
  @Alias('timestamp', isNullable: false,  )
  final int timestamp;
  
  @Alias('builtOn', isNullable: false,  )
  final String builtOn;
  
  @Alias('changeSet', isNullable: false,  )
  final EmptyChangeLogSet changeSet;
  

  FreeStyleBuild(
      

{
     this.class_ = null,  
     this.number = null,  
     this.url = null,  
     this.actions = const [],  
     this.building = null,  
     this.description = null,  
     this.displayName = null,  
     this.duration = null,  
     this.estimatedDuration = null,  
     this.executor = null,  
     this.fullDisplayName = null,  
     this.id = null,  
     this.keepLog = null,  
     this.queueId = null,  
     this.result = null,  
     this.timestamp = null,  
     this.builtOn = null,  
     this.changeSet = null 
    
    }
  );

  @override
  String toString() {
    return 'FreeStyleBuild[class_=$class_, number=$number, url=$url, actions=$actions, building=$building, description=$description, displayName=$displayName, duration=$duration, estimatedDuration=$estimatedDuration, executor=$executor, fullDisplayName=$fullDisplayName, id=$id, keepLog=$keepLog, queueId=$queueId, result=$result, timestamp=$timestamp, builtOn=$builtOn, changeSet=$changeSet, ]';
  }
}

@GenSerializer(nullableFields: true)
class FreeStyleBuildSerializer extends Serializer<FreeStyleBuild> with _$FreeStyleBuildSerializer {

}

