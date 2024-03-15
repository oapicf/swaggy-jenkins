#tag Class
Protected Class Hudson

	#tag Property, Flags = &h0
		_class As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		assignedLabels() As OpenAPIClient.Models.HudsonassignedLabels
	#tag EndProperty


	#tag Property, Flags = &h0
		mode As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		nodeDescription As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		nodeName As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		numExecutors As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		description As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		jobs() As OpenAPIClient.Models.FreeStyleProject
	#tag EndProperty


	#tag Property, Flags = &h0
		primaryView As OpenAPIClient.Models.AllView
	#tag EndProperty


	#tag Property, Flags = &h0
		quietingDown As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		slaveAgentPort As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		unlabeledLoad As OpenAPIClient.Models.UnlabeledLoadStatistics
	#tag EndProperty


	#tag Property, Flags = &h0
		useCrumbs As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		useSecurity As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		views() As OpenAPIClient.Models.AllView
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
			Name="assignedLabels"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="HudsonassignedLabels"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="nodeDescription"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="nodeName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="numExecutors"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
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
			Name="jobs"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FreeStyleProject"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="primaryView"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="AllView"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="quietingDown"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="slaveAgentPort"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="unlabeledLoad"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="UnlabeledLoadStatistics"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="useCrumbs"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="useSecurity"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="views"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="AllView"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


