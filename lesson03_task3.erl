-module(lesson03_task3).
-export([split/2]).

split(BinText, Separator) ->
    binary:split(BinText, Separator, [global]).
