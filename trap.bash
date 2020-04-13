echo $$
while true; do
  trap 'echo "SIGINT caught!"' SIGINT
done
