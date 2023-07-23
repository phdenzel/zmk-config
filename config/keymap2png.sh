#!/bin/bash

KMFILE="${1:-splitkb_aurora_corne.keymap}"
BASENAME="${KMFILE%.*}"

keymap parse -z ${BASENAME}.keymap > ${BASENAME}.yaml \
    && keymap draw ${BASENAME}.yaml > ${BASENAME}.svg \
    && convert ${BASENAME}.svg ${BASENAME}.png \
    && rm ${BASENAME}.yaml ${BASENAME}.svg
