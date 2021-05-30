pass=P@SSWORD
user=USERNAME
ip=0.0.0.0

RED='\033[0;31m'
NC='\033[0m'

while getopts r:l: flag
do
    case "${flag}" in
        r) remote=${OPTARG};;
        l) local=${OPTARG};;
    esac
done

sshpass -p $pass scp -- $user@$ip:$remote $local
if [ -f "$local" ]; then
  echo -e "[${RED}*${NC}] Downloaded '$remote' from '${RED}$ip${NC}' to '$local'";
fi
