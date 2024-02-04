# Ansible Community Scripts
Some scripts that can be used to create Ansible community announcements on [Bullhorn](https://forum.ansible.com/c/news/bullhorn/17) and similar.

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
# removal_process/repo_issue.sh inspur.sm https://forum.ansible.com/t/2854 11
```

Announce on Bullhorn that the collection looks unmaintained:

```shell
# removal_process/bullhorn_1st.sh
usage: removal_process/bullhorn_1st.sh collection_name collection_repo communiy_topic repo_issue ansible_version
# removal_process/bullhorn_1st.sh inspur.sm https://github.com/ISIB-Group/inspur.sm https://forum.ansible.com/t/2854 https://github.com/ISIB-Group/inspur.sm/issues/59 11
```

Announce the vote to remove the collection on Bullhorn:

```shell
# removal_process/bullhorn_2nd.sh
usage: removal_process/bullhorn_2nd.sh bullhorn_issue collection_name vote ansible_version
# removal_process/bullhorn_2nd.sh https://forum.ansible.com/t/2960 inspur.sm https://forum.ansible.com/t/2854 11
```

Announce upcoming removal on Bullhorn:

```shell
# removal_process/bullhorn_3rd.sh
usage: removal_process/bullhorn_3rd.sh collection_name community_topic ansible_version
# removal_process/bullhorn_3rd.sh inspur.sm https://forum.ansible.com/t/2854 11
```
