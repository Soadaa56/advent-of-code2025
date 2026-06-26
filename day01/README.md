# Part 1
I wasn't sure if modulo (%) 100 would work, but I figure I would give it a try

So I open the file stram in read mode and use fscanf for formatted input.

I know every line is a letter followed by 1-2 numbers, so tell fscanf
%s1 will be the direction ("L" or "R") and the rest is rotate (how far).

Then simply compare if the first letter is == 'L', we minus from the dial (50 - 68) to simulate turning left. Otherwise we assume it's a 'R' and add to the dial (-18 +18).
Then whenever the dial % 100 is == 0, then we add one to the password.

Thankfully the modulo 100 was all I needed, otherwise I was thinking  I might need some function to determine what happens if we go negative or above 100.

Although usually the first few days of Advent of Code isn't too bad and from what I've seen, you can solve in ruby with a couple of lines if you know how to chain and how to handle the stream of data.

It's a bit of a different challenge in c, but it's helping me learn. I'm actually curious to see how I would solve this in ruby.

# Part 2
Almost forget there are part 2 to a lot (all?) of these days. 

My solution was getting way too messy (although I'm sure its very possible to chain operators for a solution) so I opted for a class. My brain then thinks there is probably a way to decrease runtime, but thats where I'm out of my depth. I remember a day from 2024? had a problem that needed optimization because the 'easy' solution would take hours/day/weeks to finish running.

Otherwise, I just manually in/decrement the dial by 1 and check dial % 100 every call. I actually thought I still needed an additional check after all the rotation, but the password was too high. So I commented out that line and got the right answer. This makes sense to me after thinking about it, but my inital gut thinking was wrong there.


## Post-Script
I'm always stuck between how much time I should spend on refactoring / writing the class in a real world use case **VS** just getting the solution faster and moving onto harder questions.

I suppose I should get more experience attempting clean code principles (SOLID object-oriented design).

I like the example of what I'm currently 'dealing' with my blog currently.

My Post index page just lists all of my posts, which is currently fine. At some point I'll need to implement pages and loading only **x** amount of posts, but trying to implement it right now could be seen as a "waste of time"(overengineering a solution for a problem that may never arise).