# PSSnow
[![Build](https://ci.appveyor.com/api/projects/status/60udsra4fombbq7g/branch/main?svg=true)](https://ci.appveyor.com/project/insomniacc/pssnow/branch/main)
[![PSSnow](https://img.shields.io/powershellgallery/v/PSSnow.svg?style=flat-square&label=Powershell%20Gallery)](https://www.powershellgallery.com/packages/PSSnow/)
![powershell gallery](https://img.shields.io/powershellgallery/dt/PSSnow)
[![License](https://img.shields.io/badge/license-GPL&ndash;3.0-blue.svg)](https://github.com/insomniacc/PSSnow/blob/main/LICENSE) 
<img src="https://img.shields.io/badge/supports ps-5.0-blue.svg"></img>
<img src="https://img.shields.io/badge/supports ps-core-blue.svg"></img>
<a href="https://www.buymeacoffee.com/insomniacc"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" height="20px"></a>

## Summary
A powershell module for interacting with the various ServiceNow REST API's.  

This module has a framework built around the Table API allowing it to support any Service-Now instance.  
Focusing on the Table API initially for CRUD operations, this module also supports batch, attachment, import, service catalog and aggregate API's with more to come in future.  
I've built this in my spare time, if you do find it useful I would greatly appreciate any [feedback](https://github.com/insomniacc/PSSnow/issues/new/choose) or [support](https://www.buymeacoffee.com/insomniacc).

<details>
<summary>A bit more...</summary>
This is the first public module I've released so please go easy 😀.<br>
As always, ensure you understand any scripts before you run them and make sure to do your own testing. <br>
If you do find any bugs, it's still early days, so please help me improve and log an issue.  <br>
<br>
I've worked for a few large orgs with vastly different implementations of Service-Now, some more out of the box, others heavily modified. Finding a suitable 'one size fits all' module was quite hard and I ended up building from scratch or improving existing modules in each case. Either way it was very time consuming. Some of the gallery modules out there I found either 1. very lacking in functionality or 2. locked behind a paywall. This repo is hopefully my solution to fill the gap.
</details>

## Key Features

- Handles OAuth auto token renewal
- Pagination is handled automatically
- Provides generic 'template' functions to interact with all tables
- Provides table specific functions with auto-complete
- Batching is as easy as wrapping your existing code with a scriptblock
- Attachments can be passed through without the need to interact with the filesystem
- Service Catalog requests and incidents can be automated
- Filters/Queries can be copied directly from ServiceNow and used in table GET commands
- Dot walking across tables is possible
- Get the variables for a specified RITM  
(values for all fields logged in a request form)

Currently supports following APIs:
 - Table
 - Batch
 - Import
 - Attachment
 - Aggregate
 - ServiceCatalog

## Installation
```powershell
Install-Module -Name PSSnow -Repository PSGallery -Force
```
## Usage
- [User Guide](docs/UserGuide.MD)
- [Function documentation](docs/functions)
- [Function builder](docs/functionBuilder.MD)

## Reporting Issues and Feedback
- [File a bug report](https://github.com/insomniacc/PSSnow/issues/new?assignees=&labels=bug&template=bug_report.md)
- [Raise a feature request](https://github.com/insomniacc/PSSnow/issues/new?assignees=&labels=enhancement&template=feature_request.md)
- [Something else](https://github.com/insomniacc/PSSnow/issues/new/choose)

## Contributing
- [Contributing](/CONTRIBUTING.md)

## Changelog
- [Changelog](/CHANGELOG.md)

## Roadmap
- [Milestones](https://github.com/insomniacc/PSSnow/milestones)