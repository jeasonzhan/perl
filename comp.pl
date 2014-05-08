#!/usr/bin/perl

open(FILE1, "现在的.txt") or die $!;
open(FILE2, "二楼发过来的.txt") or die $!;

%hash_file1 = ();
%hash_file2 = ();


while ($line = <FILE1>) {
        chomp $line;
        $hash_file1{$line} = $line;
}

while ($line = <FILE2>) {
        chomp $line;
        $hash_file2{$line} = $line;
}

# 对比
#foreach (sort {$hash_file1{$a} <=> $hash_file1{$b}} keys %hash_file1)
print "验收中心的表中，不存在的\n";
foreach (sort keys %hash_file1)
{
        if (exists $hash_file2{$_})
        {
        }
        else
        {
                print "$_ => 不存在\n";
        }
}
