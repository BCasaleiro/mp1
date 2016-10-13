
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

# lh -> 2
#-------------------------------------------------------------------------------
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/lh-2.txt | fstarcsort > output/2nd/lh-2.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/lh-2.fst | dot -Tpdf  > output/2nd/lh-2.pdf

# nh -> 3
#-------------------------------------------------------------------------------
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/nh-3.txt | fstarcsort > output/2nd/nh-3.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/nh-3.fst | dot -Tpdf  > output/2nd/nh-3.pdf

# rr -> 4
#-------------------------------------------------------------------------------
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/rr-4.txt | fstarcsort > output/2nd/rr-4.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/rr-4.fst | dot -Tpdf  > output/2nd/rr-4.pdf

# ss -> s
#-------------------------------------------------------------------------------
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/ss-s.txt | fstarcsort > output/2nd/ss-s.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/ss-s.fst | dot -Tpdf  > output/2nd/ss-s.pdf

#-------------------------------------------------------------------------------
# compose between ch -> x and lh -> 2
#-------------------------------------------------------------------------------
fstcompose output/2nd/ch-x.fst output/2nd/lh-2.fst > output/2nd/t-u1.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/t-u1.fst | dot -Tpdf > output/2nd/t-u1.pdf

#-------------------------------------------------------------------------------
# compose between u1 and nh -> 3
#-------------------------------------------------------------------------------
fstcompose output/2nd/t-u1.fst output/2nd/nh-3.fst > output/2nd/t-u2.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/t-u2.fst | dot -Tpdf > output/2nd/t-u2.pdf

#-------------------------------------------------------------------------------
# compose between u2 and rr -> 4
#-------------------------------------------------------------------------------
fstcompose output/2nd/t-u2.fst output/2nd/rr-4.fst > output/2nd/t-u3.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/t-u3.fst | dot -Tpdf > output/2nd/t-u3.pdf

#-------------------------------------------------------------------------------
# compose between u3 and ss-s
#-------------------------------------------------------------------------------
fstcompose output/2nd/t-u3.fst output/2nd/ss-s.fst > output/2nd/t-u4.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/t-u4.fst | dot -Tpdf > output/2nd/t-u4.pdf

# test cases
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/chucha.txt | fstarcsort > output/2nd/chucha.fst
fstcompose output/2nd/chucha.fst output/2nd/t-u4.fst > output/2nd/r-compose-chucha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-chucha.fst | dot -Tpdf > output/2nd/r-compose-chucha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/acachar.txt | fstarcsort > output/2nd/acachar.fst
fstcompose output/2nd/acachar.fst output/2nd/t-u4.fst > output/2nd/r-compose-acachar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-acachar.fst | dot -Tpdf > output/2nd/r-compose-acachar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/achacar.txt | fstarcsort > output/2nd/achacar.fst
fstcompose output/2nd/achacar.fst output/2nd/t-u4.fst > output/2nd/r-compose-achacar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-achacar.fst | dot -Tpdf > output/2nd/r-compose-achacar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/acho.txt | fstarcsort > output/2nd/acho.fst
fstcompose output/2nd/acho.fst output/2nd/t-u4.fst > output/2nd/r-compose-acho.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-acho.fst | dot -Tpdf > output/2nd/r-compose-acho.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/chines.txt | fstarcsort > output/2nd/chines.fst
fstcompose output/2nd/chines.fst output/2nd/t-u4.fst > output/2nd/r-compose-chines.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-chines.fst | dot -Tpdf > output/2nd/r-compose-chines.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ch-x/pichar.txt | fstarcsort > output/2nd/pichar.fst
fstcompose output/2nd/pichar.fst output/2nd/t-u4.fst > output/2nd/r-compose-pichar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-pichar.fst | dot -Tpdf > output/2nd/r-compose-pichar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/acolhimento.txt | fstarcsort > output/2nd/acolhimento.fst
fstcompose output/2nd/acolhimento.fst output/2nd/t-u4.fst > output/2nd/r-compose-acolhimento.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-acolhimento.fst | dot -Tpdf > output/2nd/r-compose-acolhimento.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/alho.txt | fstarcsort > output/2nd/alho.fst
fstcompose output/2nd/alho.fst output/2nd/t-u4.fst > output/2nd/r-compose-alho.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-alho.fst | dot -Tpdf > output/2nd/r-compose-alho.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/alilha.txt | fstarcsort > output/2nd/alilha.fst
fstcompose output/2nd/alilha.fst output/2nd/t-u4.fst > output/2nd/r-compose-alilha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-alilha.fst | dot -Tpdf > output/2nd/r-compose-alilha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/bisbilhotar.txt | fstarcsort > output/2nd/bisbilhotar.fst
fstcompose output/2nd/bisbilhotar.fst output/2nd/t-u4.fst > output/2nd/r-compose-bisbilhotar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-bisbilhotar.fst | dot -Tpdf > output/2nd/r-compose-bisbilhotar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/lhama.txt | fstarcsort > output/2nd/lhama.fst
fstcompose output/2nd/lhama.fst output/2nd/t-u4.fst > output/2nd/r-compose-lhama.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-lhama.fst | dot -Tpdf > output/2nd/r-compose-lhama.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/lh-2/lhe.txt | fstarcsort > output/2nd/lhe.fst
fstcompose output/2nd/lhe.fst output/2nd/t-u4.fst > output/2nd/r-compose-lhe.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-lhe.fst | dot -Tpdf > output/2nd/r-compose-lhe.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/nh-3/banhista.txt | fstarcsort > output/2nd/banhista.fst
fstcompose output/2nd/banhista.fst output/2nd/t-u4.fst > output/2nd/r-compose-banhista.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-banhista.fst | dot -Tpdf > output/2nd/r-compose-banhista.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/nh-3/castanha.txt | fstarcsort > output/2nd/castanha.fst
fstcompose output/2nd/castanha.fst output/2nd/t-u4.fst > output/2nd/r-compose-castanha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-castanha.fst | dot -Tpdf > output/2nd/r-compose-castanha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/nh-3/menininho.txt | fstarcsort > output/2nd/menininho.fst
fstcompose output/2nd/menininho.fst output/2nd/t-u4.fst > output/2nd/r-compose-menininho.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-menininho.fst | dot -Tpdf > output/2nd/r-compose-menininho.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/nh-3/nenhum.txt | fstarcsort > output/2nd/nenhum.fst
fstcompose output/2nd/nenhum.fst output/2nd/t-u4.fst > output/2nd/r-compose-nenhum.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-nenhum.fst | dot -Tpdf > output/2nd/r-compose-nenhum.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/nh-3/nhazinha.txt | fstarcsort > output/2nd/nhazinha.fst
fstcompose output/2nd/nhazinha.fst output/2nd/t-u4.fst > output/2nd/r-compose-nhazinha.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-nhazinha.fst | dot -Tpdf > output/2nd/r-compose-nhazinha.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/rr-4/arrasar.txt | fstarcsort > output/2nd/arrasar.fst
fstcompose output/2nd/arrasar.fst output/2nd/t-u4.fst > output/2nd/r-compose-arrasar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-arrasar.fst | dot -Tpdf > output/2nd/r-compose-arrasar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/rr-4/carro.txt | fstarcsort > output/2nd/carro.fst
fstcompose output/2nd/carro.fst output/2nd/t-u4.fst > output/2nd/r-compose-carro.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-carro.fst | dot -Tpdf > output/2nd/r-compose-carro.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/rr-4/corrupto.txt | fstarcsort > output/2nd/corrupto.fst
fstcompose output/2nd/corrupto.fst output/2nd/t-u4.fst > output/2nd/r-compose-corrupto.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-corrupto.fst | dot -Tpdf > output/2nd/r-compose-corrupto.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/rr-4/errar.txt | fstarcsort > output/2nd/errar.fst
fstcompose output/2nd/errar.fst output/2nd/t-u4.fst > output/2nd/r-compose-errar.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-errar.fst | dot -Tpdf > output/2nd/r-compose-errar.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/rr-4/raro.txt | fstarcsort > output/2nd/raro.fst
fstcompose output/2nd/raro.fst output/2nd/t-u4.fst > output/2nd/r-compose-raro.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-raro.fst | dot -Tpdf > output/2nd/r-compose-raro.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ss-s/espesso.txt | fstarcsort > output/2nd/espesso.fst
fstcompose output/2nd/espesso.fst output/2nd/t-u4.fst > output/2nd/r-compose-espesso.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-espesso.fst | dot -Tpdf > output/2nd/r-compose-espesso.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ss-s/massa.txt | fstarcsort > output/2nd/massa.fst
fstcompose output/2nd/massa.fst output/2nd/t-u4.fst > output/2nd/r-compose-massa.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-massa.fst | dot -Tpdf > output/2nd/r-compose-massa.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ss-s/microssegundo.txt | fstarcsort > output/2nd/microssegundo.fst
fstcompose output/2nd/microssegundo.fst output/2nd/t-u4.fst > output/2nd/r-compose-microssegundo.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-microssegundo.fst | dot -Tpdf > output/2nd/r-compose-microssegundo.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/2nd/ss-s/sossego.txt | fstarcsort > output/2nd/sossego.fst
fstcompose output/2nd/sossego.fst output/2nd/t-u4.fst > output/2nd/r-compose-sossego.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/2nd/r-compose-sossego.fst | dot -Tpdf > output/2nd/r-compose-sossego.pdf

rm -r output/2nd/*.fst
