run:
	sudo docker-compose -p vet_app -f docker-compose.local.yml up

migrations:
	sudo docker-compose -p vet_app -f docker-compose.local.yml run --rm django python manage.py makemigrations

migrate:
	sudo docker-compose -p vet_app -f docker-compose.local.yml run --rm django python manage.py makemigrate

makemessages:
	sudo docker-compose -p vet_app -f docker-compose.local.yml run --rm django python manage.py makemessages -a

compilemessages:
	sudo docker-compose -p vet_app -f docker-compose.local.yml run --rm django python manage.py compilemessages

build:
	sudo docker-compose -p vet_app -f docker-compose.local.yml build

test:
	sudo docker-compose -p vet_app -f docker-compose.local.yml run --rm django pytest -n 4

shell:
	sudo docker-compose -p vet_app -f docker-compose.local.yml run --rm django python manage.py shell

cleardocker:
	sudo docker-compose -p vet_app -f docker-compose.local.yml down --remove-orphans --rmi all

bash:
	sudo docker exec -it vet_app_backend_local_django /bin/bash

