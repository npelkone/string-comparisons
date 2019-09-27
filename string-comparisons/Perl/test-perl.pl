use feature ':5.28';
use Time::HiRes qw(time);
use utf8;
# use Encode;

my $file = '../string-10k.txt';
my $s;
if (open my $fh, '+<', $file) {
    $s = <$fh>;
    close $fh;
}

# my $s2 = ('babababa a')

# require Encode::Detect;
# my $utf8 = decode("Detect", $s);


# # --------- regex 1 ---------
# $s =~ /bab{3}/g;
# # --------- regex 2 ---------
# $s =~ /bbbba+/g;
# # --------- regex 3 ---------
# $s =~ /bbbbb|aaaaa/g;
# # --------- regex 4 ---------
# $s =~ /bab{3}|bbbba+/g;
# # --------- regex 5 ---------
# $s =~ /(bbbbb|aaaaa)+/g;

# # --------- concat ---------
# my $s2 = 'a';
# my $concat_s = $s . $s2;
# # + equals
# my $start = time();

# $s eq $concat_s2;

# # --------- uppercase ---------
# uc($s);

# # --------- reverse ---------
# scalar reverse $s;

# # --------- find first index of substring ---------
# index($s, 'abba');

# # --------- copy ---------
# my $copy_s = $s;
# length($s);

# --------- sort: doesn't work for scalars ---------

my $end = time();
my $duration = $end-$start;

my $savefile = 'times-file.txt';
open(my $f, '>>', $savefile);
print $f($duration*1000,"\n");
close $f;
