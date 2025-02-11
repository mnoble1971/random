#!/usr/bin/perl

use strict;
use warnings;

my $range=10;
my $random_number;
my $guess_count=3;
my $user_guess;

sub ask {
  print "Pick a number 1 - $range:\n";
  $user_guess= <STDIN>;
  chomp $user_guess;
}
 
sub create_random {
  $random_number=int(rand($range)) + 1;
  print "--------------------- $random_number   \n";
}

sub increment_random {
  $range=$range*10;
}

create_random;

sub guess_loop {
  until ($guess_count eq 0) {
    ask;
    if ($user_guess eq $random_number) {
      print "You picked it\n";
      return "good";
      last;
    } else {
      print "Not it, try again\n";
    }
    $guess_count--;
    print "guesses left: $guess_count\n";
  }
    print "Sorry Out of guesses\n";
    return "out";
  }
my $pick=guess_loop();
for (;;) {
if ($pick =~ /good/) {
  increment_random;
  create_random;
  ask;
  guess_loop;
  } else {
  print "-done \n";
  exit 1;
}
}
 


