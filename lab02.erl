-module(lab02).

% -export([isGreater/2, intersection/2, intersections/2, modEach/2]).

-compile(export_all).

isGreater({O1, T1, H1}, {O2, T2, H2}) ->
    {H1 * 100, T1 * 10, O1} > {H2 * 100, T2 * 10, O2}.

intersection({X, Y, Width, Height}, {PX, PY}) ->
    (Width / 2 > abs(PX - X)) and (Height / 2 > abs(PY - Y)).

% intersections(Rect, [H | T]) ->
%     if
%     X = intersection(Rect, H),
%     true ->  [{inside, H} | intersections(Rect, [H2 | T], intersection(Rect, H2))],
%     false ->  [{outside, H} | intersections(Rect, [H2 | T], intersection(Rect, H2))].

% intersections(_, [], _) ->
%     [];
% intersections(Rect, [H | [H2 | T]], Condition) when Condition ->
%     [{inside, H} | intersections(Rect, [H2 | T], intersection(Rect, H2))];
% intersections(Rect, [H | [H2 | T]], Condition) ->
%     [{outside, H} | intersections(Rect, [H2 | T], intersection(Rect, H2))].

modEach([], _) ->
    [];
modEach([H | T], Number) ->
    [H rem Number | modEach(T, Number)].

removeMods([], _) ->
    [];
removeMods([H | T], Number) when H rem Number =:= 0 ->
    removeMods(T, Number);
removeMods([H | T], Number) ->
    [H | removeMods(T, Number)].

modEachAndRemoveMods(List, Number) ->
    removeMods(modEach(List, Number), Number).

calculateCost([]) -> [];
calculateCost([{Name, Price, Quantity, Tax_rate} | T]) -> 
    [{Name, Quantity, Price * Quantity + (Price * Quantity * Tax_rate)} | T].

% calculateTotalCost(L) -> calculateTotalCost(L, 0);
% calculateTotalCost([], Accum) -> Accum;
% calculateTotalCost([{Item, Quantity, Total} | T], Accum) -> [{Quantity, Total} | calculateTotalCost(T, Accum + Total)].

myMinMax([]) -> empty_list;
myMinMax([H | T]) -> myMinMax([H|T], H, H).
myMinMax([], Min, Max) -> {Min, Max};

myMinMax([H | T], Min, Max) when (H < Min) -> myMinMax(T, H, Max);
myMinMax([H | T], Min, Max) when (H > Max) -> myMinMax(T, Min, H);
myMinMax([H | T], Min, Max) -> myMinMax(T, Min, Max).