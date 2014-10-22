#!/usr/bin/perl
use strict;
use warnings;

# Define Variables ex. Suits, Cards, and Random

my %Suit = (
		0 => 'Major',
		1 => 'Wands',
		2 => 'Pentacles',
		3 => 'Cups',
		4 => 'Swords',);

my %Major = (
        0 => 'The Fool',
        1 => 'The Magician',
        2 => 'The High Priestess',
		3 => 'The Empress',
        4 => 'The Emperor',
        5 => 'The Hieophant',
		6 => 'The Lovers',
        7 => 'The Chariot',
        8 => 'Strength',
		9 => 'The Hermit',
        10 => 'Wheel of Fortune',
        11 => 'Justice',
		12 => 'The Hanged Man',
        13 => 'Death',
        14 => 'Temperance',
		15 => 'The Devil',
        16 => 'The Tower',
        17 => 'The Star',
		18 => 'The Moon',
        19 => 'The Sun',
        20 => 'Judgement',
		21 => 'The World',);

my %Wands = (
		1 => 'Ace of Wands',
		2 => 'Two of Wands',
		3 => 'Three of Wands',
		4 => 'Four of Wands',
		5 => 'Five of Wands',
		6 => 'Six of Wands',
		7 => 'Seven of Wands',
		8 => 'Eight of Wands',
		9 => 'Nine of Wands',
		10 => 'Ten of Wands',
		11 => 'Page of Wands',
		12 => 'Knight of Wands',
		13 => 'Queen of Wands',
		14 => 'King of Wands',);
		
my %Pentacles = (
		1 => 'Ace of Pentacles',
		2 => 'Two of Pentacles',
		3 => 'Three of Pentacles',
		4 => 'Four of Pentacles',
		5 => 'Five of Pentacles',
		6 => 'Six of Pentacles',
		7 => 'Seven of Pentacles',
		8 => 'Eight of Pentacles',
		9 => 'Nine of Pentacles',
		10 => 'Ten of Pentacles',
		11 => 'Page of Pentacles',
		12 => 'Knight of Pentacles',
		13 => 'Queen of Pentacles',
		14 => 'King of Pentacles',);
		
my %Cups = (
		1 => 'Ace of Cups',
		2 => 'Two of Cups',
		3 => 'Three of Cups',
		4 => 'Four of Cups',
		5 => 'Five of Cups',
		6 => 'Six of Cups',
		7 => 'Seven of Cups',
		8 => 'Eight of Cups',
		9 => 'Nine of Cups',
		10 => 'Ten of Cups',
		11 => 'Page of Cups',
		12 => 'Knight of Cups',
		13 => 'Queen of Cups',
		14 => 'King of Cups',);
		
my %Swords = (
		1 => 'Ace of Swords',
		2 => 'Two of Swords',
		3 => 'Three of Swords',
		4 => 'Four of Swords',
		5 => 'Five of Swords',
		6 => 'Six of Swords',
		7 => 'Seven of Swords',
		8 => 'Eight of Swords',
		9 => 'Nine of Swords',
		10 => 'Ten of Swords',
		11 => 'Page of Swords',
		12 => 'Knight of Swords',
		13 => 'Queen of Swords',
		14 => 'King of Swords',);
		
my $suit = undef;
my $bool = undef;
my $random = undef;
my $card = undef;
my $isInverted = undef;
my @drawnCards = undef;

sub inversion
{
	$bool = int(rand(2));
		
		if($bool == 0)
		{$isInverted = 'False'}
		else
		{$isInverted = 'True'}
}

sub drawCard
{
		$suit = int(rand(5));

		if($suit == 0)
		{
			$random = int(rand(21));
			$card = $Major{$random};
		}
		elsif($suit == 1)
		{
			$random = int(rand(14));
			$random = $random + 1;
			$card = $Wands{$random};
		}
		elsif($suit == 2)
		{
			$random = int(rand(14));
			$random = $random + 1;
			$card = $Pentacles{$random};
		}
		elsif($suit == 3)
		{
			$random = int(rand(14));
			$random = $random + 1;
			$card = $Cups{$random};
		}
		else
		{
			$random = int(rand(14));
			$random = $random + 1;
			$card = $Swords{$random};
		}
}

#Run Program
print "If you have a specific question hold it in your mind\n";
print "This program will pull 20 random cards\n";
system( 'pause' );
print "Card Number\tCard\t\t\tIsInverted\n";
$suit = int(rand(5));

for (my $i = 0; $i <= 20; $i++)
	{	
		drawCard();
		inversion();
		push(@drawnCards, "" . $card . "");
		if($card !~ @drawnCards)
		{
		drawCard();
		}
		
		print "[" . $i . "]\t\t" . $card . "\t\t" . $isInverted . "\n";
	}
system( 'pause' );
