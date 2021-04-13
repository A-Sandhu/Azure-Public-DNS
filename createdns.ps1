# Connect to Azure Account 
  Connect-AzAccount then your azure credentials

# Create a resource group to contain the DNS zone:
   New-AzResourceGroup -name RG-AzDNS -location "WestUS2"

# Create a DNS zone
New-AzDnsZone -Name contoso.xyz -ResourceGroupName MyResourceGroup

# Create a DNS record
New-AzDnsRecordSet -Name www -RecordType A -ZoneName contoso.xyz -ResourceGroupName MyResourceGroup -Ttl 3600 -DnsRecords (New-AzDnsRecordConfig -IPv4Address "10.10.10.10")

# View records
Get-AzDnsRecordSet -ZoneName contoso.xyz -ResourceGroupName MyResourceGroup

# Test the name resolution
Get-AzDnsRecordSet -ZoneName contoso.xyz -ResourceGroupName MyResourceGroup -RecordType ns

# Open a command prompt, and run the following command:
nslookup www.contoso.xyz <name server name>

# Clean up resources
Remove-AzResourceGroup -Name MyResourceGroup

