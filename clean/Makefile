all: delete create

delete:
	ssh root@191.36.8.4 "bash -s" < rm_docker_all.sh &
	ssh root@191.36.8.5 "bash -s" < rm_docker_all.sh &
	ssh root@191.36.8.6 "bash -s" < rm_docker_all.sh &
	ssh root@191.36.0.115 "bash -s" < rm_docker_all.sh &
	ssh root@191.36.0.116 "bash -s" < rm_docker_all.sh &
	ssh root@191.36.0.117 "bash -s" < rm_docker_all.sh &
	ssh root@200.135.184.91 "bash -s" < rm_docker_all.sh &
	ssh root@200.135.184.92 "bash -s" < rm_docker_all.sh &
	ssh root@200.135.184.93 "bash -s" < rm_docker_all.sh &
	ssh root@191.36.8.4 rm -rf /var/lib/rook &
	ssh root@191.36.8.5 rm -rf /var/lib/rook &
	ssh root@191.36.8.6 rm -rf /var/lib/rook &
	ssh root@191.36.0.115 rm -rf /var/lib/rook &
	ssh root@191.36.0.116 rm -rf /var/lib/rook &
	ssh root@191.36.0.117 rm -rf /var/lib/rook &
	ssh root@200.135.184.91 rm -rf /var/lib/rook &
	ssh root@200.135.184.92 rm -rf /var/lib/rook &
	ssh root@200.135.184.93 rm -rf /var/lib/rook &

create:

