# NAME

LWP::Protocol::GHTTP - (DEPRECATED) Provide GHTTP support for [LWP::UserAgent](https://metacpan.org/pod/LWP::UserAgent) via [HTTP::GHTTP](https://metacpan.org/pod/HTTP::GHTTP).

# SYNOPSIS

    use strict;
    use warnings;
    use LWP::UserAgent;

    # create a new object
    LWP::Protocol::implementor('http', 'LWP::Protocol::GHTTP');
    my $ua = LWP::UserAgent->new();
    my $res = $ua->get('http://www.example.com');
    # note that we can only support the GET HEAD and POST verbs.

# DESCRIPTION

This module depends on the GNOME libghttp
[http://ftp.gnome.org/pub/gnome/sources/libghttp](http://ftp.gnome.org/pub/gnome/sources/libghttp) project. That project is no
longer in development.  If you are trying to use this module, you'd likely do
better to just use [LWP::Protocol::http](https://metacpan.org/pod/LWP::Protocol::http) or [LWP::Protocol::https](https://metacpan.org/pod/LWP::Protocol::https).

[LWP::Protocol::GHTTP](https://metacpan.org/pod/LWP::Protocol::GHTTP) is only capable of dispatching requests using the `GET`,
`POST`, or `HEAD` verbs.

You have been warned.

The [LWP::Protocol::GHTTP](https://metacpan.org/pod/LWP::Protocol::GHTTP) module provides support for using HTTP schemed URLs
with LWP.  This module is a plug-in to the LWP protocol handling, but since it
takes over the HTTP scheme, you have to tell LWP we want to use this plug-in by
calling [LWP::Protocol](https://metacpan.org/pod/LWP::Protocol)'s `implementor` function.

This module used to be bundled with [libwww-perl](https://metacpan.org/pod/libwww-perl), but it was unbundled in
v6.16 in order to be able to declare its dependencies properly for the CPAN
tool-chain. Applications that need GHTTP support can just declare their
dependency on [LWP::Protocol::GHTTP](https://metacpan.org/pod/LWP::Protocol::GHTTP) and will no longer need to know what
underlying modules to install.

# CAVEATS

WARNING!

This module depends on the GNOME libghttp
[http://ftp.gnome.org/pub/gnome/sources/libghttp](http://ftp.gnome.org/pub/gnome/sources/libghttp) project. That project is no
longer in development.  If you are trying to use this module, you'd likely do
better to just use [LWP::Protocol::http](https://metacpan.org/pod/LWP::Protocol::http) or [LWP::Protocol::https](https://metacpan.org/pod/LWP::Protocol::https).

Also, [LWP::Protocol::GHTTP](https://metacpan.org/pod/LWP::Protocol::GHTTP) is only capable of dispatching requests using the `GET`,
`POST`, or `HEAD` verbs.

# FUNCTIONS

[LWP::Protocol::GHTTP](https://metacpan.org/pod/LWP::Protocol::GHTTP) inherits all functions from [LWP::Protocol](https://metacpan.org/pod/LWP::Protocol) and provides the following
overriding functions.

## request

    my $response = $ua->request($request, $proxy, undef);
    my $response = $ua->request($request, $proxy, '/tmp/sss');
    my $response = $ua->request($request, $proxy, \&callback, 1024);

Dispatches a request over the HTTP protocol and returns a response object.
Refer to [LWP::UserAgent](https://metacpan.org/pod/LWP::UserAgent) for description of the arguments.

# AUTHOR

Gisle Aas <`gisle@ActiveState.com`>

# CONTRIBUTORS

- Chase Whitener <`capoeirab@cpan.org`>

# BUGS

Please report any bugs or feature requests on GitHub [https://github.com/genio/lwp-protocol-ghttp/issues](https://github.com/genio/lwp-protocol-ghttp/issues).
We appreciate any and all criticism, bug reports, enhancements, or fixes.

# LICENSE AND COPYRIGHT

Copyright 1997-2011 Gisle Aas.

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.
