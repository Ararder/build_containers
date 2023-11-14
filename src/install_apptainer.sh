sudo apt-get update && sudo apt-get install -y --no-install-recommends \
   build-essential \
   libseccomp-dev \
   pkg-config \
   squashfs-tools \
   cryptsetup \
   curl wget git

sudo add-apt-repository -y ppa:apptainer/ppa
sudo apt update
sudo apt install -y apptainer