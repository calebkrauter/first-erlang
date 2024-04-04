-module(lab02).

-export([isGreater/2]).

isGreater({O1, T1, H1}, {O2, T2, H2}) ->
    {H1 * 100, T1 * 10, O1} > {H2 * 100, T2 * 10, O2}.
