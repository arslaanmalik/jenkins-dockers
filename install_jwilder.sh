#run the jwilder/nginx-proxy on docker container port 80 
# https://hub.docker.com/r/jwilder/nginx-proxy/

docker container run -d -p 80:80 --restart always -v /var/run/docker.sock:/tmp/docker.sock:ro --name jwilder/nginx jwilder/nginx-proxy

# show endpoint
echo 'Jwilder/nginx installed'
echo 'You should now be able to access jwilder/nginx at: http://'$(curl -s ifconfig.co)':80'


#Then start any containers you want proxied with an env var VIRTUAL_HOST=subdomain.youdomain.com
# docker run -e VIRTUAL_HOST=foo.bar.com  ...
