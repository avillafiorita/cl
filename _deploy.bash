#!/usr/bin/env /usr/bin/bash

pushd ~/Sites/cl/_site
rsync -crvz --rsh="ssh -p 20229" --exclude *~ --delete-after --delete-excluded . adolfo@ict4g.net:/srv/http/datascientia_education/cl/
popd
