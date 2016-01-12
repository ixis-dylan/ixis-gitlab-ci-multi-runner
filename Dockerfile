FROM sameersbn/gitlab-ci-multi-runner

MAINTAINER michael.austin@ixis.co.uk

RUN  wget https://github.com/rancher/rancher-compose/releases/download/v0.7.0/rancher-compose-linux-amd64-v0.7.0.tar.gz && \
     tar xzf /home/gitlab_ci_multi_runner/rancher-compose-linux-amd64-v0.7.0.tar.gz && \
     mv /home/gitlab_ci_multi_runner/rancher-compose-v0.7.0/rancher-compose /usr/local/bin/rancher-compose && \
     chmod +x /usr/local/bin/rancher-compose && \
     rm -Rf /home/gitlab_ci_multi_runner/rancher-compose-*
