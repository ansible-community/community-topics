# Ansible Community Scripts
Some scripts that can be used to create Ansible community announcements on [Bullhorn](https://github.com/ansible/community/wiki/News#the-bullhorn) and similar.

## Collection inclusion process
Announce the inclusion of a new collection on Bullhorn:

```shell
# collection_inclusion/bullhorn.sh
usage: collection_inclusion/bullhorn.sh collection_name collection_repo contributor1 contributor1_profile [contributor2 contributor2_profile ...]
# collection_inclusion/bullhorn.sh dellemc.unity https://galaxy.ansible.com/dellemc/unity rajendraindukuri https://github.com/rajendraindukuri anupamaloke https://github.com/anupamaloke
```

## Collection removal process
Create an issue in the collection's repository:

```shell
# removal_process/repo_issue.sh
usage: removal_process/repo_issue.sh collection_name communiy_topic ansible_version
# removal_process/repo_issue.sh cisco.nso https://github.com/ansible-community/community-topics/issues/155 9
```

Announce on Bullhorn that the collection looks unmaintained:

```shell
# removal_process/bullhorn_1st.sh
usage: removal_process/bullhorn_1st.sh collection_name collection_repo communiy_topic repo_issue ansible_version
# removal_process/bullhorn_1st.sh cisco.nso https://github.com/CiscoDevNet/ansible-nso https://github.com/ansible-community/community-topics/issues/155 https://github.com/CiscoDevNet/ansible-nso/issues/10 9
```

Announce the vote to remove the collection on Bullhorn:

```shell
# removal_process/bullhorn_2nd.sh
usage: removal_process/bullhorn_2nd.sh bullhorn_issue collection_name vote ansible_version
# removal_process/bullhorn_2nd.sh 79 cisco.nso https://github.com/ansible-community/community-topics/discussions/165 9
```

Announce upcoming removal on Bullhorn:

```shell
# removal_process/bullhorn_3rd.sh
usage: removal_process/bullhorn_3rd.sh collection_name community_topic ansible_version
# removal_process/bullhorn_3rd.sh cisco.nso https://github.com/ansible-community/community-topics/issues/155 9
```
