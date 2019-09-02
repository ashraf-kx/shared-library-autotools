# Using a "C" Shared library built using "AutoTools" in a "C++" project.

** Run the following in this order [Note: after each step/command try to fix 'errors/warning' thrown by the 'autotool' so, you preceed with a clear/clean CODE ;) ].

1. 
```
autoscan
```
2. On UNIX-alike systems:
```
libtoolize
```
On iOS : 
```
glibtoolize
```
3. 
```
aclocal
```
4. 
```
autoconf
```
5. 
```
automake --add-missing
```
6. 
```
make
```
7. if you want to use it in any other project (example Qt project) install it BOTHER.
```
make install
```

You are Up-To-Date.

