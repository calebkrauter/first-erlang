-module(lab02).

-export([isGreater/2]).

isGreater({O1, T1, H1}, {O2, T2, H2}) ->
    {H1 * 100, T1 * 10, O1} > {H2 * 100, T2 * 10, O2}.

intersection({X, Y, Width, Height}, {PX, PY}) ->
    X_Width = Width / 2,
    Y_Height = Height / 2,
    X_RightBound = X + X_Width,
    X_LeftBound = X - X_Width,
    Y_TopBound = Y + Y_Height,
    Y_BottomBound = Y - Y_Height,
    abs(X_RightBound) - abs(PX - X)  > X_Width and abs(Y_TopBound) - abs(PY - Y)  > Y_Height.
    