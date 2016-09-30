This is the [hello-world example from the gtk2hs documentation]
(http://projects.haskell.org/gtk2hs/documentation/#hello_world).

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

Then you can build `hello-world`:

```bash
stack build
```

And run it:

```
stack exec hello-world
```
