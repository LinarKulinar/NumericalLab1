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
## @deftypefn {} {@var{retval} =} NewtonForSystem (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Кулинар <Кулинар@КУЛИНАР-ПК>
## Created: 2019-03-06

function retval = NewtonForSystem ()
E = 1e-5;
lastans = zeros(2,1);
lastans(1) = input("Input x0 "); % начальное приближение
lastans(2) = input("Input y0 ") % начальное приближение
%Сделаем одну итерацию:
x = lastans(1);
y = lastans(2);
F = [sin(x)+2*y-2; 2*x+cos(y-1)-0.7];
I = [cos(x), 2; 2, -sin(y-1)];
%Вручную посчитаем обратную матрицу от якобиана в точке
Iinv = 1/(I(1,1)*I(2,2)-I(1,2)*I(2,1))*[I(2,2), -I(1,2); -I(2,1), I(1,1)];
%I^-1 %Проверка обратной матрицы
ans = lastans - Iinv*F;
iter = 0;
disp(ans);
disp("++++++++++++++++++");
while (sqrt((ans-lastans).*(ans-lastans))> 2*E && iter<50) % вторая норма
  iter = iter+1;
  x = ans(1);
  y = ans(2);
  lastans = ans;
  F = [sin(x)+2*y-2; 2*x+cos(y-1)-0.7];
  I = [cos(x), 2; 2, -sin(y-1)];
  Iinv = 1/(I(1,1)*I(2,2)-I(1,2)*I(2,1))*[I(2,2), -I(1,2); -I(2,1), I(1,1)];
  ans = lastans - Iinv*F;
  %disp(F);
  %disp(Iinv);
  %disp(-Iinv*F);
  Iinv = 1/(I(1,1)*I(2,2)-I(1,2)*I(2,1))*[I(2,2), -I(1,2); -I(2,1), I(1,1)];
  disp(ans);
  disp("___________________");
endwhile
retval = ans;
iter
F = [sin(x)+2*y-2; 2*x+cos(y-1)-0.7]

endfunction
