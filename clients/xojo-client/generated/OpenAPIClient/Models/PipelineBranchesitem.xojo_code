#tag Class
Protected Class PipelineBranchesitem

	#tag Property, Flags = &h0
		displayName As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		estimatedDurationInMillis As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		name As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		weatherScore As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		latestRun As OpenAPIClient.Models.PipelineBranchesitemlatestRun
	#tag EndProperty


	#tag Property, Flags = &h0
		organization As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		pullRequest As OpenAPIClient.Models.PipelineBranchesitempullRequest
	#tag EndProperty


	#tag Property, Flags = &h0
		totalNumberOfPullRequests As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		_class As Xoson.O.OptionalString
	#tag EndProperty





	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="displayName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="estimatedDurationInMillis"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="weatherScore"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="latestRun"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="PipelineBranchesitemlatestRun"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="organization"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="pullRequest"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="PipelineBranchesitempullRequest"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="totalNumberOfPullRequests"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_class"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


