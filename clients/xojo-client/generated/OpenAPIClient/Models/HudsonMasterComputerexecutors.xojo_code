#tag Class
Protected Class HudsonMasterComputerexecutors

	#tag Property, Flags = &h0
		currentExecutable As OpenAPIClient.Models.FreeStyleBuild
	#tag EndProperty


	#tag Property, Flags = &h0
		idle As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		likelyStuck As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		number As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		progress As Xoson.O.OptionalInteger
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
			Name="currentExecutable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleBuild"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="idle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="likelyStuck"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="number"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="progress"
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


