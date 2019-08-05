# techblog

# Build the container
docker build -t pelican .

# Run the container
docker run -di -p 80:80 -v $(pwd):/app --name pelican pelican

# Edit your website
