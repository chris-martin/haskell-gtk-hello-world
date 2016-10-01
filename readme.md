This is the [hello-world example from the gtk2hs documentation]
(http://projects.haskell.org/gtk2hs/documentation/#hello_world).

There are two Haskell modules here implementing the same application;
one using GTK 2, and the other using GTK 3.

If you're using Nix, `~/.stack/config.yaml` should include this:

```yaml
nix:
  enable: true
```

Gtk2hs requires you to install `gtk2hs-buildtools`, which will end up somewhere
in `~/.stack`:

```bash
stack install gtk2hs-buildtools
```

Then you can build the hello-world executables:

```bash
stack build
```

And run it them:

```
stack exec hello-world-gtk2
stack exec hello-world-gtk3
```
