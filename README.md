# API days workshop



## install environment

On a fresh Ubuntu 24.04 host, run the `./init` script to deploy all
required tools.

This will deploy:

 - HAProxy Community Eddition.
 - Docker
 - jwt (https://github.com/mike-engel/jwt-cli)
 - dvapi (https://github.com/payatu/DVAPI.git)

At the end, dvapi docker is up and running.

To configure the environment you need to open the `conf` file ad setup
a few variables. Check their documentation inside the `conf` file.

A dummy SSL certificate is provided in `_common/ssl/dvapi.pem`. Its
CNAME is api.example.com. Please use your own if you want a valid
certificate.



## Generate solution file

Go into solution and rune the `./gen-solutions` script to generate the
solution file matching your environment.

## Run workshop

Go into workshop and run all scripts.


## Copyright

Copyright (c) 2025 Sébastien Gross

Released under GNU Affero General Public License. See the LICENSE file.
