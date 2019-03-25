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
## @deftypefn {} {@var{retval} =} SystemFunc (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Кулинар <Кулинар@КУЛИНАР-ПК>
## Created: 2019-03-06

function retval = SystemFunc ()\

x = linspace(-4, 4, 1000);
%a = cos(-0.5*sin(x));
%b = 0.7 - 2*x;
%plot(x, a, x, b);
a = 1-1/2*sin(x);
y = linspace(-4, 4, 1000);
b = 0.35-1/2*cos(y-1)
plot(x,a,b,y);

%title('cos(-0.5*sin(x)) = 0.7 - 2x'); % Подпись над графиком.
xlabel('X'); % Подпись оси X.			
ylabel('Y'); % Подпись оси Y.
grid on; % Рисуем линии сетки.
%x=[-0.2, -0.1]

endfunction
