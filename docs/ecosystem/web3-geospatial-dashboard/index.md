---
id: dashboard-introduction
title: Web3 Geospatial Dashboard Introduction
sidebar_label: Introduction
slug: /docs
---

## Web3 Geospatial Dashboard

This project renders spatial geometry defined by GeoJSON assets and Web3 enriched STAC APIs. By default, The EASIER Data Initiative has opened up a STAC API with Landsat 9 metadata loaded. The motivation behind this project is to showcase how decentralized technology such as IPFS and Filecoin can cultivate an open ecosystem for data exploration and management. Coupled with other tools that complement this dashboard such as the chrome extension and IPFS-STAC, the suite of tools offer effortless integration to Python programs and other applications within the IPFS ecosystem.

With the suite of tools that complement the dashboard, users can:

- View GeoJSON topology
- View pinning status of data on IPFS
- View asset metadata of scenes from a web3 enriched STAC API
- Hotswap STAC APIs
- Pin data
- Download Data
- Export selected subsets to GeoJSON
- Export NASA VEDA frontmatter templates

## Documentation

- [Getting started](./getting-started.md)
- [Prerequisites](./prerequisites.md)
- [Technology Stack](./tech-stack.md)
- [Featires](./features.md)

## Useful Links

|                                   Name                                    | Description                                                       |
| :-----------------------------------------------------------------------: | ----------------------------------------------------------------- |
|        [Kubo RPC API](https://docs.ipfs.tech/reference/kubo/rpc/)         | Documentation for the API opened by IPFS nodes running Kubo       |
| [IPFS Desktop Installation](https://docs.ipfs.tech/install/ipfs-desktop/) | Installation for IPFS Desktop, to easily spin up an IPFS node     |
|  [Web3 Geo Extension](https://github.com/DecentralizedGeo/web3-geo-extension)   | Repository of complementary dashboard chrome extension (REQUIRED) |
| [Web3 Dashboard API](https://github.com/DecentralizedGeo/easier-dashboard-api)  | Repository of API that serves IPFS metadata                       |
|                    [VEDA Integration](./docs/veda.md)                     | Walkthrough of exporting NASA VEDA Frontmatter                    |


