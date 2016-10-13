
# !/bin/bash

# global
mkdir -p output

# 2nd
mkdir -p output/2nd

rm -f output/2nd/*.pdf

# ch -> x
#-------------------------------------------------------------------------------
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
fstunion output/2nd/ch-x.fst output/2nd/lh-2.fst > output/2nd/t-u1.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/t-u1.fst | dot -Tpdf > output/2nd/t-u1.pdf

# test cases
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/chucha.txt | fstarcsort > output/2nd/chucha.fst
fstcompose output/2nd/chucha.fst output/2nd/t-u1.fst > output/2nd/r-union-chucha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-chucha.fst | dot -Tpdf > output/2nd/r-union-chucha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/acachar.txt | fstarcsort > output/2nd/acachar.fst
fstcompose output/2nd/acachar.fst output/2nd/t-u1.fst > output/2nd/r-union-acachar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-acachar.fst | dot -Tpdf > output/2nd/r-union-acachar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/achacar.txt | fstarcsort > output/2nd/achacar.fst
fstcompose output/2nd/achacar.fst output/2nd/t-u1.fst > output/2nd/r-union-achacar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-achacar.fst | dot -Tpdf > output/2nd/r-union-achacar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/acho.txt | fstarcsort > output/2nd/acho.fst
fstcompose output/2nd/acho.fst output/2nd/t-u1.fst > output/2nd/r-union-acho.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-acho.fst | dot -Tpdf > output/2nd/r-union-acho.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/chines.txt | fstarcsort > output/2nd/chines.fst
fstcompose output/2nd/chines.fst output/2nd/t-u1.fst > output/2nd/r-union-chines.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-chines.fst | dot -Tpdf > output/2nd/r-union-chines.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/pichar.txt | fstarcsort > output/2nd/pichar.fst
fstcompose output/2nd/pichar.fst output/2nd/t-u1.fst > output/2nd/r-union-pichar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-pichar.fst | dot -Tpdf > output/2nd/r-union-pichar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/acolhimento.txt | fstarcsort > output/2nd/acolhimento.fst
fstcompose output/2nd/acolhimento.fst output/2nd/t-u1.fst > output/2nd/r-union-acolhimento.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-acolhimento.fst | dot -Tpdf > output/2nd/r-union-acolhimento.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/alho.txt | fstarcsort > output/2nd/alho.fst
fstcompose output/2nd/alho.fst output/2nd/t-u1.fst > output/2nd/r-union-alho.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-alho.fst | dot -Tpdf > output/2nd/r-union-alho.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/alilha.txt | fstarcsort > output/2nd/alilha.fst
fstcompose output/2nd/alilha.fst output/2nd/t-u1.fst > output/2nd/r-union-alilha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-alilha.fst | dot -Tpdf > output/2nd/r-union-alilha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/bisbilhotar.txt | fstarcsort > output/2nd/bisbilhotar.fst
fstcompose output/2nd/bisbilhotar.fst output/2nd/t-u1.fst > output/2nd/r-union-bisbilhotar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-bisbilhotar.fst | dot -Tpdf > output/2nd/r-union-bisbilhotar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/lhama.txt | fstarcsort > output/2nd/lhama.fst
fstcompose output/2nd/lhama.fst output/2nd/t-u1.fst > output/2nd/r-union-lhama.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-lhama.fst | dot -Tpdf > output/2nd/r-union-lhama.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/lhe.txt | fstarcsort > output/2nd/lhe.fst
fstcompose output/2nd/lhe.fst output/2nd/t-u1.fst > output/2nd/r-union-lhe.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-union-lhe.fst | dot -Tpdf > output/2nd/r-union-lhe.pdf


# nh -> 3
#-------------------------------------------------------------------------------
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/nh-3.txt | fstarcsort > output/2nd/nh-3.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/nh-3.fst | dot -Tpdf  > output/2nd/nh-3.pdf

# test cases
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/nh-3/banhista.txt | fstarcsort > output/2nd/banhista.fst
fstcompose output/2nd/banhista.fst output/2nd/nh-3.fst > output/2nd/r-banhista.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-banhista.fst | dot -Tpdf > output/2nd/r-banhista.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/nh-3/castanha.txt | fstarcsort > output/2nd/castanha.fst
fstcompose output/2nd/castanha.fst output/2nd/nh-3.fst > output/2nd/r-castanha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-castanha.fst | dot -Tpdf > output/2nd/r-castanha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/nh-3/menininho.txt | fstarcsort > output/2nd/menininho.fst
fstcompose output/2nd/menininho.fst output/2nd/nh-3.fst > output/2nd/r-menininho.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-menininho.fst | dot -Tpdf > output/2nd/r-menininho.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/nh-3/nenhum.txt | fstarcsort > output/2nd/nenhum.fst
fstcompose output/2nd/nenhum.fst output/2nd/nh-3.fst > output/2nd/r-nenhum.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-nenhum.fst | dot -Tpdf > output/2nd/r-nenhum.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/nh-3/nhazinha.txt | fstarcsort > output/2nd/nhazinha.fst
fstcompose output/2nd/nhazinha.fst output/2nd/nh-3.fst > output/2nd/r-nhazinha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-nhazinha.fst | dot -Tpdf > output/2nd/r-nhazinha.pdf


# rr -> 4
#-------------------------------------------------------------------------------
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/rr-4.txt | fstarcsort > output/2nd/rr-4.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/rr-4.fst | dot -Tpdf  > output/2nd/rr-4.pdf

# test cases
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/rr-4/arrasar.txt | fstarcsort > output/2nd/arrasar.fst
fstcompose output/2nd/arrasar.fst output/2nd/rr-4.fst > output/2nd/r-arrasar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-arrasar.fst | dot -Tpdf > output/2nd/r-arrasar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/rr-4/carro.txt | fstarcsort > output/2nd/carro.fst
fstcompose output/2nd/carro.fst output/2nd/rr-4.fst > output/2nd/r-carro.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-carro.fst | dot -Tpdf > output/2nd/r-carro.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/rr-4/corrupto.txt | fstarcsort > output/2nd/corrupto.fst
fstcompose output/2nd/corrupto.fst output/2nd/rr-4.fst > output/2nd/r-corrupto.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-corrupto.fst | dot -Tpdf > output/2nd/r-corrupto.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/rr-4/errar.txt | fstarcsort > output/2nd/errar.fst
fstcompose output/2nd/errar.fst output/2nd/rr-4.fst > output/2nd/r-errar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-errar.fst | dot -Tpdf > output/2nd/r-errar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/rr-4/raro.txt | fstarcsort > output/2nd/raro.fst
fstcompose output/2nd/raro.fst output/2nd/rr-4.fst > output/2nd/r-raro.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-raro.fst | dot -Tpdf > output/2nd/r-raro.pdf

# ss -> s
#-------------------------------------------------------------------------------
#fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/ss-s.txt | fstarcsort > output/2nd/ss-s.fst
#fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/ss-s.fst | dot -Tpdf  > output/2nd/ss-s.pdf

rm -r output/2nd/*.fst
