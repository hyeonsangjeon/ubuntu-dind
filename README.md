# ubuntu-dind : 18.04
Using container test bed.
- ubuntu version : 18.04
- docker version : 18.06.0-ce
- expose port : 3000, 443, 80, 22 


##### To run docker, excute this command in a ternimal:
```console
docker run -d -it --name ubuntu1804  -p 8081:3000 -p 8443:443 -p 8080:80 -p 2202:22 --privileged  -v /var/run/docker.sock:/var/run/docker.sock -e TZ=Asia/Seoul modenaf360/ubuntu-dind:18.04 /bin/bash
```

If you want to get into docker container os, excute this command
```console
docker exec -i -t ubuntu1804 /bin/bash
```

or, get into with ssh (custom write in docker container)

```console
1. docker exec -i -t ubuntu1804 /bin/bash
2. passwd root (in docker container)
3. vi /etc/ssh/sshd_config : (in docker container)
   PermitRootLogin yes
4. service ssh restart (in docker container)
```
 
