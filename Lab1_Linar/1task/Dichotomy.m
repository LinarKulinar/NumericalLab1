## Copyright (C) 2019 Кулинар
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
## @deftypefn {} {@var{retval} =} Dichotomy (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Кулинар <Кулинар@КУЛИНАР-ПК>
## Created: 2019-03-06

function retval = Dichotomy (a, b)
E = 1e-3;  
a = input("Enter a: ");
b = input("Enter b: ");
i = 0;

while abs(b - a) > 2*E;
  i = i+1;
  c = (b-a)/2+a;
  if( func(a)/abs(func(a)) != func(c)/abs(func(c)) )
    b = c;
  endif;
  if( func(b)/abs(func(b)) != func(c)/abs(func(c)) )
    a = c;
  endif;
  %a
  %b
  %disp("------------------")
endwhile
i 
ans = (b+a)/2
f = func(ans)
endfunction
