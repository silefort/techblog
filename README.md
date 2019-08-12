# techblog

# Build the container
docker build -t pelican .

# Run your development container
docker run --rm -di -p 80:80 -v $(pwd):/app --name pelican pelican

# Quickstart your website (only once)
docker exec -ti pelican pelican-quickstart

# Update your website
docker exec pelican pelican content -o output -s publishconf.py
