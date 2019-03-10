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
## @deftypefn {} {@var{retval} =} Newton_Akhmetov_6306_2019 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: student <student@DESKTOP-ID15QGS>
## Created: 2019-02-08

function retval = Newton_Akhmetov_6306_2019 ()
  i = 0;
  oldX = 5;
  [y,pr] = func(oldX);
  X = oldX - y/pr;
  while abs(oldX - X) > 1e-3
    i = i + 1
    [y,pr] = func(oldX)
    X = oldX - y/pr;
    oldX = X
  end
  disp(X);
  i
  disp('test answer:');
  [Y, pr] = func (X);
  disp(Y);
endfunction
