# techblog

# Build the container
docker build -t pelican .

# Quickstart your website
docker run --rm -di -p 80:80 -v $(pwd):/app --name pelican pelican pelican-quickstart

# Run your development container
docker run -di -p 80:80 -v $(pwd):/app --name pelican pelican

# Update your website
docker exec pelican pelican content -o output -s publishconf.py
