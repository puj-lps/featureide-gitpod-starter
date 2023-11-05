#!/bin/bash

BASEDIR=$(dirname "$0")

/opt/eclipse/eclipse \
    -perspective de.ovgu.featureide.ui.FeatureIDEperspective \
    -data $BASEDIR/workspace \
    &