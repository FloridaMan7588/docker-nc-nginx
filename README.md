# docker-nc-nginx

A Docker container image running Nextcloud with Nginx! This project was created originally to suit my own needs, similarly to my other projects. 
Of course this is also quite the work-in-progress, being that SSL/TLS and updating don't work, or at least aren't set up. I am going to implement SSL functionality at some point, but not now.
If you would like to use the container, simply pull the image from 

``ghcr.io/floridaman7588/nextcloud-nginx:latest``

and run it with 

``docker run -d -p 80:80 -v YOURVOLUME:/var/www/nextcloud ghcr.io/floridaman7588/nextcloud-nginx:latest``

## Environment Variables

As of version 0.1, this image only has one possible variable, though more will be added later.

``ACCESS_LOG`` is used to determine whether Nginx will keep certain logs when some files are accessed. The default value is unset, which equals ``FALSE``, other options are ``TRUE`` and ``FALSE``
