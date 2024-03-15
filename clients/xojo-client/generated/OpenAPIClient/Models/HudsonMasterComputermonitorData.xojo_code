#tag Class
Protected Class HudsonMasterComputermonitorData

	#tag Property, Flags = &h0
		hudson_node_monitors_SwapSpaceMonitor As OpenAPIClient.Models.SwapSpaceMonitorMemoryUsage2
	#tag EndProperty


	#tag Property, Flags = &h0
		hudson_node_monitors_TemporarySpaceMonitor As OpenAPIClient.Models.DiskSpaceMonitorDescriptorDiskSpace
	#tag EndProperty


	#tag Property, Flags = &h0
		hudson_node_monitors_DiskSpaceMonitor As OpenAPIClient.Models.DiskSpaceMonitorDescriptorDiskSpace
	#tag EndProperty


	#tag Property, Flags = &h0
		hudson_node_monitors_ArchitectureMonitor As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		hudson_node_monitors_ResponseTimeMonitor As OpenAPIClient.Models.ResponseTimeMonitorData
	#tag EndProperty


	#tag Property, Flags = &h0
		hudson_node_monitors_ClockMonitor As OpenAPIClient.Models.ClockDifference
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
			Name="hudson_node_monitors_SwapSpaceMonitor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SwapSpaceMonitorMemoryUsage2"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hudson_node_monitors_TemporarySpaceMonitor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="DiskSpaceMonitorDescriptorDiskSpace"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hudson_node_monitors_DiskSpaceMonitor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="DiskSpaceMonitorDescriptorDiskSpace"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hudson_node_monitors_ArchitectureMonitor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hudson_node_monitors_ResponseTimeMonitor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ResponseTimeMonitorData"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hudson_node_monitors_ClockMonitor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ClockDifference"
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


