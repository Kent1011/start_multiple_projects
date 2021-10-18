npm run start-master &
P1=$!
npm run start-backup &
P2=$!

wait $P1 $P2

# List processes on port 3355 && 3356
# lsof -i :3355 -i 3356

# List process IDs on port 3355 && 3356
# lsof -ti :3355 -ti 3356

# Kill processes on port 3355 & 3356
# lsof -t -i:3355 -t -i:3356 | xargs kill -9