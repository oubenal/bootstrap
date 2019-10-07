$entry = 3,6,4,2,5,2,4,9,6,3,4,4,2,2,2,6
$max_height = 15

$heap = New-Object 'System.Collections.Generic.List[string]'
$entry | Sort-Object | foreach { $tmp = $heap.Add($_)}


$ind = $heap.Count - 1
$height = $max_height
do {
    $ind = $heap.Count - 1
    $height -= $heap[$ind]
    if ($height -ge 0) { Write-Output $heap[$ind]; $heap.RemoveAt($ind) }
    else { $height += $heap[$ind] } 
        
    if( $heap.Count -eq 0) {break}

    $ind = 0
    $height -= $heap[0]
    if ($height -ge 0) { Write-Output $heap[0]; $heap.RemoveAt(0) }
    else { Write-Output ";"; $height = $max_height; }
        
    if( $heap.Count -eq 0) {break}     
} while( $true )


###############
##    res:   ##
#  9 6 6 4 4  #
#  2 2 2 3 4  #
#  2 6 5 4    #
#  2     3    #
###############