sum_list([], 0).
sum_list([H | Rest], Sum) :- sum_list(Rest,Tmp), Sum is H + Tmp.

first_list([], _).
first_list([F], F).
first_list([F | Rest], F).

score(Category, Score, User) :-
  gerrit:commit_label(label(Category, Score), User).

add_category_min_score(In, Category, Min,  P) :-
  findall(Score, score(Category, Score, User), Scores),
  findall(User, score(Category, Score, User), Users),
  sum_list(Scores, Sum),
  Sum >= Min, !,
  first_list(Users, FirstUser),
  P = [label(Category, ok(FirstUser)) | In].

add_category_min_score(In, Category, Min, P) :-
  P = [label(Category, need(Min)) | In].

submit_rule(S) :-
  gerrit:default_submit(X),
  X =.. [submit | Ls],
  gerrit:remove_label(Ls, label('Code-Review', _), NoCR),
  add_category_min_score(NoCR, 'Code-Review', 6, Labels),
  S =.. [submit | Labels].
