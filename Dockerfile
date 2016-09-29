FROM ronanguilloux/debianeo:latest
MAINTAINER Ronan Guilloux <ronan.guilloux@gmail.com>

# Add some utilities
ADD docker/pim-download.sh /usr/local/bin/pim-download
ADD docker/pim-cac.sh /usr/local/bin/pim-cac
ADD docker/pim-in-ass.sh /usr/local/bin/pim-in-ass
ADD docker/pim-initialize.sh /usr/local/bin/pim-initialize
ADD docker/run.sh /usr/local/bin/run
RUN sudo chmod +x /usr/local/bin/*

ADD docker/akeneo.local.conf /etc/apache2/sites-available/000-default.conf
RUN pim-download
RUN pim-initialize
CMD ["sudo", "run"]
