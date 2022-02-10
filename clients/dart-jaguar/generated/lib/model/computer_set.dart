import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/hudson_master_computer.dart';

part 'computer_set.jser.dart';

class ComputerSet {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('busyExecutors', isNullable: false,  )
  final int busyExecutors;
  
  @Alias('computer', isNullable: false,  )
  final List<HudsonMasterComputer> computer;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('totalExecutors', isNullable: false,  )
  final int totalExecutors;
  

  ComputerSet(
      

{
     this.class_ = null,  
     this.busyExecutors = null,  
     this.computer = const [],  
     this.displayName = null,  
     this.totalExecutors = null 
    
    }
  );

  @override
  String toString() {
    return 'ComputerSet[class_=$class_, busyExecutors=$busyExecutors, computer=$computer, displayName=$displayName, totalExecutors=$totalExecutors, ]';
  }
}

@GenSerializer(nullableFields: true)
class ComputerSetSerializer extends Serializer<ComputerSet> with _$ComputerSetSerializer {

}

