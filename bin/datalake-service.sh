#!/bin/bash

# Description: This script manages Docker Compose services for the kami-datalake project. 
# It supports starting, stopping, restarting, reset and rebuild individual services as well as all services collectively.
# Each service is assumed to be defined by a docker-compose.yml file in its own directory within the 'services' directory.
#
#   - To start a service: datalake-service --up/-u <service_name>
#   - To stop a service: datalake-service --down/-d <service_name>
#   - To restart a service: datalake-service --restart/-r <service_name>
#   - To reset a service: datalake-service --reset <service_name>
#   - To rebuild a service: datalake-service --rebuild <service_name>
#   - To perform actions on all services:
#       - Start all services: datalake-service --start-all
#       - Stop all services: datalake-service --stop-all
#       - Restart all services: datalake-service --restart-all
#       - Reset all services: datalake-service --reset-all
#   - To display help: datalake-service --help or datalake-service -h
#
# Options:
#   --up/-u <service_name>     Start the specified service.
#   --down/-d <service_name>      Stop the specified service.
#   --restart/-r <service_name>   Restart the specified service.
#   --reset <service_name>   Reset (run up -d --build) the specified service.
#   --rebuild <service_name>   Rebuild (down -v && up -d --build) the specified service.
#   --start-all                Start all services.
#   --stop-all                 Stop all services.
#   --restart-all              Restart all services.
#   --reset-all              Reset all services.
#   -h, --help                 Display this help message and exit.
#
# Author: Maicon de Menezes
# Creation Date: 07/03/2024
# Version: 0.1.0

SERVICES_DIR="./services"

start_service() {
    local service_name=$1
    echo "Starting $service_name..."
    docker-compose -f "$SERVICES_DIR/$service_name/docker-compose.yml" up -d || {
        echo "Failed to start $service_name. Make sure the service name is correct and Docker is running."
        exit 1
    }
}

stop_service() {
    local service_name=$1
    echo "Stopping $service_name..."
    docker-compose -f "$SERVICES_DIR/$service_name/docker-compose.yml" down || {
        echo "Failed to stop $service_name. Make sure the service name is correct."
        exit 1
    }
}

restart_service() {
    stop_service $1
    start_service $1
}

start_all_services() {
    for dir in $SERVICES_DIR/*/ ; do
        service_name=$(basename $dir)
        start_service $service_name
    done
}

stop_all_services() {
    for dir in $SERVICES_DIR/*/ ; do
        service_name=$(basename $dir)
        stop_service $service_name
    done
}

restart_all_services() {
    stop_all_services
    start_all_services
}

show_help() {
    grep '^#' "$0" | cut -c 4-
}

case "$1" in
    --start) start_service "$2" ;;
    --stop) stop_service "$2" ;;
    --restart) restart_service "$2" ;;
    --start-all) start_all_services ;;
    --stop-all) stop_all_services ;;
    --restart-all) restart_all_services ;;
    -h|--help) show_help ;;
    *)
        echo "Invalid option: $1" >&2
        echo "Try 'datalake-service --help' for more information." >&2
        exit 1
        ;;
esac
