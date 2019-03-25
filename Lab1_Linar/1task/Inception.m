## Copyright (C) 2019 student
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} Incept_akhmetov_6306_2019 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: student <student@DESKTOP-ID15QGS>
## Created: 2019-03-06

function retval = Inception ()
E = 1e-3;

x0 = input("Enter x0: ");
h = input("Enter h: ");
x1 = x0+h; 
if (abs(x0 - x1) < 2*E)
  disp("Incorrect input. Try again");
endif

%{x0,x1,...} - сходящаяся последовательность к x*
xkl = x0;
xk = x1;
iter = 0;
while abs(xk - xkl) > 2*E;
  xnew = xk - func(xk)*(xk-xkl)/(func(xk)-func(xkl));
  xkl = xk;
  xk = xnew;
  iter = iter + 1;
endwhile
%disp(strcat("root = ", num2str(xk)));
disp(strcat("iter = ", num2str(iter)))
retval = xk;
endfunction
