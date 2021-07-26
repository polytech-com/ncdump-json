# In terminal, run "chmod u+x ./nc-to-json-converter.sh"
SOURCE_FILENAME=tests/breathe-grid.nc
RESULT=$(docker run -it --rm -v ${PWD}/${SOURCE_FILENAME}:/data/breathe-grid.nc ncdump-json -j /data/breathe-grid.nc)
JSON_FILENAME=breathe-grid.json
PRETTIFIED_JSON=breathe-grid-prettified.json
echo "${RESULT}" >> ${JSON_FILENAME}
jq '.' ${JSON_FILENAME} >> ${PRETTIFIED_JSON}