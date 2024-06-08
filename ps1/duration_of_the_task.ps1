 clear


Get-WinEvent -FilterHashtable @{
    'LogName' = 'Microsoft-Windows-TaskScheduler/Operational'
    'ID'      = 200, 201
} | Group-Object ActivityID | ForEach-Object {
    $start = $_.Group |
             Where-Object { $_.Id -eq 200 } |
             Select-Object -Expand TimeCreated -First 2
    $end   = $_.Group |
             Where-Object { $_.Id -eq 201 } |
             Select-Object -Expand TimeCreated -First 2

    New-Object -Type PSObject -Property @{
        'TaskName'  = $_.Group[0].Properties[0].Value
        'StartTime' = $start
        'Duration'  = ($end - $start).TotalSeconds
    }
} 
