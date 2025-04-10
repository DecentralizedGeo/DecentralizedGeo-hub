# Getting Started with the Web3 Geospatial Dashboard

This guide will help you get started with the <a href="https://github.com/DecentralizedGeo/web3-geo-dashboard" target="_blank">Web3 Geospatial Dashboard</a>, and its complementary components--a suite of tools to explore and interface with geospatial data stored on IPFS and delineated on an <a href="https://github.com/easierdata/stac-fastapi" target="_blank">IPFS enriched STAC API</a>. This page will not walk through setting up the STAC API, for more details, check out its documentation.

## What is the Web3 Geospatial Dashboard?

The Web3 Geospatial Dashboard and its components (dashboard API, and chrome extension) lower the barrier for entry for end-users to visualize and interface with data stored on IPFS and referenced on a STAC API. The API exposed a REST interface that acts as a service that bridges filecoin data from block explorers to the dashboard. Lastly, the chrome extension allows basic interactions (ex. button clicks) to invoke requests that hit the <a href="https://docs.ipfs.tech/reference/kubo/rpc/" target="_blank">Kubo RPC API</a> exposed by IPFS nodes.

## Quick Start

### Pulling the repositories

To get pull the <a href="https://github.com/DecentralizedGeo/web3-geo-dashboard" target="_blank">Dashboard Repository</a> and <a href="https://github.com/DecentralizedGeo/web3-geo-extension" target="_blank">Chrome Extension</a> into folders.

### Setting up development environment for dashboard

To get a local server running the dashboard,

1. First create a terminal in the root directory of the Dashboard repository and install the libraries with `npm install`

2. To run the development server, run `npm run dev`

### Node Configuration

In order to properly fetch metadata from IPFS such as the number of nodes that have a CID pinned as well as other interactions, you must have a properly configured IPFS node. To accept requests from the dashboard, update the `Access-Control-Allow-Origin` array under `HTTPHeaders` under `API`. For local development, add `http://127.0.0.1`, alternatively, you can accept requests from everywhere with `*` (this poses a security risk, do it at your own discretion)

Check out the <a href="https://docs.ipfs.tech/concepts/ipfs-desktop/" target="_blank">IPFS Desktop Setup guide</a> for more details on how to set up a local IPFS node on your machine using IPFS Desktop.

### Adding the extension

To add the extension, you must first <a href="https://developer.chrome.com/docs/extensions/get-started/tutorial/hello-world#load-unpacked" target="_blank">enable developer mode</a> on Chrome.

1. Click on **Load Unpacked**
2. Locate the folder in which the chrome extension was pulled.

Check out the [Configure Browser Extension guide](how-to-setup-extension.md) for more details on how to set up the extension.

## Getting Help

If you have questions or run into issues with the API, please:

1. Create an issue in the <a href="https://github.com/DecentralizedGeo/web3-geo-dashboard" target="_blank">GitHub repository</a>

2. Reach out to the team through <a href="https://github.com/DecentralizedGeo" target="_blank">our community channels</a>
