function ConvertTo-QueryString {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [String]
        $BaseURL,
        [Parameter()]
        $QueryParameters
    )

    $QueryCollection = [System.Web.HttpUtility]::ParseQueryString('')
    $URI = [System.UriBuilder]$BaseURL

    if($QueryParameters){
        if($QueryParameters.GetType().name -eq "Hashtable"){
            foreach($Property in $QueryParameters.GetEnumerator()){
                if($Property.Value){
                    $QueryCollection.Add($Property.key,$Property.Value)
                }
            }
        }elseif($QueryParameters.GetType().name -in @("DictionaryEntry","Object[]")){
            foreach($Property in $QueryParameters){
                if($Property.Value){
                    $QueryCollection.Add($Property.key,$Property.Value)
                }
            }
        }
    }

    $URI.Query = $QueryCollection.ToString()
    if($URI.Query){
        Return $URI.URI.OriginalString
    }else{
        Return $URI.URI.OriginalString + "?"
    }
}