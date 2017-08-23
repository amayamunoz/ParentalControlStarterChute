# Latency
#
# Chute that adds latency between bridged devices.

# Specify the base image.
FROM paradrop/workshop

# Install dependencies.  You can add additional packages here following the example.
RUN apt-get update

# Install files required by the chute.
#
# ADD <path_inside_repository> <path_inside_container>
#
ADD chute/run.sh /usr/local/bin/run.sh

# This is the command that will be run inside the container.  It can be a bash
# script that runs other commands, a python script, a compiled binary, etc.
CMD ["bash", "/usr/local/bin/run.sh"]
