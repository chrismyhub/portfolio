#!/usr/bin/perl
#CREATED BY: Christopher Chong
#DATE CREATED: 16AUG2023
#DATE LAST MODIFIED: 16AUG2023

use Digest::SHA qw(sha256_hex);

#read the password hash
$passwordHash = "04e77bf8f95cb3e1a36a59d1e93857c411930db646b46c218a0352e432023cf2";

#open the wordlist
open(WORDLIST, ") {
    chomp;
    $word = $_;

    #hash the word
    $wordlistHash = sha256_hex($word);
    print "$word: $wordlistHash\n";

    #if the hash is the same as the correct password's hash then we have cracked the password!
    if($wordlistHash eq $passwordHash) {
        print("Password has been cracked! It was $word\n");
        exit;
    }
}