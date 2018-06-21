#!/bin/bash

PPT_EN=ppt_en.pptx
PPT_EN_MD5=83a4f88c9217929a1bcbca1486b34489
TEMPDIR=temp
OUTDIR=img

if [[ -n `which md5sum 2>/dev/null` ]]; then
    if [[ `md5sum ${PPT_EN} | awk '{print $1}'` != ${PPT_EN_MD5} ]]; then
	echo "The hash value is inconsistent. Extraction may fail..." >&2
    fi
fi

rm -r ${TEMPDIR}
mkdir -p ${TEMPDIR} ${OUTDIR}
unzip ${PPT_EN} -d ${TEMPDIR}
cp ${TEMPDIR}/ppt/media/image5.png ${OUTDIR}/sakura.png
cp ${TEMPDIR}/ppt/media/image2.png ${OUTDIR}/ribbon_small.png
cp ${TEMPDIR}/ppt/media/image3.png ${OUTDIR}/ribbon_big.png
