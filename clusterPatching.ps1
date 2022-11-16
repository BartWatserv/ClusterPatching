$ClusterName = "F04-JPI-CLUS01P"
$Node1  = "F04-JPI-SQL01P"
$Node2  = "F04-JPI-SQL02P"

$ClusterGroup1 = "FV-JPI-VFS01P"
$ClusterGroup2 = "SQL Server (AX_PROD)"

#Get-cluster
#get-clusternode - to see if both cluster nodes are up
#get-clustergroup
#Move-ClusterGroup -Name MyFileServer # This example moves the clustered service called MyFileServer from the current owner node to any other node.
#Move-ClusterGroup -Name MyFileServer -Node node2 # This example moves the resource group called MyFileServer from the current owner node to the node named node2.
#Get-ClusterNode node3 | Get-ClusterGroup | Move-ClusterGroup # This example moves all resource groups that are currently owned by the node named node3 to other nodes. Use this cmdlet before performing maintenance on the specified node.

#Get-ClusterNode -Name node1 | Get-ClusterResource

Move-ClusterGroup -Name $ClusterGroup2 -Node $Node1
