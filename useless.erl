-module(useless).
-export([add/2, hello_world/0, greet_and_add_two/1]).

add(A, B) ->
    A + B.

hello_world() ->
    io:format("Hello World!~n").

greet_and_add_two(x) ->
    hello_world(),
    add(x, 2).

    % This is a comment.
    % A function macro can be written for example as: `-define(add(X, Y), X+Y).` and used as `?add(66, 99)`.
    % "A 'function' macro could be written as -define(sub(X,Y), X-Y). and used like ?sub(23,47), 
    % later replaced by 23-47 by the compiler. Some people will use more complex macros, but the basic syntax stays the same." 
    % ref [for code and details listed in comments] =(https://learnyousomeerlang.com/modules, 5).