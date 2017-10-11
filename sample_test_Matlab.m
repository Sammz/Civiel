clear , clc            % Note: use nowhere else a clear command
format shortG

% This is an example of a file to be used during the test of Matlab.

%{
COMPULSORY:
Name:
Student nr.:

Remarks: 
- at the bottom of this file there are rules which you must comply,
- if a part of an exercise is worked out, it may be useful to save and run 
  this (script) m-file,
- the files with the working-outs must not present an error message; if an 
  error message occur then the score with respect to that exercise (!) is 0 
  points,
- put parts of the program, which give rise to an error message, BETWEEN 
%{  

%} 
  (it will be a comment block), and so the elaboration of (this part of)
  the exercise can be reviewed,
- parts of the program which are not relevant, cause penalty points!
%}



% IMPLEMENTATION EXERCISE 1    <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
% part i)
v = rand(1,25)
% part ii)
average_v = mean(v)
% part iii)
number_elem_smaller = sum(v<0.25)
% part iv)
% a)
v(7:12) = v(7:12).^2
% b)
v(2:2:end) = []
% c)
v([1:3,(end-2):end]) = v([(end-2):end,1:3])


% IMPLEMENTATION EXERCISE 2    <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
% part i)
f = @(x) (x./2).*sin(x)

% part ii)
k = 2:6;
kpi8 = k.*pi./8;
c = polyfit(kpi8,f(kpi8),3);
p = @(x) polyval(c,x)

% part iii)
tk = k';
tkpi8 = kpi8';
tfkpi8 = f(kpi8)';
tdiff = (f(kpi8)-p(kpi8))';
headings = {'k', 'kpi8', 'fkpi8', 'difffp'};
t = table(tk,tkpi8,tfkpi8,tdiff,'VariableNames', headings)

% part iv)
[value_max, i] = max(abs(t.difffp));
value_k = t.k(i)
% part v)
I = [0,3];

figure(1) , clf(1), hold on
axis([0,3,-0.5,1])
fplot(f,I,'r')
fplot(p,I,'*g')
plot(kpi8,f(kpi8), 'k*')
legend('show','Location', 'SouthEast')
title('visualization of f')




%{
RULES w.r.t.:

TEST:
- The exercises are provided on paper, including norms, and these forms
  you must provide with your name and your student number, and have to be
  returned at the end of the test, 
- Use as variables the names of the quantities from the exercise!, 
  optionally supplemented with self-chosen names for additional variables 
  (the use of appropriate names for variables is also evaluated),
- Let Matlab perform the calculation and drawing,
- In an elaboration, which in itself gives a correct answer, but Matlab's 
  use is cumbersome, points will be deducted,
- The file submitted may not provide ANY ERROR MESSAGE; if this happens, 
  then the score for that exercise (!) is 0 points,
- During the test, you may not leave your place except after permission of 
  a supervisor.

FILE:
- Only the available file can be used to work out the exercises using 
  Matlab,
- The commands clear and clc at the top must be maintained,
- The above-mentioned format for the elaboration must be used, including 
  the order, and this also applies to the parts of a exercise (but you may 
  skip a part, or work out the exercises in a different order),
- Add, if necessary, commentary lines.
- At the end of the test, this file must be submitted (with UNCHANGED 
  name; use the appropriate item on the blackboardsite) via the SUBMIT 
  button; however, to prevent fraud (see below), you may only do this after 
  the supervisor has given permission for this,
- Note: you can only hand in the file once on the blackboardsite.

FRAUD:
- During the test, only windows that relate to the following may be opened:
   - the use of Matlab, namely: Command Window, Editor, Workspace, Command 
     History, Help, and Current Directory,
   - the use of the pdf files provided by the teacher on the blackboardsite 
     of the module,
- If it has been seen that another window is used (e.g. mail), or a mobile 
  phone, or some information related to this test is transmitted, or some 
  transmitted information is used, then this is fraud and you are excluded 
  from further participation in this course of the module.
%}