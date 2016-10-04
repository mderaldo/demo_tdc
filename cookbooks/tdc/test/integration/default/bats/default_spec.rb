#!/usr/bin/env bats

@test "Check that timezone is US/Pacific-New" {
    run cat /etc/timezone | grep 'US/Pacific-New' ; echo $?
    [ $output = "0" ]
}