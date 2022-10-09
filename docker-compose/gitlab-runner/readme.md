- 启动方式

```
// 执行注册流程
docker exec -it gitlab-runner bash
gitlab-runner register
// 在交互式终端中填入 Git Lab 提供的 URL 和 token
[root@localhost-0002 GitLabRunner]# docker exec -it 8afd63e9abbb bash
root@8afd63e9abbb:/# gitlab-runner register
Runtime platform                                    arch=amd64 os=linux pid=33 revision=58272c27 version=12.7.0
Running in system-mode.                            
                                                   
Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
http://192.168.0.123:1230/
Please enter the gitlab-ci token for this runner:
i6aQMeza7Hxa1t_bAjzT
Please enter the gitlab-ci description for this runner:
[8afd63e9abbb]: 
Please enter the gitlab-ci tags for this runner (comma separated):

Registering runner... succeeded                     runner=i6aQMeza
Please enter the executor: custom, docker, docker-ssh, shell, docker+machine, docker-ssh+machine, kubernetes, parallels, ssh, virtualbox:
docker
Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded! 
docker:19.03.8
// 这里跳过了 description 与 tags ，tags表示什么时候触发，为空表示任何时候都触发，deploy表示部署时触发，下面是执行器，这里填入 docker
// 回到 GitLab ，可以看到已经注册成功
/usr/local/bin/docker-compose -f /data/composefile/GitLabRunner/docker-compose.yml down
docker system prune -f --volumes
/usr/local/bin/docker-compose -f /data/composefile/GitLabRunner/docker-compose.yml up -d

docker exec -it gitlab-runner sh
gitlab-runner --help
gitlab-runner restart
cat /etc/gitlab-runner/config.toml
vi /etc/gitlab-runner/config.toml
privileged = true
volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/cache"]
vi config.toml

```