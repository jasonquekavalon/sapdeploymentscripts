gsutil rsync -r -x "\.git.*|setup.sh|README.md" . gs://sapdeployment/
gsutil -D setacl -r public-read gs://sapdeployment/*
gsutil setmeta -h "cache-control:private, max-age=0, no-transform" gs://sapdeployment/*/*
gsutil setmeta -h "cache-control:private, max-age=0, no-transform" gs://sapdeployment/*