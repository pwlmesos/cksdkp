#!/bin/bash
while true; 
do 
    echo -n "Querying Metadata Server";

    echo -n "Public Hostname"
    curl -i http://169.254.169.254/latest/meta-data/public-hostname
    
    if  [ $? -eq 0 ] 
    then
        echo "This needs to stop"
    else
        echo "Cant Reach AWS API....GoodJob" 
    fi


    echo -n "Local Hostname"
    curl -i http://169.254.169.254/latest/meta-data/local-hostname


    if  [ $? -eq 0 ]
    then
        echo "This needs to stop"
    else
        echo "Cant Reach AWS API....GoodJob" 
    fi

    echo -n "IAM Data"
    curl -i http://169.254.169.254/latest/meta-data/iam/info

    if  [ $? -eq 0 ] 
    then
        echo "This needs to stop"
    else
        echo "Cant Reach AWS API....GoodJob"   
    fi     
    sleep 5; 
done
