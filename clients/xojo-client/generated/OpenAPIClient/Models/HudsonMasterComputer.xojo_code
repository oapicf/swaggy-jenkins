#tag Class
Protected Class HudsonMasterComputer

	#tag Property, Flags = &h0
		_class As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		displayName As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		executors() As OpenAPIClient.Models.HudsonMasterComputerexecutors
	#tag EndProperty


	#tag Property, Flags = &h0
		icon As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		iconClassName As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		idle As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		jnlpAgent As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		launchSupported As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		loadStatistics As OpenAPIClient.Models.Label1
	#tag EndProperty


	#tag Property, Flags = &h0
		manualLaunchAllowed As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		monitorData As OpenAPIClient.Models.HudsonMasterComputermonitorData
	#tag EndProperty


	#tag Property, Flags = &h0
		numExecutors As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		offline As Xoson.O.OptionalBoolean
	#tag EndProperty


	#tag Property, Flags = &h0
		offlineCause As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		offlineCauseReason As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		temporarilyOffline As Xoson.O.OptionalBoolean
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
			Name="displayName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="executors"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="HudsonMasterComputerexecutors"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="icon"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="iconClassName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Name="jnlpAgent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="launchSupported"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="loadStatistics"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Label1"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="manualLaunchAllowed"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="monitorData"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="HudsonMasterComputermonitorData"
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
			Name="offline"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="offlineCause"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="offlineCauseReason"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="temporarilyOffline"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


