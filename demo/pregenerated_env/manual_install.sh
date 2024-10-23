#!/usr/bin/env sh
# Copyright 2024 Northern.tech AS
#
#    All Rights Reserved

log_and_execute() {
    # Log the command to stderr
    echo "Executing: $*" >&2

    # Execute the command
    "$@"

    # Check the exit status of the command
    if [ $? -ne 0 ]; then
        echo "Error: Command failed. Stopping script" >&2
        exit 1
    fi
}



log_and_execute mv orch-install/bin/mender-update-orchestrator /usr/bin/

# A modification needed to work on QEMU
# An artifact of doing a manual installation as real installation isn't ready yet
log_and_execute ln -s /usr/lib/ssl-3 /usr/lib/ssl

# Init the default data store
log_and_execute mkdir /data/mender-update-orchestrator
log_and_execute ln -s /data/mender-update-orchestrator /var/lib/mender-update-orchestrator

log_and_execute cp -r orch-install/mock_env/ /data/mender-update-orchestrator/

# Update interfaces
log_and_execute export MOCK_DIR=/data/mender-update-orchestrator/mock_env
log_and_execute cp -r orch-install/share/mender-update-orchestrator  /usr/share/
log_and_execute cp -r orch-install/share/mender  /usr/share/

log_and_execute sed -i "s|^INSTANCE_BASE_DIR=.*|INSTANCE_BASE_DIR=$MOCK_DIR/mock_instances|" /usr/share/mender-update-orchestrator/update-interfaces/v1/gateway
log_and_execute sed -i "s|^INSTANCE_BASE_DIR=.*|INSTANCE_BASE_DIR=$MOCK_DIR/mock_instances|" /usr/share/mender-update-orchestrator/update-interfaces/v1/rtos


printf "\n\033[1mInstall complete.\033[0m \nPlease export the following env variable: \n\n   MOCK_DIR=/data/mender-update-orchestrator/mock_env \n\n"

