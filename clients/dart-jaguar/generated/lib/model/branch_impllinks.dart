import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'branch_impllinks.jser.dart';

class BranchImpllinks {
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('actions', isNullable: false,  )
  final Link actions;
  
  @Alias('runs', isNullable: false,  )
  final Link runs;
  
  @Alias('queue', isNullable: false,  )
  final Link queue;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  BranchImpllinks(
      

{
     this.self = null,  
     this.actions = null,  
     this.runs = null,  
     this.queue = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'BranchImpllinks[self=$self, actions=$actions, runs=$runs, queue=$queue, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class BranchImpllinksSerializer extends Serializer<BranchImpllinks> with _$BranchImpllinksSerializer {

}

