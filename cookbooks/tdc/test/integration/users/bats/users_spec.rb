#!/usr/bin/env bats

@test "Check that group exist" {
    run groups | grep 'tdc_group' ; echo $?
    [ $output = "0" ]
}

@test "Check that user exist" {
    run cat /etc/passwd | grep 'tdc_user' ; echo $?
    [ $output = "0" ]
}

@test "Check that user belong to group" {
    run group 'tdc_user' | grep 'tdc_group' ; echo $?
    [ $output = "0" ]
}