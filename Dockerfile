FROM  node:0.12
MAINTAINER rafal.filipek@gmail.com

RUN sudo apt-get update
RUN sudo apt-get install ruby ruby-dev rpm
ADD http://production.cf.rubygems.org/rubygems/rubygems-2.4.6.tgz /tmp/
RUN sudo tar -xf /tmp/rubygems-2.4.6.tgz
RUN sudo /usr/bin/ruby rubygems-2.4.6/setup.rb
RUN sudo gem1.8 install fpm  
