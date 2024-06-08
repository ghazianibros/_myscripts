# path to the genereated client cert
$pubKeyFilePath = 'c:\_tmp\client_cert.pem'

# Import the public key into Trusted Root Certification Authorities and Trusted People
$null = Import-Certificate -FilePath $pubKeyFilePath -CertStoreLocation 'Cert:\LocalMachine\Root'
$null = Import-Certificate -FilePath $pubKeyFilePath -CertStoreLocation 'Cert:\LocalMachine\TrustedPeople'


### How to validate
### Go to cmd and mmc
### File > add/remove snap-ins > Certificates > Add > Computer Accounts > finish
### Check into Console Root > Certificates (Local Computer) > Trusted Root Certificate Auth > Certificates > should have newly created certificate
### Check into Console Root > Certificates (Local Computer) > Trusted People > Certificates > should have newly created certificate
####