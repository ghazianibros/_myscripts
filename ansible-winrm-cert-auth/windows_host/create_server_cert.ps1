# Get the current Hostname
$hostname = hostname

# Generate the server cert
$serverCert = New-SelfSignedCertificate -DnsName $hostname -CertStoreLocation 'Cert:\LocalMachine\My'


### How to validate
### Go to cmd and mmc
### File > add/remove snap-ins > Certificates > Add > Computer Accounts > finish
### Check into Console Root > Certificates (Local Computer) > Personal > Certificates > should have newly created certificate with the name of hostname
####
