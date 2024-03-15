#tag Class
Protected Class QueueLeftItem

	#tag Property, Flags = &h0
		_class As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		actions() As OpenAPIClient.Models.CauseAction
	#tag EndProperty


	#tag Property, Flags = &h0
		blocked As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		buildable As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		id As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		inQueueSince As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		params As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		stuck As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		task As OpenAPIClient.Models.FreeStyleProject
	#tag EndProperty


	#tag Property, Flags = &h0
		url As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		why As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		cancelled As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		executable As OpenAPIClient.Models.FreeStyleBuild
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
			Name="actions"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CauseAction"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="blocked"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="inQueueSince"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="params"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="stuck"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="task"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleProject"
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
			Name="why"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cancelled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="executable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleBuild"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


