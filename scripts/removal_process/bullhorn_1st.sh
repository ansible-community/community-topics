#!/bin/bash
# bullhorn_1st.sh collection github-repo community-topic repo-issue version

if [ $# -ne 5 ]
then
    echo "usage: $0 collection_name collection_repo communiy_topic repo_issue ansible_version"
    exit 1
fi

echo "It looks like the [$1]($2) collection is effectively unmaintained. According to the current [community guidelines for collections](https://github.com/ansible-collections/overview/blob/main/removal_from_ansible.rst#unmaintained-collections), we consider removing it in a future version of the Ansible community package. Please see [Unmaintained collection: $1]($3) for more information or to announce that you're interested in taking over the maintenance of (a fork of) \`$1\`.

At least one month after this announcement appears here and in the [collection's issue tracker]($4), the Ansible Community Steering Committee will vote on whether this collection is considered unmaintained and will be removed, or whether it will be kept. If it will be removed, this will happen earliest in Ansible $5. Please note that you can still manually install the collection with \`ansible-galaxy collection install $1\` even when it has been removed from Ansible."
