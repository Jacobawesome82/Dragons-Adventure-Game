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

my $element = "";
my $number = 0;

while(!$number){
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

say "Not far below that mountain in wich you dwell, a simple village full of peasants stands.";
say "The question is... will you pillage it or not? (y/n)";

my $infamy = 0;
my $gold = 0;
my $power = 0;

while(!$number){
    my $responce = lc <STDIN>;
    chomp $responce;

    if($responce eq "y"){
        say "You swoop down on the village, utterly destroying their pathetic defenses.";
        say "+10 gold";
        say "+1 infamy";
        say "Your power increases.";
        $gold += 10;
        $infamy++;
        $power++;
        last;
    }
    elsif($responce eq "n"){
        say "You decide to spare the peasants, they probably don't have much gold anyway.";
        last;
    }
    else{
        say "Invalid Input, make sure you spelt your command correctly.";
        next;
    }
}

say "Feeling satisfied with your decision, you turn your eyes to a larger town.";
say "One with much greater wealth, but greater defenses.\n";
say "Do you attack the greater town?(1) Attack another small peasant village?(2) Or end your pillaging for the day?(3)";

while(!$number){
    my $responce = lc <STDIN>;
    chomp $responce;

    if($responce eq "1" && $power >= 1){
        say "Once again, you plunder the town, taking the gold from their keep and leaving destruction in your wake.";
        say "You easily crush their puny defenses, they are nothing compared to your might!";
        say "+50 gold";
        say "+2 infamy";
        say "Your power increases.";
        $gold += 50;
        $infamy += 2;
        $power++;
        last;
    }
    elsif($responce eq "1" && $power < 1){
        say "You begin to plunder the town, destroying many homes.";
        say "However, their defenses are to strong, steel arrows peirce your skin, letting out thick red blood.";
        say "Maybe you would have been able to plunder the village if you were stronger.";
        say "+0 gold";
        say "+1 infamy";
        $infamy++;
        last;
    }
    elsif($responce eq "2"){
        say "You decide to pillage another small village.";
        say "As expected you crush them under your might.";
        say "+10 gold";
        say "+1 infamy";
        say "Your power increases.";
        $gold += 10;
        $infamy++;
        last;
    }
    elsif($responce eq "3"){
        say "You decide not to pillage the town. Their defenses are probably too powerful.";
        last;
    }
    else{
        say "Invalid Input, make sure you spelt your command correctly.";
        next;
    }
}