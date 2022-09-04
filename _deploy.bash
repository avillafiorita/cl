#!/usr/bin/env /usr/bin/bash

pushd ~/Sites/cl-2022/_site
rsync -crvz --rsh="ssh -p 20229" --exclude *~ --delete-after --delete-excluded . adolfo@ict4g.net:/srv/http/datascientia_education/cl-2022/
popd
