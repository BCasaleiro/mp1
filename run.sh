
# !/bin/bash

# global
mkdir -p output

# 2nd
mkdir -p output/2nd

rm -f output/2nd/r-*.pdf

# ch -> x
#-------------------------------------------------------------------------------
rm -f output/2nd/ch-x.fst output/2nd/ch-x.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/ch-x.txt | fstarcsort > output/2nd/ch-x.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/ch-x.fst | dot -Tpdf  > output/2nd/ch-x.pdf

# test cases
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

# lh -> 2
#-------------------------------------------------------------------------------
rm -f output/2nd/lh-2.fst output/2nd/lh-2.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/lh-2.txt | fstarcsort > output/2nd/lh-2.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/lh-2.fst | dot -Tpdf  > output/2nd/lh-2.pdf

# test cases
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/acolhimento.txt | fstarcsort > output/2nd/acolhimento.fst
fstcompose output/2nd/acolhimento.fst output/2nd/lh-2.fst > output/2nd/r-acolhimento.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-acolhimento.fst | dot -Tpdf > output/2nd/r-acolhimento.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/alho.txt | fstarcsort > output/2nd/alho.fst
fstcompose output/2nd/alho.fst output/2nd/lh-2.fst > output/2nd/r-alho.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-alho.fst | dot -Tpdf > output/2nd/r-alho.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/alilha.txt | fstarcsort > output/2nd/alilha.fst
fstcompose output/2nd/alilha.fst output/2nd/lh-2.fst > output/2nd/r-alilha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-alilha.fst | dot -Tpdf > output/2nd/r-alilha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/bisbilhotar.txt | fstarcsort > output/2nd/bisbilhotar.fst
fstcompose output/2nd/bisbilhotar.fst output/2nd/lh-2.fst > output/2nd/r-bisbilhotar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-bisbilhotar.fst | dot -Tpdf > output/2nd/r-bisbilhotar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/lhama.txt | fstarcsort > output/2nd/lhama.fst
fstcompose output/2nd/lhama.fst output/2nd/lh-2.fst > output/2nd/r-lhama.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-lhama.fst | dot -Tpdf > output/2nd/r-lhama.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/lhe.txt | fstarcsort > output/2nd/lhe.fst
fstcompose output/2nd/lhe.fst output/2nd/lh-2.fst > output/2nd/r-lhe.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-lhe.fst | dot -Tpdf > output/2nd/r-lhe.pdf


#-------------------------------------------------------------------------------
# union between ch -> x and lh -> 2
#-------------------------------------------------------------------------------
rm -f output/2nd/t-ch-lh.fst output/2nd/t-ch-lh.pdf

fstunion output/2nd/ch-x.fst output/2nd/lh-2.fst > output/2nd/t-ch-lh.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/t-ch-lh.fst | dot -Tpdf > output/2nd/t-ch-lh.pdf

# test cases
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/chucha.txt | fstarcsort > output/2nd/chucha.fst
fstcompose output/2nd/chucha.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-chucha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-chucha.fst | dot -Tpdf > output/2nd/r-union-chucha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/acachar.txt | fstarcsort > output/2nd/acachar.fst
fstcompose output/2nd/acachar.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-acachar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-acachar.fst | dot -Tpdf > output/2nd/r-union-acachar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/achacar.txt | fstarcsort > output/2nd/achacar.fst
fstcompose output/2nd/achacar.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-achacar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-achacar.fst | dot -Tpdf > output/2nd/r-union-achacar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/acho.txt | fstarcsort > output/2nd/acho.fst
fstcompose output/2nd/acho.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-acho.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-acho.fst | dot -Tpdf > output/2nd/r-union-acho.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/chines.txt | fstarcsort > output/2nd/chines.fst
fstcompose output/2nd/chines.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-chines.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-chines.fst | dot -Tpdf > output/2nd/r-union-chines.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/pichar.txt | fstarcsort > output/2nd/pichar.fst
fstcompose output/2nd/pichar.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-pichar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-pichar.fst | dot -Tpdf > output/2nd/r-union-pichar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/acolhimento.txt | fstarcsort > output/2nd/acolhimento.fst
fstcompose output/2nd/acolhimento.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-acolhimento.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-acolhimento.fst | dot -Tpdf > output/2nd/r-union-acolhimento.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/alho.txt | fstarcsort > output/2nd/alho.fst
fstcompose output/2nd/alho.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-alho.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-alho.fst | dot -Tpdf > output/2nd/r-union-alho.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/alilha.txt | fstarcsort > output/2nd/alilha.fst
fstcompose output/2nd/alilha.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-alilha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-alilha.fst | dot -Tpdf > output/2nd/r-union-alilha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/bisbilhotar.txt | fstarcsort > output/2nd/bisbilhotar.fst
fstcompose output/2nd/bisbilhotar.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-bisbilhotar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-bisbilhotar.fst | dot -Tpdf > output/2nd/r-union-bisbilhotar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/lhama.txt | fstarcsort > output/2nd/lhama.fst
fstcompose output/2nd/lhama.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-lhama.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-lhama.fst | dot -Tpdf > output/2nd/r-union-lhama.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/lhe.txt | fstarcsort > output/2nd/lhe.fst
fstcompose output/2nd/lhe.fst output/2nd/t-ch-lh.fst > output/2nd/r-union-lhe.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-lhe.fst | dot -Tpdf > output/2nd/r-union-lhe.pdf


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

rm -r output/2nd/*.fst
