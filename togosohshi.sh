#!/bin/bash
#Background Colors
E=$(tput sgr0);    R=$(tput setab 1); G=$(tput setab 2); Y=$(tput setab 3);
B=$(tput setab 4); M=$(tput setab 5); C=$(tput setab 6); W=$(tput setab 7);
function e() { echo -e "$E"; }
function x() { echo -n "$E  "; }
function r() { echo -n "$R  "; }
function g() { echo -n "$G  "; }
function y() { echo -n "$Y  "; }
function b() { echo -n "$B  "; }
function m() { echo -n "$M  "; }
function c() { echo -n "$C  "; }
function w() { echo -n "$W  "; }

#putpixels
function u() { 
    h="$*";o=${h:0:1};v=${h:1}; 
    for i in `seq $v` 
    do 
        $o;
    done 
}

img="\
x40 e1 x2 b5 x2 b2 x3 b3 x2 b2 x2 b5 x1 b1 x3 b1 x2 b1 x3 e1 x4 b1 x3 b1 x2 b1 x1 b1 x4 b1 x2 b1 x3 b1 x3 b1 x3 b1 x2 b1 x3 e1 x4 b1 x3 b1 x2 b1 x1 b1 x2 b1 x1 b1 x2 b1 x3 b1 x4 b1 x1 b1 x7 e1 x4 b1 x4 b2 x3 b3 x2 b2 x4 b1 x5 b1 x4 b1 x3 e1 x40 e1 x14 y4 x22 e1 x13 y1 x1 y1 x1 y2 x21 e1 x14 y4 x22 e1 x14 r3 y1 x22 e1 x15 y2 x23 e1 x8 y12 x20 e1 x14 y4 x1 y1 x20 e1 x14 y6 x20 e1 x14 m2 y2 x22 e1 x14 m1 y3 x22 e1 x14 y4 x22 e1 x14 y1 x2 y1 x22 e1 x14 y1 x2 y1 x22 e1 x13 y2 x2 y2 x21 e1 x40 e1 x40 e1 x40"

for n in $img
do
    u $n
done
e;
exit 0;
