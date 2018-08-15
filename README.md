# husky-tricks - A testing-grounds repository for various Haskell experiments.

This repository contains a stack-based Haskell project. The goal is to experiment with various features of the Haskell programming language and thusly learn it.


## Notes

Below you will find various notes and scribbles which the author wrote down to aid in remembering Haskell's habits and peculiarities.


### Differences in function application between Mathematics and Haskell

The below table summarizes the differences in function application between Mathematics and Haskell. Note that the parentheses on the Haskell side (for example `f (g x)`) are neccessary because the intent is to pass the result of `g x` to `f` instead of passing `g` and `x` as arguments to `f`.

|Mathematics|Haskell   |
|-----------|----------|
|f(x)       |f x       |
|f(x,y)     |f x y     |
|f(g(x))    |f (g x)   |
|f(x,g(y))  |f x (g y) |
|f(x) g(y)  |f x * g y |


### Common GHCi commands

GHCi is the interactive component of GHC, the Glasgow Haskell Compiler. In it, you can specify various handy commands. Below follows a summary of a few particularly handy ones.

|Command            |Description                                          |
|-------------------|-----------------------------------------------------|
|:load 'name'       |Load a .hs source file by name.                      |
|:reload            |Reload script(s) on the build path.                  |
|:set editor 'name' |Set the default editor to 'name'.                    |
|:edit 'name'       |Edit a .hs source file by name.                      |
|:edit              |Edit the current .hs source file.                    |
|:type 'expr'       |Show the type of the expression specified by 'expr'. |
|:?                 |Show a list of all known commands.                   |
|:quit, CTRL-D      |Quit GHCi.                                           |
