
# !/bin/bash

# global
mkdir -p output

# 2nd
mkdir -p output/2nd

# ch -> x
#-------------------------------------------------------------------------------
rm -f output/2nd/ch-x.fst output/2nd/ch-x.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/ch-x.txt | fstarcsort > output/2nd/ch-x.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/ch-x.fst | dot -Tpdf  > output/2nd/ch-x.pdf

# test cases
rm -f output/2nd/r-*.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/chucha.txt | fstarcsort > output/2nd/chucha.fst
fstcompose output/2nd/chucha.fst output/2nd/ch-x.fst > output/2nd/r-chucha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-chucha.fst | dot -Tpdf > output/2nd/r-chucha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/acachar.txt | fstarcsort > output/2nd/acachar.fst
fstcompose output/2nd/acachar.fst output/2nd/ch-x.fst > output/2nd/r-acachar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-acachar.fst | dot -Tpdf > output/2nd/r-acachar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/achacar.txt | fstarcsort > output/2nd/achacar.fst
fstcompose output/2nd/achacar.fst output/2nd/ch-x.fst > output/2nd/r-achacar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-achacar.fst | dot -Tpdf > output/2nd/r-achacar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/acho.txt | fstarcsort > output/2nd/acho.fst
fstcompose output/2nd/acho.fst output/2nd/ch-x.fst > output/2nd/r-acho.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-acho.fst | dot -Tpdf > output/2nd/r-acho.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/chines.txt | fstarcsort > output/2nd/chines.fst
fstcompose output/2nd/chines.fst output/2nd/ch-x.fst > output/2nd/r-chines.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-chines.fst | dot -Tpdf > output/2nd/r-chines.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/pichar.txt | fstarcsort > output/2nd/pichar.fst
fstcompose output/2nd/pichar.fst output/2nd/ch-x.fst > output/2nd/r-pichar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-pichar.fst | dot -Tpdf > output/2nd/r-pichar.pdf

rm -r output/2nd/*.fst

# lh -> 2
#-------------------------------------------------------------------------------
rm -f output/2nd/lh-2.fst output/2nd/lh-2.pdf

#fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/lh-2.txt | fstarcsort > output/2nd/lh-2.fst
#fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/lh-2.fst | dot -Tpdf  > output/2nd/lh-2.pdf


# nh -> 3
#-------------------------------------------------------------------------------
rm -f output/2nd/nh-3.fst output/2nd/nh-3.pdf

#fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/nh-3.txt | fstarcsort > output/2nd/nh-3.fst
#fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/nh-3.fst | dot -Tpdf  > output/2nd/nh-3.pdf


# rr -> 4
#-------------------------------------------------------------------------------
rm -f output/2nd/rr-4.fst output/2nd/rr-4.pdf

#fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/rr-4.txt | fstarcsort > output/2nd/rr-4.fst
#fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/rr-4.fst | dot -Tpdf  > output/2nd/rr-4.pdf


# ss -> s
#-------------------------------------------------------------------------------
rm -f output/2nd/ss-s.fst output/2nd/ss-s.pdf

#fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/ss-s.txt | fstarcsort > output/2nd/ss-s.fst
#fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/ss-s.fst | dot -Tpdf  > output/2nd/ss-s.pdf
