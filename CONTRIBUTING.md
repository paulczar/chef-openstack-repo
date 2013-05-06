# Contributing to Chef for OpenStack

We are glad you want to contribute to Chef for OpenStack! The first step is the desire to improve the project.

You can find the answers to additional frequently asked questions [on the wiki](http://wiki.opscode.com/display/chef/How+to+Contribute).

## The Apache License and the CLA/CCLA

Chef for OpenStack is a community project, yet because we wish to allow others to freely distribute the code under the Apache License, we do require a contributor agreement.

Licensing is very important to open source projects, it helps ensure the software continues to be available under the terms that the author desired. Chef for OpenStack uses the Apache 2.0 license to strike a balance between open contribution and allowing you to use the software however you would like to.

The license tells you what rights you have that are provided by the copyright holder. It is important that the contributor fully understands what rights they are licensing and agrees to them. Sometimes the copyright holder isn't the contributor, most often when the contributor is doing work for a company.

To make a good faith effort to ensure these criteria are met, Opscode requires a Contributor License Agreement (CLA) or a Corporate Contributor License Agreement (CCLA) for all contributions. This is without exception due to some matters not being related to copyright and to avoid having to continually check with our lawyers about small patches.

It only takes a few minutes to complete a CLA, and you retain the copyright to your contribution.

You can complete our contributor agreement (CLA) [online](https://secure.echosign.com/public/hostedForm?formid=PJIF5694K6L). If you're contributing on behalf of your employer, have your employer fill out our [Corporate CLA](https://secure.echosign.com/public/hostedForm?formid=PIE6C7AX856) instead.

Once this project has been incorporated into OpenStack itself, we will use their CLA instead of Opscode's.

## Issue Tracking

Issues with the codebase are currently tracked in GitHub and added to the [CHANGELOG](CHANGELOG.md) when fixed. Issues provide significant historical information, such as:

* Which release a bug fix is included in
* Discussion regarding the design and merits of features
* Error output to aid in finding similar bugs

Each issue should aim to fix one bug or add one feature.

## Using git

For collaboration purposes, it is best if you create a GitHub account and fork the repository to your own account. Once you do this you will be able to push your changes to your GitHub repository for others to see and use.

### Branches and Commits

You should submit your patch as a git branch named after the issue, such as ISSUE-1. This is called a _topic branch_ and allows users to associate a branch of code with the issue.

## Functional and Unit Tests

## Code Reviews

## Release Cycle

The versioning for Chef for OpenStack does not follow [SemVer](http://semver.org/). This is because we follow the release numbers of OpenStack itself, so if a component is versioned X.Y.Z:

* X is a year of the release, such as '2013'.
* Y is a major release, numbered '1' or '2'.
* Z is the release of the component.

Since OpenStack releases twice a year, the 2013.1.0 release would be the first Chef for OpenStack release compatible with the 'Grizzly' release.

## Working with the community

These resources will help you learn more about Chef for OpenStack and connect to other members of our community:

* [chef-openstack](http://groups.google.com/group/opscode-chef-openstack) mailing list
* #openstack-chef IRC channel on irc.freenode.net
* [@chefopenstack](http://twitter.com/chefopenstack) the Chef for OpenStack Twitter
