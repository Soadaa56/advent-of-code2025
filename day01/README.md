I wasn't sure if modulo (%) 100 would work, but I figure I would give it a try

So I open the file stram in read mode and use fscanf for formatted input.

I know every line is a letter followed by 1-2 numbers, so tell fscanf
%s1 will be the direction ("L" or "R") and the rest is rotate (how far).

Then simply compare if the first letter is == 'L', we minus from the dial (50 - 68) to simulate turning left. Otherwise we assume it's a 'R' and add to the dial (-18 +18).
Then whenever the dial % 100 is == 0, then we add one to the password.

Thankfully the modulo 100 was all I needed, otherwise I was thinking  I might need some function to determine what happens if we go negative or above 100.

Although usually the first few days of Advent of Code isn't too bad and from what I've seen, you can solve in ruby with a couple of lines if you know how to chain and how to handle the stream of data.

It's a bit of a different challenge in c, but it's helping me learn. I'm actually curious to see how I would solve this in ruby.