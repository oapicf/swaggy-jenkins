import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'pipeline_folder_impl.jser.dart';

class PipelineFolderImpl {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('fullName', isNullable: false,  )
  final String fullName;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('organization', isNullable: false,  )
  final String organization;
  
  @Alias('numberOfFolders', isNullable: false,  )
  final int numberOfFolders;
  
  @Alias('numberOfPipelines', isNullable: false,  )
  final int numberOfPipelines;
  

  PipelineFolderImpl(
      

{
     this.class_ = null,  
     this.displayName = null,  
     this.fullName = null,  
     this.name = null,  
     this.organization = null,  
     this.numberOfFolders = null,  
     this.numberOfPipelines = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineFolderImpl[class_=$class_, displayName=$displayName, fullName=$fullName, name=$name, organization=$organization, numberOfFolders=$numberOfFolders, numberOfPipelines=$numberOfPipelines, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineFolderImplSerializer extends Serializer<PipelineFolderImpl> with _$PipelineFolderImplSerializer {

}

