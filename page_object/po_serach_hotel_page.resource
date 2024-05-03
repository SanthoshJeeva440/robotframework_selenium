*** Settings ***
Documentation       Search Hotel-Page Object


*** Variables ***
# variable name should be in snale case

${search_hotel_text}            css=.login_title    # Search Hotel

${serach_hotel_username}        css=#username_show

${select_location}              css=#location

${select_hotels}                css=#hotels

${select_room_type}             css=#room_type

${select_number_of_rooms}       css=room_nos

${check_in_date}                css=#datepick_in

${check_out_date}               css=#datepick_out

${select_adult_room}            css=#adult_room

${select_child_room}            css=#child_room

${search_button}                css=#Submit

${reset_button}                 css=#Reset

${logout_button}                css=.welcome_menu>a:nth-child(5)

${again_login_button}           css=.reg_success>a
