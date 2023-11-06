#!/bin/bash
# Run Eclipse using the FeatureIDE perspective

# Eclipe command line options
# - see: https://help.eclipse.org/latest/index.jsp?topic=%2Forg.eclipse.platform.doc.isv%2Freference%2Fmisc%2Fruntime-options.html

BASEDIR=$(dirname "$0")

/opt/eclipse/eclipse \
    -perspective de.ovgu.featureide.ui.FeatureIDEperspective \
    -data $BASEDIR/workspace \
    &