% demolab.m     
% a line that starts with a percent sign 
% is a comment
% at the UNIX prompt, type matlab... 
% you will get the matlab prompt, >>
%
% you can type edit to get an editor
%
% help to get help
%
% helpdesk for a browser-based help facility
%
% emergency stop is .... control-c
%

%how to create matrices

x=[1 2
   3 4
   5 6]

y=[3 3
   4 3
   3 1]

disp('CR means carriage-return-- the "enter" key')
qq=input('hit cr to see some matrix arithmetic.... ');

% this is a way for the program to get input, 
% here it just waits until you press the enter key, 
% so you can look at the screen....

% names can be pretty long and complicated

twice_x=2*x   
x_plus_y=x+y
transpose_x=x'
transpose_x_times_y=x'*y

qq=input('hit cr to see determinants and inverses... ');

determinant_of_xTy=det(x'*y)
inverse_of_xTy=inv(x'*y)

disp('hit cr to see coordinatewise multiplication, ');
qq=input('division, powers.... ');

x_dotstar_y=x.*y
x_over_y=x./y
x_squared=x.^2

qq=input('hit cr for utility matrices ');

ZZZ=zeros(2,5)
WON=ones(2,3)
ident=eye(3)

disp('hit cr to put matrices together--')
qq=input('concatenation -- use [ ] ');

concatenated=[ones(3,1) x y]

qq=input('hit cr to graph log(t) against t .... ');

t=[.01:.05:10]';
% start at .01, go to 10 in steps of .05

plot(t,log(t),'x')
disp('look at the graph!!!')
disp(' ')
disp(' ')

disp('loops')
disp('if ... then ... ')
disp('MATLAB uses == to test for equality')
disp('MATLAB will print the perfect squares') 
disp('from 1 to 50')
qq=input('hit cr to go .... ');

for j=1:50   %sets up a loop

  if j==fix(sqrt(j))^2
  
      found_a_perfect_square=j
      % fix gets rid of decimals, 
      % fix(2.4)=2, fix(-2.4)=-2
  
  end  %gotta end the "if"
  
end          %end the loop
% spaces and indenting make the code easier to read

qq=input('hit cr to load a file and get summaries');

load small.dat
ave_cols_12=mean(small(:,1:2))
SD_cols_12=std(small(:,1:2))

% small(:,1) is the first column of small... 
% that is what the colon does
% small(:,1:2) is the first two columns
% matlab divides by n-1 when computing the SD

u=small(:,3);
v=small(:,4);

%the semicolon means, don't print the result

qq=input('hit cr for a scatterplot... ');
plot(u,v,'x')

correlation_matrix_34=corrcoef(u,v)
% look at top right of the matrix 
% for the correlation coefficient

disp('hit cr to get correlations')
qq=input('between all pairs of columns ');

all_corrs=corrcoef(small)

qq=input('hit cr for simulations ');

uniform_random_numbers=rand(3,2)
normal_random_numbers=randn(2,4)

disp('so, what is E(cos(Z)|Z>0) when Z is N(0,1)?');
qq=input('hit cr to find out ');
Z=randn(10000,1);
f=find(Z>0);
EcosZ_given_Z_is_positive=mean(cos(Z(f)))
trickier=mean(cos(Z(Z>0)))

disp('come let us replicate,')
qq=input('might be sampling error, hit cr ');
Z=randn(10000,1);
f=find(Z>0);
first_shot_was=EcosZ_given_Z_is_positive
replicate=mean(cos(Z(f)))

disp('guess there is sampling error....')

disp(' ')
disp(' ')
disp(' ')
disp('MATLAB has script files and function files ')
disp('mean and std are function files,')
disp('mean.m and std.m ')
disp('there is a function file phi.m')
disp('that computes the normal curve')

qq=input('hit cr to see the graph ');
u=[-4:.05:4];
plot(u,phi(u))

