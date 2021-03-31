FROM cimafoundation/deps-deploy

RUN mkdir -p /wpswd

WORKDIR /wpswd

RUN mkdir inputs

ADD common-start.sh common-start.sh
ADD wrfda-runner wrfda-runner
ADD wrfda-runner.cfg wrfda-runner.cfg

CMD bash -c "echo 'this docker is built as a common ancestor of any WPS docker \(eg wps.gfs or wps.ifs ecc.\)'"