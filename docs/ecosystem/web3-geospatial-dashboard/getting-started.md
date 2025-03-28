# Getting Started with the Web3 Geospatial Dashboard

This guide will help you get started with the [Web3 Geospatial Dashboard](https://github.com/DecentralizedGeo/web3-geo-dashboard){:target="_blank"}, and its complementary components--a suite of tools to explore and interface with geospatial data stored on IPFS and delineated on an [IPFS enriched STAC API](https://github.com/easierdata/stac-fastapi){:target="_blank"}. This page will not walk through setting up the STAC API, for more details, check out its documentation.

## What is the Web3 Geospatial Dashboard?

The Web3 Geospatial Dashboard and its components (dashboard API, and chrome extension) lower the barrier for entry for end-users to visualize and interface with data stored on IPFS and referenced on a STAC API. The API exposed a REST interface that acts as a service that bridges filecoin data from block explorers to the dashboard. Lastly, the chrome extension allows basic interactions (ex. button clicks) to invoke requests that hit the [Kubo RPC API](https://docs.ipfs.tech/reference/kubo/rpc/) exposed by IPFS nodes.

## Quick Start

### Pulling the repositories

To get pull the [Dashboard Repository](https://github.com/DecentralizedGeo/web3-geo-dashboard) and [Chrome Extension](https://github.com/DecentralizedGeo/web3-geo-extension) into folders.

### Adding the extension

To add the extension, you must first [enable developer mode](https://developer.chrome.com/docs/extensions/get-started/tutorial/hello-world#load-unpacked) on Chrome.

1. Click on **Load Unpacked**
2. Locate the folder in which the chrome extension was pulled.

### Setting up development environment for dashboard

To get a local server running the dashboard, 
1. First create a terminal in the root directory of the Dashboard repository and install the libraries with `npm install`
2. To run the development server, run `npm run dev`

### Node Configuration

In order to properly fetch metadata from IPFS such as the number of nodes that have a CID pinned as well as other interactions, you must have a properly configured IPFS node. To accept requests from the dashboard, update the `Access-Control-Allow-Origin` array under `HTTPHeaders` under `API`. For local development, add `http://127.0.0.1`, alternatively, you can accept requests from everywhere with `*` (this poses a security risk, do it at your own discretion)

## Getting Help

If you have questions or run into issues with the API, please:

1. Create an issue in the [GitHub repository](https://github.com/DecentralizedGeo/web3-geo-dashboard)
2. Reach out to the team through [our community channels](https://github.com/DecentralizedGeo/web3-geo-dashboard)