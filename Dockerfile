FROM centos:8
MAINTAINER yoannguion <yoannguion@gmail.com>
LABEL "maintainer"="Yoann Guion <yoannguion@gmail.com>"
LABEL "com.github.actions.name"="upload RPM to github"
LABEL "com.github.actions.description"="upload RPM to github on centos 8"
LABEL "com.github.actions.icon"="pocket"
LABEL "com.github.actions.color"="green"

ADD release.sh /
RUN chmod +x /*.sh
CMD ["/release.sh"]
