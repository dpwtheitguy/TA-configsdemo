# README.md
TA-configsdemo

## Description
Use this app for experimenting in your lab with config_file sourcetype. Provides a few examples based on a talk done at the SF Bay Are user group talk. 

## Installation/Platform
Don't install on prod it's a demo app
Splunk Enterprise 8.0.4 tested. Should work on any version of Splunk Enterprise. 
Install on Indexer/Heavy Forwarder restart
Install on Search head and restart
Install on Universal Forwarder, enable inputs and restart

## Usage
Provides examples of inputing config files
Provides templates for props.conf
Has a macro to clear comments from your display
Script examples of how you might script in your data

## History
11.4.2021.1 - dwilson, Initial version for SF User group talk (JIRA-0000) 

## Credits
Daniel Wilson dwilson@voleon.com

## License
None

## TO DO/BUGS
1) Breaks Splunk_TA_nix
