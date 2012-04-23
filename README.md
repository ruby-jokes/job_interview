# Job Interview

## SYNOPSIS

Let's face it. Programming job interviews can be annoying. And sometimes the questions require you to actually think. With Job Interview, most programming interview questions can be answered in 3 lines of Ruby.

## USAGE

    require 'job_interview'
    @answer = JobInterview::Answer.new
    
    @answer.fizz_buzz(5)
    
    => [1, 2, "Fizz", 4, "Buzz"]
    
    @answer.fib(10)
    
    => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    
## AUTHORS

[Micah Gates](https://github.com/mgates)

[Jason Lewis](https://github.com/canweriotnow)

## LICENSE


Copyright (C) 2012 Micah Gates and Jason Lewis

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.