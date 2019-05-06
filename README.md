# Cuneiform book cuneifier

This is a converter from transliterated syllables from the pp. 102-103 of the book [**cuneiform**](https://www.britishmuseumshoponline.org/cuneiform.html) (ISBN: 978-0-7141-1188-9), implemented in [OpenGRM Thrax](http://www.opengrm.org/twiki/bin/view/GRM/Thrax). It is licensed under [Apache 2.0 License](LICENSE).

# How to use

_Prerequisite: copy file `byte.grm` from your Thrax installation into the repository; if Thrax is installed in `/usr/local`, the `Makefile` will do it automatically._

Create `cuneiform-latin.far` file by typing `make` in the repository directory. Then type either

```
make test
```

or 

```
thraxrewrite-tester --far=cuneiform-latin.far --rules=Cuneifier
```

to test the cuneifier.

# References

## Thrax introduction
* http://www.openfst.org/twiki/bin/view/GRM/ThraxQuickTour

## Cuneiform sign lists
* https://en.wikipedia.org/wiki/List_of_cuneiform_signs
* https://en.wikibooks.org/wiki/Sumerian/List (the better one)
* http://www.sumerisches-glossar.de/download/SignListNeoAssyrian.pdf (the best)

## Thrax examples
* https://github.com/pardelapawel/thrax-grammars/
* https://github.com/maciej-nowak/ATFL-State-Finite-Machines
* https://github.com/MaciejWanat/Corrector
* https://github.com/adrmal/PJN-PTX/tree/master/Dictionary

## Miscellaneous
* https://weaveworld.org/android/sumerian/index.html (Android app for Sumerian proverbs (with Cuneiform))

