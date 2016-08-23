#!/bin/sh 

TEST_PATH=$1
TEST_OUT=${TEST_PATH}/test

mkdir -p ${TEST_OUT}

svgdecode()
{
    OUTF=$(basename ${1} .svg)
    echo "TEST: ${OUTF}"
    ${TEST_PATH}/test_decode_svg ${1} > ${TEST_OUT}/${OUTF}.mvg
    #convert mvg:${TEST_OUT}/${OUTF}.mvg png:${TEST_OUT}/${OUTF}.png
}


for SVG in $(ls test/data/*.svg);do
    svgdecode ${SVG}
done

