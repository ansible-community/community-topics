#!/bin/bash
# bullhorn_2nd.sh collection community-topic version

if [ $# -ne 4 ]
then
    echo "usage: $0 bullhorn_issue collection_name vote ansible_version"
    exit 1
fi

echo "As mentioned in [The Bullhorn #$1](https://mailchi.mp/redhat/the-bullhorn-$1), we consider \`$2\` an effectively unmaintained collection. Therefore, we've opened a community / steering committee [vote]($3) on removing it from the Ansible $4 community package.

Please note that you can still manually install the collection with \`ansible-galaxy collection install $2\` even when it has been removed from Ansible."
