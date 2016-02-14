# LWP::Protocol::GHTTP

LWP::Protocol::GHTTP - Provide GHTTP support for [LWP::UserAgent](http://metacpan.org/pod/LWP::UserAgent) via [HTTP::GHTTP](http://metacpan.org/pod/HTTP::GHTTP).

## SYNOPSIS

```perl
use strict;
use warnings;
use LWP::UserAgent;
use LWP::Protocol::GHTTP;

# create a new object
LWP::Protocol::implementor('http', 'LWP::Protocol::GHTTP');
my $ua = LWP::UserAgent->new();
my $res = $ua->get('http://www.example.com');
# note that we can only support the GET HEAD and POST verbs.
```

## DESCRIPTION

This module depends on the [Gnome libghttp](http://ftp.gnome.org/pub/gnome/sources/libghttp) project.  That project is no longer in development.  If you are trying to use this module, you'd likely do better to just use [LWP::Protocol::http](http://metacpan.org/pod/LWP::Protocol::http) or [LWP::Protocol::https](http://metacpan.org/pod/LWP::Protocol::https).

You have been warned.

The [LWP::Protocol::GHTTP](http://metacpan.org/pod/LWP::Protocol::GHTTP) module provides support for using HTTP schemed URLs with LWP.  This module is a plug-in to the LWP protocol handling, but since it takes over the HTTP scheme, you have to tell LWP we want to use this plug-in by calling [LWP::Protocol](http://metacpan.org/pod/LWP::Protocol)'s ```implementor``` function.

This module used to be bundled with [libwww-perl](https://metacpan.org/pod/LWP), but it was unbundled in v6.15 in order to be able to declare its dependencies properly for the CPAN tool-chain. Applications that need GHTTP support can just declare their dependency on [LWP::Protocol::GHTTP](http://metacpan.org/pod/LWP::Protocol::GHTTP) and will no longer need to know what underlying modules to install.

## CAVEATS

It bears repeating:

This module depends on the [Gnome libghttp](http://ftp.gnome.org/pub/gnome/sources/libghttp) project.  That project is no longer in development.  If you are trying to use this module, you'd likely do better to just use [LWP::Protocol::http](http://metacpan.org/pod/LWP::Protocol::http) or [LWP::Protocol::https](http://metacpan.org/pod/LWP::Protocol::https).

## FUNCTIONS

[LWP::Protocol::GHTTP](http://metacpan.org/pod/LWP::Protocol::GHTTP) inherits all functions from [LWP::Protocol](http://metacpan.org/pod/LWP::Protocol) and provides the following
overriding functions.

### request

```perl
my $response = $ua->request($request, $proxy, undef);
my $response = $ua->request($request, $proxy, '/tmp/sss');
my $response = $ua->request($request, $proxy, \&callback, 1024);
```

Dispatches a request over the HTTP protocol, and returns a response object.
Refer to [LWP::UserAgent](http://metacpan.org/pod/LWP::UserAgent) for description of the arguments.

## MAINTAINER

Chase Whitener -- cwhitener@gmail.com

## AUTHOR

Gisle Aas

## BUGS

Please report any bugs or feature requests on [GitHub](https://github.com/genio/lwp-protocol-ghttp/issues).
We appreciate any and all criticism, bug reports, enhancements, or fixes.
