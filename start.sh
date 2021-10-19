# stdout 跟 stderr 合併成一個 log file.
# npm run start-master >server1-mix.log 2>&1 &
# npm run start-backup >server2-mix.log 2>&1 &

# stdout 跟 stderr 分別指定不同 log file.
npm run start-master 1>server1-out.log 2>server1-err.log &
npm run start-backup 1>server2-out.log 2>server2-err.log &

# List processes on port 3355 && 3356
# lsof -i :3355 -i 3356

# List process IDs on port 3355 && 3356
# lsof -ti :3355 -ti 3356

# Kill processes on port 3355 & 3356
# lsof -t -i:3355 -t -i:3356 | xargs kill -9
