#! /bin/bash
git submodule update --remote --merge
cd search_engine_crawler/
scripts/build.sh
cd ../
cd search_engine_ui/
scripts/build.sh
cd ../
cd monitoring/
scripts/build.sh
cd ../
yc compute instance list |grep monitoring
yc compute instance list |grep crawler
