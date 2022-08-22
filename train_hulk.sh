#block(name=[PointContrast], threads=10, memory=48000, subtasks=1, gpus=1, hours=300)
docker-compose run --rm pretrain bash ./scripts/ddp_local.sh

