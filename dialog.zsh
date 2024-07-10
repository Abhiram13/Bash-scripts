# declare -a dia=()
# declare -a names=()

# # for each index in the list
# for index in "${!array[@]}"; do
#   dia+=("$index" "${array[index]}")
#   names+=("$index" "something_$index")
# done

# # echo ${dia[@]}

# choice=$(
#   dialog --menu "MENU" 0 0 0 "${dia[@]}" \
#     3>&1 1>&2 2>&3 3>&- # Swap stdout with stderr to capture returned dialog text
# )

# echo "this choise is $choice"
# dialog_rc=$? # Save the dialog return code

# # clear # restore terminal background and clear

# case $dialog_rc in
#   0)
#     printf 'Your choice was: %s\n' "${names[choice]}"
#     ;;
#   1)
#     echo 'Cancelled menu'
#     ;;
#   255)
#     echo 'Closed menu without choice'
#     ;;
#   *)
#     printf 'Unknown return code from dialog: %d\n' $dialog_rc >&2
#     ;;
# esac