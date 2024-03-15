#tag Interface
Protected Interface BlueOceanApiCallbackHandler
	#tag Method, Flags = &h0
		Sub DeletePipelineQueueItemCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetAuthenticatedUserCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.User)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetClassesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetJsonWebKeyCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetJsonWebTokenCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetOrganisationCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Organisation)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetOrganisationsCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.Organisation)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Pipeline)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineActivitiesCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.PipelineActivity)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineBranchCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.BranchImpl)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineBranchRunCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PipelineRun)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineBranchesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.MultibranchPipeline)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineFolderCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PipelineFolderImpl)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineFolderPipelineCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PipelineImpl)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineQueueCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.QueueItemImpl)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineRunCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PipelineRun)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineRunLogCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineRunNodeCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PipelineRunNode)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineRunNodeStepCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PipelineStepImpl)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineRunNodeStepLogCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineRunNodeStepsCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.PipelineStepImpl)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineRunNodesCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.PipelineRunNode)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelineRunsCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.PipelineRun)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPipelinesCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.Pipeline)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetSCMCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GithubScm)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetSCMOrganisationRepositoriesCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.GithubOrganization)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetSCMOrganisationRepositoryCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.GithubOrganization)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetSCMOrganisationsCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.GithubOrganization)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetUserCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.User)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetUserFavoritesCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.FavoriteImpl)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetUsersCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.User)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostPipelineRunCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueItemImpl)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostPipelineRunsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueItemImpl)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PutPipelineFavoriteCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.FavoriteImpl)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PutPipelineRunCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PipelineRun)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchClassesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As String)
		  
		End Sub
	#tag EndMethod




	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Interface
#tag EndInterface
