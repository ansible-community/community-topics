#!/bin/bash
# bullhorn.sh collection github-repo contributor1 contributor1_profile [contributor2 contributor2_profile ...]

if [ $# -lt 4 ] || [ $(($# % 2)) -ne 0 ]
then
    echo "usage: $0 collection_name collection_repo contributor1 contributor1_profile [contributor2 contributor2_profile ...]"
    exit 1
fi

echo -n "The [$1]($2) collection has passed the [Collection inclusion procedure](https://github.com/ansible-collections/ansible-inclusion#readme) and will be included in the next minor release of Ansible. Thanks to [$3]($4)"

shift 4

while [ $# -gt 2 ]
do
    echo -n ", [$1]($2)"
    shift 2
done

if [ $# -gt 0 ]
then
    echo -n " and [$1]($2)"
fi

echo " for the contribution!"
