#!/bin/bash

set -eu

ANSIBLE_PLAYBOOK=${ANSIBLE_PLAYBOOK:-$(which ansible-playbook)}
TOBIKO_FLOW_DIR=$(dirname "$(realpath $0)")

TARGET=${1:-}; shift
PLAYBOOK_NAME=${TARGET%.*}
PLAYBOOK_FILE=${TOBIKO_FLOW_DIR}/${PLAYBOOK_NAME}.yml

set -x
"${ANSIBLE_PLAYBOOK}" "${PLAYBOOK_FILE}"
