-module(lesson03_task4).
-export([decode/2]).

decode(Json, proplist) ->
    decode_to_proplist(erlang:binary_to_list(Json), []);
decode(Json, map) ->
    maps:from_list(decode_to_proplist(erlang:binary_to_list(Json), [])).

decode_to_proplist([], Acc) ->
    lists:reverse(Acc);
decode_to_proplist([H | T], Acc) ->
    %% Custom logic for parsing (simplified example)
    decode_to_proplist(T, Acc).
