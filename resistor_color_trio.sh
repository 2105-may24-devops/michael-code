#!/usr/bin/env bash

    #registers for temp storage
    reg0=0

    #store number of color in reg0
    color(){
        if [[ $1 == "black" ]]; then
            reg0=0
        elif [[ $1 == "brown" ]]; then
            reg0=1
        elif [[ $1 == "red" ]]; then
            reg0=2
        elif [[ $1 == "orange" ]]; then
            reg0=3
        elif [[ $1 == "yellow" ]]; then
            reg0=4
        elif [[ $1 == "green" ]]; then
            reg0=5
        elif [[ $1 == "blue" ]]; then
            reg0=6
        elif [[ $1 == "violet" ]]; then
            reg0=7        
        elif [[ $1 == "grey" ]]; then
            reg0=8        
        elif [[ $1 == "white" ]]; then
            reg0=9
        else
            echo "invalid color!"
            exit 1
        fi
    }

  main () {    
    #check num args
    if [[ $# -lt 3 ]]; then
      echo "Not enough args!"
      exit 1
    fi

    res=""
    #1st color
    color $1
    if [[ $reg0 -gt 0 ]]; then
        res=$reg0
    fi

    #2nd color
    color $2
    res+=$reg0

    #color 3
    if [[ $res != "0" ]]; then 
        color $3
        if [[ $reg0 -gt 0 ]]; then
            for ((i = 0 ; i < $reg0 ; i++)); do
                res+="0"
            done
        fi
        out=$res" ohms"
        #SI Prefixes
        out=$(echo $out | sed "s/000 / kilo/")
        out=$(echo $out | sed "s/000 kilo/ mega/")
        out=$(echo $out | sed "s/000 mega/ giga/")
    else
        out=$res" ohms"
    fi
    
    echo $out
  }

  # call main with all of the positional arguments
  main "$@"

