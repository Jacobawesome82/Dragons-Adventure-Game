use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";
use v5.26;

print "\n";

say "Dragons";
say "By Jacob Lawrence\n";

say "You are a dragon. Born under the stars. Knowing not of the humans and their conquests, but of the fortunes they hold...";

say "Deep in your belly you have the element of... (fire, ice, earth, wind).";

my $go_on = 0;
my $element = "";

while(!$go_on){
    my $response = lc <STDIN>;
    chomp $response;

    if($response eq "fire"){
        say "Deep below magma warms your soul and fills your lungs. At will, you can burn down entire forests.";
        $element = "fire";
        last;
    }
    elsif($response eq "ice"){
        say "A chiling winter fills your lungs. At will you can freeze anyone who stands in your way.";
        $element = "ice";
        last;
    }
    elsif($response eq "earth"){
        say "You are solid and strong. You have the way of the earth on your side. Your skin is inpenetrable.";
        $element = "earth";
        last;
    }
    elsif($response eq "wind"){
        say "You are the master of the sky. Your wings are so powerful you can sweep foes of their feet.";
        $element = "wind";
        last;
    }
    else {
        say "Invalid Input, make sure you spelt your command correctly.";
        next;
    }
}
