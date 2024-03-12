#!/bin/awk -f

BEGIN{
    print "----Start of File----"
}


{
    if($NF>50000)
        $7="HIGH"
    else 
        $7="LOW"
    print $0
}


END{
    print "----END of File----"
}