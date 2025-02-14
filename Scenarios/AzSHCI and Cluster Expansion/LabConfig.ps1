$LabConfig=@{ DomainAdminName='LabAdmin'; AdminPassword='LS1setup!' ; Prefix = 'MSLab-' ; DCEdition='4'; Internet=$true ; TelemetryLevel='Full' ; TelemetryNickname='' ; AdditionalNetworksConfig=@(); VMs=@()}

#3 nodes for AzSHCI Cluster
1..4 | ForEach-Object {$VMNames="Exp" ; $LABConfig.VMs += @{ VMName = "$VMNames$_" ; Configuration = 'S2D' ; ParentVHD = 'AzSHCI21H2_G2.vhdx' ; HDDNumber = 4 ; HDDSize= 4TB ; MemoryStartupBytes= 4GB; VMProcessorCount=4 ; NestedVirt=$true ; VirtualTPM=$true}}
