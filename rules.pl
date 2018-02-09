submit_rule(submit(CR)) :-
    sum(4, 'Code-Review', CR).

% Sum the votes in a category. Uses a helper function score/2
% to select out only the score values the given category.
sum(VotesNeeded, Category, label(Category, ok(_))) :-
    findall(Score, score(Category, Score), All),
    sum_list(All, Sum),
    Sum >= VotesNeeded,
    !.
sum(VotesNeeded, Category, label(Category, need(VotesNeeded))).

score(Category, Score) :-
    gerrit:commit_label(label(Category, Score), User).

% Simple Prolog routine to sum a list of integers.
sum_list(List, Sum)   :- sum_list(List, 0, Sum).
sum_list([X|T], Y, S) :- Z is X + Y, sum_list(T, Z, S).
sum_list([], S, S).
