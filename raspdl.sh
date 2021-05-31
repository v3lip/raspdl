#!/bin/bash
RED='\033[0;31m'
LIME='\e[92m'
NC='\033[0m' # No color

pass=PASSWORD
user=USERNAME
ip=0.0.0.0

while getopts r:l: flag
do
    case "${flag}" in
        r) remote=${OPTARG};;
        l) local=${OPTARG};;
    esac
done

if [[ $* == *-r* ]] && [[ $* == *-l* ]]
then
  sshpass -p $pass scp -- $user@$ip:$remote $local
  if [ -f "$local" ]; then
    echo -e "[${RED}*${NC}] Downloaded '${LIME}$remote${NC}' from '${LIME}$user@$ip${NC}' to '${LIME}$local${NC}'";
  fi
else
  echo -e "${LIME}
                                 .___.__
____________    ____________   __| _/|  |
\_  __ \__  \  /  ___/\____ \ / __ | |  |
 |  | \// __ \_\___ \ |  |_> > /_/ | |  |__
 |__|  (____  /____  >|   __/\____ | |____/
            \/     \/ |__|        \/ ${NC}

  - By ${RED}www.github.com/v3lip${NC}
  "
  echo "Options:";
  echo "    -r     remote path";
  echo "    -l     local path";
  echo "";
  echo "Example: ./raspdl.sh -r '/home/username/Downloads/hello.txt' -l 'hello.txt'";
  echo "";
fi
