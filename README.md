Instructions
============

Install 'stack'
---------------

See 'stack' install instructions [here](https://docs.haskellstack.org/en/stable/README/) 


Setup 'stack'
---------------

```sh
stack setup
```


Build
-----

```sh
git clone https://github.com/ababkin/random.git
cd random
stack install
```

this will install the `random` executable into your `~/.local/bin`, so make sure it is in your path


Run
---

```sh
random
```

the output will be continuously producing the desirable random sequence
