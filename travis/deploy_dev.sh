#!/usr/bin/env bash

# Where is this script?!
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Set some default parameters
export KUBERNETES_NAMESPACE=ssi-samples-dev

export VERSION=latest

export LEI_ISSUER_IMAGE_TAG=verifycreds/lei-issuer:$VERSION
export GLEIF_IMAGE_TAG=verifycreds/gleif:$VERSION
export ACME_IMAGE_TAG=verifycreds/acme:$VERSION
export IFT_FOUNDER_IMAGE_TAG=verifycreds/ift-founder:$VERSION
export IFT_NETWORK_IMAGE_TAG=verifycreds/ift-network:$VERSION

export ACCOUNT_URL=$DEV_ACCOUNT_URL

export LEI_ISSUER_AGENT_NAME=leiissuer
export LEI_ISSUER_AGENT_PASSWORD=$DEV_LEI_ISSUER_AGENT_PASSWORD

export GLEIF_AGENT_NAME=gleif
export GLEIF_AGENT_PASSWORD=$DEV_GLEIF_AGENT_PASSWORD

export ACME_AGENT_NAME=acme
export ACME_AGENT_PASSWORD=$DEV_ACME_AGENT_PASSWORD

export IFT_FOUNDER_AGENT_NAME=IFTFounder
export IFT_FOUNDER_AGENT_PASSWORD=$DEV_IFT_FOUNDER_AGENT_PASSWORD

export IFT_NETWORK_AGENT_NAME=IFTNetwork
export IFT_NETWORK_AGENT_PASSWORD=$DEV_IFT_NETWORK_AGENT_PASSWORD

export LEI_ISSUER_AGENT_URL=$LEI_ISSUER_AGENT_NAME
export GLEIF_AGENT_URL=$GLEIF_AGENT_NAME
export IFT_FOUNDER_AGENT_URL=$IFT_FOUNDER_AGENT_NAME
export IFT_NETWORK_AGENT_URL=$IFT_NETWORK_AGENT_NAME

# INGRESS_URLs
export CLUSTER_INGRESS_URL=credimi-dev.us-south.containers.appdomain.cloud
export LEI_ISSUER_CLUSTER_INGRESS_URL=lei-issuer-dev.credimi-dev.us-south.containers.appdomain.cloud
export GLEIF_CLUSTER_INGRESS_URL=gleif-dev.credimi-dev.us-south.containers.appdomain.cloud
export ACME_CLUSTER_INGRESS_URL=acme-dev.credimi-dev.us-south.containers.appdomain.cloud
export IFT_FOUNDER_CLUSTER_INGRESS_URL=ift-founder-dev.credimi-dev.us-south.containers.appdomain.cloud
export IFT_NETWORK_CLUSTER_INGRESS_URL=ift-network-dev.credimi-dev.us-south.containers.appdomain.cloud

export LEI_ISSUER_VANITY_URL=lei-issuer.livedemo.verify-creds.com
export GLEIF_VANITY_URL=gleif-dev.livedemo.verify-creds.com
export ACME_VANITY_URL=acme-dev.livedemo.verify-creds.com
export IFT_FOUNDER_VANITY_URL=ift-founder.livedemo.verify-creds.com
export IFT_NETWORK_VANITY_URL=ift-network.livedemo.verify-creds.com

$DIR/deploy.sh
