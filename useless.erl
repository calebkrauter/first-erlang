-module(useless).
-export([add/2, hello_world/0, greet_and_add_two/1]).

add(A, B) ->
    A + B.

hello_world() ->
    io:format("Hello World!~n").

greet_and_add_two(X) ->
    hello_world(),
    add(X, 2).

    % This is a comment.
    % REMEMBER to use uppercase letters for variables!
    % A function macro can be written for example as: `-define(add(X, Y), X+Y).` and used as `?add(66, 99)`.
    % "Erlang code is compiled to bytecode in order to be used by the virtual machine. You can call the compiler
    % from many places: $ erlc flags file.erl when in the command line, compile:file(FileName) when in the shell
    % or in a module, c() when in the shell, etc." 
    % Ref for code and details listed in comments -> (https://learnyousomeerlang.com/modules, 5).