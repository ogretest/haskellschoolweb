HaskellSchoolWeb
================

[Haskell School][haskellschool] website.

[haskellschool]: http://www.haskellschool.org

# Prerequisite

Install `yesod-bin`.

```
stack build yesod-bin cabal-install --install-ghc
```

# Build

```
stack build
```

# Devel Server

```
stack exec -- yesod devel
```

The server listens on http://localhost:3000/

# Run

```
stack exec haskellschoolweb
```

