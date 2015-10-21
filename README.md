# tokumx
Percona TokuMX Dockerfile.

Builds a docker container on top of the latest CentOS (currently 7.1)
and installs TokuMX into it. The database directory can be bind-mounted
from the host.


### Build

    docker build -t "nechpce/tokumx" github.com/nechpce/tokumx


### Usage

#### Run `mongod`

    docker run -d -p 27017:27017 --name mongodb nechpce/tokumx

#### Run `mongod` w/ persistent/shared directory

    docker run -d -p 27017:27017 -v <host-db-dir>:/data/db --name mongodb nechpce/tokumx

#### Run `mongod` w/ HTTP support

    docker run -d -p 27017:27017 -p 28017:28017 --name mongodb nechpce/tokumx mongod --rest --httpinterface

#### Run `mongo`

    docker run -it --rm --link mongodb:mongodb nechpce/tokumx bash -c 'mongo --host mongodb'



### Credits

... go to http://github.com/ankurcha/tokumx for the ubuntu Dockerfile.

