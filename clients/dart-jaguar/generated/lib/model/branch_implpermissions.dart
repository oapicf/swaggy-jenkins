import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'branch_implpermissions.jser.dart';

class BranchImplpermissions {
  
  @Alias('create', isNullable: false,  )
  final bool create;
  
  @Alias('read', isNullable: false,  )
  final bool read;
  
  @Alias('start', isNullable: false,  )
  final bool start;
  
  @Alias('stop', isNullable: false,  )
  final bool stop;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  BranchImplpermissions(
      

{
     this.create = null,  
     this.read = null,  
     this.start = null,  
     this.stop = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'BranchImplpermissions[create=$create, read=$read, start=$start, stop=$stop, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class BranchImplpermissionsSerializer extends Serializer<BranchImplpermissions> with _$BranchImplpermissionsSerializer {

}

