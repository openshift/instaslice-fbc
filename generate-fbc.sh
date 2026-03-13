#!/bin/sh

for OCP_VERSION in v4.16; do
    opm alpha render-template $OCP_VERSION/catalog-template.yaml > $OCP_VERSION/catalog/instaslice-operator/catalog.json;
done

for OCP_VERSION in v4.17 v4.18 v4.19 v4.20 v4.21; do
    opm alpha render-template $OCP_VERSION/catalog-template.yaml --migrate-level=bundle-object-to-csv-metadata > $OCP_VERSION/catalog/instaslice-operator/catalog.json;
done