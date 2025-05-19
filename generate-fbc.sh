#!/bin/sh

for OCP_VERSION in v4.16; do
    opm alpha render-template semver $OCP_VERSION/catalog-template.yaml > $OCP_VERSION/catalog/instaslice-operator/catalog.json;
done

for OCP_VERSION in v4.17 v4.18 v4.19; do
    opm alpha render-template semver $OCP_VERSION/catalog-template.yaml --migrate-level=bundle-object-to-csv-metadata > $OCP_VERSION/catalog/instaslice-operator/catalog.json;
done