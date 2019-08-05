FROM centos:7

WORKDIR '/app'

# Update the package repos and install epel-release
RUN yum makecache
RUN yum install -y epel-release
RUN yum makecache

# Install necessary packages
RUN yum install -y  python-pip \
                    python dev 
RUN export LC_ALL="en_US.UTF-8"

# Install Pelican and dependencies
RUN pip install pelican      \
                markdown    
                #fabric      \
                #ghp-import  \
                #s3cmd       \
                #pyvg        \
                #Pygments    \
                #requests    \
                #webassets   \
                #pillow      \
                #jsmin       \
                #cssmin      \
                #BeautifulSoup4 

EXPOSE 80

CMD ["pelican","--listen","-p","80"]
