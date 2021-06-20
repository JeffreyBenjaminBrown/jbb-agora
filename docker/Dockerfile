FROM debian:latest

RUN echo "2021 06 20"
RUN apt update --fix-missing -y && apt upgrade -y
RUN apt install -y	\
  build-essential	\
  curl			\
  dpkg			\
  git			\
  grep			\
  libmemcached-dev	\
  lsb-release		\
  make			\
  python-wheel		\
  python3		\
  python3-pip		\
  python3-venv		\
  sed			\
  unzip			\
  wget			\
  zip

# Install NodeJS and NPM, following
# https://github.com/nodesource/distributions/blob/master/README.md#debinstall
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs


#### #### #### #### #### #### #### #### #### #### #### ####
#### ####      No more installs, just config      #### ####
#### #### #### #### #### #### #### #### #### #### #### ####

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/conda/bin:$PATH

# So that the container runs without root privileges on the host.
# PITFALL: This might only work when run by a user whose uid is 1000.
# If so, the 1000 below should probably be changed to match the user's id.
RUN groupadd -g 999 appuser               && \
    useradd -r -u 1000 -g appuser appuser && \
    mkdir /home/appuser                   && \
    chown appuser /home/appuser
USER appuser

ENV TZ="America/Bogota"

RUN PATH=/root/.local/bin:$PATH
EXPOSE 8888
CMD ["/bin/bash"]
