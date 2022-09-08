# How to load a custom seccomp profile on a kubernetes node?

This repository contains the source files from the blogpost [How to use seccomp profiles on managed kubernetes clusters](https://solureal.com/blogs/create-seccomp-profile-on-managed-kubernetes-clusters).

For [excellentwebcheck.com](http://excellentwebcheck.com/), I use a Chrome browser to crawl a website and check them for e.g. broken links.
To run Chrome securely, we use a custom seccomp profile that needs to be available on every node pool in the kubernetes cluster.
This is not easy to achieve on managed kubernetes because you generally don't have ssh access and cannot bring your own preconfigured OS image.