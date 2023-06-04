#!/bin/bash
# repo_issue.sh collection community-topic version

if [ $# -ne 3 ]
then
    echo "usage: $0 collection_name communiy_topic ansible_version"
    exit 1
fi
echo "Unmaintained collection: Removal from Ansible (community) package

It looks like this collection is effectively unmaintained. According to the current [community guidelines for collections](https://github.com/ansible-collections/overview/blob/main/removal_from_ansible.rst#unmaintained-collections), we will consider removing it in a future version of the Ansible community package. Please see [Unmaintained collection: $1]($2) for more information.

At least one month after this announcement appears here and on [Bullhorn](https://github.com/ansible/community/wiki/News#the-bullhorn), the Ansible Community Steering Committee will vote on whether this collection is considered unmaintained and will be removed, or whether it will be kept. If it will be removed, this will happen earliest in Ansible $3. Please note that people can still manually install the collection with \`ansible-galaxy collection install $1\` even when it has been removed from Ansible."
