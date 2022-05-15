#! /bin/bash
git pull --recurse-submodules
cd search_engine_crawler/
scripts/build.sh
cd ../
cd search_engine_ui/
scripts/build.sh
cd ../
cd monitoring/
scripts/build.sh
