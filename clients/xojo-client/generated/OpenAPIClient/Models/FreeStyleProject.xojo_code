#tag Class
Protected Class FreeStyleProject

	#tag Property, Flags = &h0
		_class As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		name As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		url As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		color As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		actions() As OpenAPIClient.Models.FreeStyleProjectactions
	#tag EndProperty


	#tag Property, Flags = &h0
		description As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		displayName As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		displayNameOrNull As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		fullDisplayName As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		fullName As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		buildable As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		builds() As OpenAPIClient.Models.FreeStyleBuild
	#tag EndProperty


	#tag Property, Flags = &h0
		firstBuild As OpenAPIClient.Models.FreeStyleBuild
	#tag EndProperty


	#tag Property, Flags = &h0
		healthReport() As OpenAPIClient.Models.FreeStyleProjecthealthReport
	#tag EndProperty


	#tag Property, Flags = &h0
		inQueue As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		keepDependencies As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		lastBuild As OpenAPIClient.Models.FreeStyleBuild
	#tag EndProperty


	#tag Property, Flags = &h0
		lastCompletedBuild As OpenAPIClient.Models.FreeStyleBuild
	#tag EndProperty


	#tag Property, Flags = &h0
		lastFailedBuild As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		lastStableBuild As OpenAPIClient.Models.FreeStyleBuild
	#tag EndProperty


	#tag Property, Flags = &h0
		lastSuccessfulBuild As OpenAPIClient.Models.FreeStyleBuild
	#tag EndProperty


	#tag Property, Flags = &h0
		lastUnstableBuild As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		lastUnsuccessfulBuild As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		nextBuildNumber As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		queueItem As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		concurrentBuild As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		scm As OpenAPIClient.Models.NullSCM
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
			Name="_class"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Name="url"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="color"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="actions"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleProjectactions"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Name="displayNameOrNull"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="fullDisplayName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="fullName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="buildable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="builds"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleBuild"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="firstBuild"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleBuild"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="healthReport"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleProjecthealthReport"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="inQueue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="keepDependencies"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastBuild"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleBuild"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastCompletedBuild"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleBuild"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastFailedBuild"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastStableBuild"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleBuild"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastSuccessfulBuild"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleBuild"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastUnstableBuild"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastUnsuccessfulBuild"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="nextBuildNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="queueItem"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="concurrentBuild"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scm"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NullSCM"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


