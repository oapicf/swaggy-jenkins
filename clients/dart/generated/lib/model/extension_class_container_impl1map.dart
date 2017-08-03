part of swagger.api;


@Entity()
class ExtensionClassContainerImpl1map {
  
  @Property(name: 'io.jenkins.blueocean.service.embedded.rest.PipelineImpl')
  ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = null;
  

  @Property(name: 'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl')
  ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = null;
  

  @Property(name: '_class')
  String _class = null;
  
  ExtensionClassContainerImpl1map();

  @override
  String toString()  {
    return 'ExtensionClassContainerImpl1map[ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl=$ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl=$ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, _class=$_class, ]';
  }

}

