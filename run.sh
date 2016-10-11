#!/bin/bash

#global
mkdir -p outputs

#1st

mkdir -p outputs/1st

rm -f outputs/1st/s_z.fst outputs/1st/s_z.pdf
rm -f outputs/1st/x_z.fst outputs/1st/x_z.pdf
rm -f outputs/1st/x_s.fst outputs/1st/x_s.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/s_z.txt | fstarcsort > outputs/1st/s_z.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  outputs/1st/s_z.fst | dot -Tpdf  > outputs/1st/s_z.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/x_z.txt | fstarcsort > outputs/1st/x_z.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  outputs/1st/x_z.fst | dot -Tpdf  > outputs/1st/x_z.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/x_s.txt | fstarcsort > outputs/1st/x_s.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  outputs/1st/x_s.fst | dot -Tpdf  > outputs/1st/x_s.pdf

#2nd