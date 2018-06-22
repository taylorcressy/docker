FROM tcressy/centos:latest

RUN yum --enablerepo=updates clean metadata

RUN yum install -y java

RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
RUN rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
RUN yum install -y jenkins

RUN mkdir -p /home/jenkins
COPY start-jenkins.sh /home/jenkins/start-jenkins.sh
RUN chown jenkins:jenkins /home/jenkins/start-jenkins.sh
EXPOSE 8080

USER jenkins

ENTRYPOINT ["/home/jenkins/start-jenkins.sh"]