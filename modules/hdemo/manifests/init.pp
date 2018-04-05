class hdemo ($domain_name="default", $api_key="default_apikey" ) {
    $domainname= hiera('domain_name') 
    $apikeyname= hiera('api_key')
    notify {"the domain name value is --> ${domainname}" :}
    notify {"the apikey value is --> ${apikeyname}" :}

}
