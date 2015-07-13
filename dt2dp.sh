#!/usr/bin/env bash

echo '{"name": "mackenzie-dgt-dataset",'
echo '"datatheme": { "name": "mackenzie.dgt", "version": "1.0.1", "repository": "https://github.com/tesera/datatheme-mackenzie-dgt.git"},'
echo '"resources": ['
    cat ./schemas/dgt_data.json
    echo ,
    cat ./schemas/dgt_meta.json
echo ']}'