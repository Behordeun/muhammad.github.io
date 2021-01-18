#! /bin/sh

rm -rf node_modules package-lock.json
npm install bootstrap@4 jquery@3 prefixfree@1

rm -rf _sass/bootstrap
mkdir -p _sass/bootstrap
cp -r node_modules/bootstrap/scss/* _sass/bootstrap
touch _sass/bootstrap/__DO_NOT_MODIFY

rm -rf assets/javascript/bootstrap
mkdir -p assets/javascript/bootstrap
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.* assets/javascript/bootstrap/
cp node_modules/jquery/dist/jquery.min.* assets/javascript/bootstrap/
cp node_modules/prefixfree/prefixfree.min.js assets/javascript/bootstrap/
touch assets/javascript/bootstrap/__DO_NOT_MODIFY
