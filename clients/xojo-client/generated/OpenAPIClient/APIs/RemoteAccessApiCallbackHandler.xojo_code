#tag Interface
Protected Interface RemoteAccessApiCallbackHandler
	#tag Method, Flags = &h0
		Sub GetComputerCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ComputerSet)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetJenkinsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Hudson)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetJobCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.FreeStyleProject)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetJobConfigCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetJobLastBuildCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.FreeStyleBuild)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetJobProgressiveTextCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQueueCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Queue)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQueueItemCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Queue)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetViewCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ListView)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetViewConfigCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HeadJenkinsCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostCreateItemCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostCreateViewCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostJobBuildCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostJobConfigCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostJobDeleteCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostJobDisableCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostJobEnableCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostJobLastBuildStopCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostViewConfigCallback(status As OpenAPIClient.OpenAPIClientException)
		  
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
