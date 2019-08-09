#!/bin/bash
source ./vars.sh
echo "#!/bin/bash" > login.sh
echo "service ssh start" >> login.sh
echo "sudo -u ${domain}.${alias} -i" >> login.sh
echo "" >> login.sh
docker build --no-cache -t yuwu1-espnet-py27-img \
             --build-arg uid=$uid \
             --build-arg did=$did \
             --build-arg alias=$alias \
             --build-arg domain=$domain \
             -f Dockerfile . 
