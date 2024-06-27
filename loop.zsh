current_time() {
   echo $(date +%s000)
}

# start_date=$(current_time)

for i in {1..6};
do
   # echo $i
   curl -d '{"user_name": "", "password": ""}' -H 'Content-Type: application/json' -X POST 'http://localhost:3000/login' -w "%{time_total}s ${i}\n" &
   # sleep 1.5
done

# end_date=$(current_time)

# echo $((start_date - end_date))

echo "Loop is completed"

# loadtest -P '{"user_name": "", "password": ""}' -n 1000 --rps 100 -T 'application/json' 'http://localhost:3000/login'





