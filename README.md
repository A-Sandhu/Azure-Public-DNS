# To create an Azure Pubic DNS zone and add DNS records with using Azure CLI. 

1- To create the resource group.
- az group create --name RG-Az-DNS --location "WestUS2"

2- To create a DNS zone. (I have created sandhu.cloud).
- az network dns zone create -g RG-Az-DNS -n sandhu.cloud

3- To create a DNS record (I've created a CNAME record for the static web app so you need to add host name
   (sub domain) and value).
- az network dns record-set CNAME set-record --resource-group RG-Az-DNS --zone-name sandhu.cloud --record-set-name "hostname" --cname "value"

4- To view all the DNS records in the zone. 
- az network dns record-set CNAME list -g RG-Az-DNS -z sandhu.cloud

5- To view all the DNS records in the zone. 
- az network dns record-set CNAME list -g RG-Az-DNS -z sandhu.cloud

6- To view the CNAME Record.
- az network dns record-set CNAME show --resource-group RG-Az-DNS --zone-name sandhu.cloud --name resume

7- Open a command prompt, and run the following command to test the name resolution. 
- nslookup www.domain.com nsX-03.azure-dns.com.

8- To delete any record:
- az network dns record-set "RecordType" delete -g RG-Az-DNS -z sandhu.cloud -n "Record Name"

10 Clean up resources to 
- az group delete --name RG-Az-DNS
