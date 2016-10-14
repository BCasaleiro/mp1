#-------------------------------------------------------------------------------
# Global
#-------------------------------------------------------------------------------
mkdir -p output
mkdir -p output/1st
mkdir -p output/2nd
mkdir -p output/3rd
mkdir -p output/4th
mkdir -p output/final

rm -f output/1st/*.pdf
rm -f output/2nd/*.pdf
rm -f output/3rd/*.pdf
rm -f output/4th/*.pdf
rm -f output/final/*.pdf

#-------------------------------------------------------------------------------
# 1st Step
#-------------------------------------------------------------------------------
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/1st.txt | fstarcsort > output/1st/t-1st.fst
fstrmepsilon output/1st/t-1st.fst | fstarcsort > output/1st/1st.fst
# fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/1st/1st.fst | dot -Tpdf  > output/1st/1st.pdf

# #-------------------------------------------------------------------------------
# # 2nd Step
# #-------------------------------------------------------------------------------
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/2nd.txt | fstarcsort > output/2nd/t-2nd.fst
fstrmepsilon output/2nd/t-2nd.fst | fstarcsort > output/2nd/2nd.fst
# fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/2nd/2nd.fst | dot -Tpdf  > output/2nd/2nd.pdf

# #-------------------------------------------------------------------------------
# # 3rd Step
# #-------------------------------------------------------------------------------
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/3rd.txt | fstarcsort > output/3rd/t-3rd.fst
fstrmepsilon output/3rd/t-3rd.fst | fstarcsort > output/3rd/3rd.fst
# fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/3rd/3rd.fst | dot -Tpdf  > output/3rd/3rd.pdf

# #-------------------------------------------------------------------------------
# # 4th Step
# #-------------------------------------------------------------------------------
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/4th.txt | fstarcsort > output/4th/t-4th.fst
fstrmepsilon output/4th/t-4th.fst | fstarcsort > output/4th/4th.fst
# fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/4th/4th.fst | dot -Tpdf  > output/4th/4th.pdf

# #-------------------------------------------------------------------------------
# # Composing Final Transducer
# #-------------------------------------------------------------------------------
# # 1st with 2nd -> t-1
# #-------------------------------------------------------------------------------
fstcompose output/1st/1st.fst output/2nd/2nd.fst > output/final/t-1.fst
# fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/final/t-1.fst | dot -Tpdf > output/final/t-1.pdf
# # t-1 with 3rd -> t-2
# #-------------------------------------------------------------------------------
fstcompose output/final/t-1.fst output/4th/4th.fst > output/final/t-2.fst
# fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/final/t-2.fst | dot -Tpdf > output/final/t-2.pdf
# # t-2 with 4th -> final
# #-------------------------------------------------------------------------------
fstcompose output/final/t-2.fst output/4th/4th.fst > output/final/final.fst
# fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/final/final.fst | dot -Tpdf > output/final/final.pdf

#-------------------------------------------------------------------------------
# Test Cases
#-------------------------------------------------------------------------------
# Test Cases for the 1st Transducer
#-------------------------------------------------------------------------------
echo 'starting testing for 1st transducer tests'
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/asa.txt | fstarcsort > output/1st/asa.fst
fstcompose output/1st/asa.fst output/final/final.fst > output/1st/r-asa.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/r-asa.fst | dot -Tpdf > output/1st/r-asa.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/casa.txt | fstarcsort > output/1st/casa.fst
fstcompose output/1st/casa.fst output/final/final.fst > output/1st/r-casa.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/r-casa.fst | dot -Tpdf > output/1st/r-casa.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/exame.txt | fstarcsort > output/1st/exame.fst
fstcompose output/1st/exame.fst output/final/final.fst > output/1st/r-exame.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/r-exame.fst | dot -Tpdf > output/1st/r-exame.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/extra.txt | fstarcsort > output/1st/extra.fst
fstcompose output/1st/extra.fst output/final/final.fst > output/1st/r-extra.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/r-extra.fst | dot -Tpdf > output/1st/r-extra.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/exasa.txt | fstarcsort > output/1st/exasa.fst
fstcompose output/1st/exasa.fst output/final/final.fst > output/1st/r-exasa.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/r-exasa.fst | dot -Tpdf > output/1st/r-exasa.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/estra.txt | fstarcsort > output/1st/estra.fst
fstcompose output/1st/estra.fst output/final/final.fst > output/1st/r-estra.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/r-estra.fst | dot -Tpdf > output/1st/r-estra.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/esa.txt | fstarcsort > output/1st/esa.fst
fstcompose output/1st/esa.fst output/final/final.fst > output/1st/r-esa.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/r-esa.fst | dot -Tpdf > output/1st/r-esa.pdf

# Test Cases for the 2nd Transducer
#-------------------------------------------------------------------------------
echo 'starting testing for 2nd transducer tests'
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/chucha.txt | fstarcsort > output/2nd/chucha.fst
fstcompose output/2nd/chucha.fst output/final/final.fst > output/2nd/r-chucha.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-chucha.fst | dot -Tpdf > output/2nd/r-chucha.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/acachar.txt | fstarcsort > output/2nd/acachar.fst
fstcompose output/2nd/acachar.fst output/final/final.fst > output/2nd/r-acachar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-acachar.fst | dot -Tpdf > output/2nd/r-acachar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/achacar.txt | fstarcsort > output/2nd/achacar.fst
fstcompose output/2nd/achacar.fst output/final/final.fst > output/2nd/r-achacar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-achacar.fst | dot -Tpdf > output/2nd/r-achacar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/acho.txt | fstarcsort > output/2nd/acho.fst
fstcompose output/2nd/acho.fst output/final/final.fst > output/2nd/r-acho.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-acho.fst | dot -Tpdf > output/2nd/r-acho.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/chines.txt | fstarcsort > output/2nd/chines.fst
fstcompose output/2nd/chines.fst output/final/final.fst > output/2nd/r-chines.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-chines.fst | dot -Tpdf > output/2nd/r-chines.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/pichar.txt | fstarcsort > output/2nd/pichar.fst
fstcompose output/2nd/pichar.fst output/final/final.fst > output/2nd/r-pichar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-pichar.fst | dot -Tpdf > output/2nd/r-pichar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/acolhimento.txt | fstarcsort > output/2nd/acolhimento.fst
fstcompose output/2nd/acolhimento.fst output/final/final.fst > output/2nd/r-acolhimento.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-acolhimento.fst | dot -Tpdf > output/2nd/r-acolhimento.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/alho.txt | fstarcsort > output/2nd/alho.fst
fstcompose output/2nd/alho.fst output/final/final.fst > output/2nd/r-alho.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-alho.fst | dot -Tpdf > output/2nd/r-alho.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/alilha.txt | fstarcsort > output/2nd/alilha.fst
fstcompose output/2nd/alilha.fst output/final/final.fst > output/2nd/r-alilha.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-alilha.fst | dot -Tpdf > output/2nd/r-alilha.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/bisbilhotar.txt | fstarcsort > output/2nd/bisbilhotar.fst
fstcompose output/2nd/bisbilhotar.fst output/final/final.fst > output/2nd/r-bisbilhotar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-bisbilhotar.fst | dot -Tpdf > output/2nd/r-bisbilhotar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/lhama.txt | fstarcsort > output/2nd/lhama.fst
fstcompose output/2nd/lhama.fst output/final/final.fst > output/2nd/r-lhama.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-lhama.fst | dot -Tpdf > output/2nd/r-lhama.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/lhe.txt | fstarcsort > output/2nd/lhe.fst
fstcompose output/2nd/lhe.fst output/final/final.fst > output/2nd/r-lhe.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-lhe.fst | dot -Tpdf > output/2nd/r-lhe.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/nh-3/banhista.txt | fstarcsort > output/2nd/banhista.fst
fstcompose output/2nd/banhista.fst output/final/final.fst > output/2nd/r-banhista.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-banhista.fst | dot -Tpdf > output/2nd/r-banhista.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/nh-3/castanha.txt | fstarcsort > output/2nd/castanha.fst
fstcompose output/2nd/castanha.fst output/final/final.fst > output/2nd/r-castanha.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-castanha.fst | dot -Tpdf > output/2nd/r-castanha.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/nh-3/menininho.txt | fstarcsort > output/2nd/menininho.fst
fstcompose output/2nd/menininho.fst output/final/final.fst > output/2nd/r-menininho.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-menininho.fst | dot -Tpdf > output/2nd/r-menininho.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/nh-3/nenhum.txt | fstarcsort > output/2nd/nenhum.fst
fstcompose output/2nd/nenhum.fst output/final/final.fst > output/2nd/r-nenhum.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-nenhum.fst | dot -Tpdf > output/2nd/r-nenhum.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/nh-3/nhazinha.txt | fstarcsort > output/2nd/nhazinha.fst
fstcompose output/2nd/nhazinha.fst output/final/final.fst > output/2nd/r-nhazinha.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-nhazinha.fst | dot -Tpdf > output/2nd/r-nhazinha.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/rr-4/arrasar.txt | fstarcsort > output/2nd/arrasar.fst
fstcompose output/2nd/arrasar.fst output/final/final.fst > output/2nd/r-arrasar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-arrasar.fst | dot -Tpdf > output/2nd/r-arrasar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/rr-4/carro.txt | fstarcsort > output/2nd/carro.fst
fstcompose output/2nd/carro.fst output/final/final.fst > output/2nd/r-carro.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-carro.fst | dot -Tpdf > output/2nd/r-carro.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/rr-4/corrupto.txt | fstarcsort > output/2nd/corrupto.fst
fstcompose output/2nd/corrupto.fst output/final/final.fst > output/2nd/r-corrupto.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-corrupto.fst | dot -Tpdf > output/2nd/r-corrupto.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/rr-4/errar.txt | fstarcsort > output/2nd/errar.fst
fstcompose output/2nd/errar.fst output/final/final.fst > output/2nd/r-errar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-errar.fst | dot -Tpdf > output/2nd/r-errar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/rr-4/raro.txt | fstarcsort > output/2nd/raro.fst
fstcompose output/2nd/raro.fst output/final/final.fst > output/2nd/r-raro.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-raro.fst | dot -Tpdf > output/2nd/r-raro.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ss-s/espesso.txt | fstarcsort > output/2nd/espesso.fst
fstcompose output/2nd/espesso.fst output/final/final.fst > output/2nd/r-espesso.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-espesso.fst | dot -Tpdf > output/2nd/r-espesso.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ss-s/massa.txt | fstarcsort > output/2nd/massa.fst
fstcompose output/2nd/massa.fst output/final/final.fst > output/2nd/r-massa.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-massa.fst | dot -Tpdf > output/2nd/r-massa.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ss-s/microssegundo.txt | fstarcsort > output/2nd/microssegundo.fst
fstcompose output/2nd/microssegundo.fst output/final/final.fst > output/2nd/r-microssegundo.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-microssegundo.fst | dot -Tpdf > output/2nd/r-microssegundo.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ss-s/sossego.txt | fstarcsort > output/2nd/sossego.fst
fstcompose output/2nd/sossego.fst output/final/final.fst > output/2nd/r-sossego.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-sossego.fst | dot -Tpdf > output/2nd/r-sossego.pdf

#Test Cases for the 3rd Transducer
#-------------------------------------------------------------------------------
echo 'starting testing for 3rd transducer tests'
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/calar.txt | fstarcsort > output/3rd/calar.fst
fstcompose output/3rd/calar.fst output/final/final.fst > output/3rd/r-calar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/3rd/r-calar.fst | dot -Tpdf > output/3rd/r-calar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/celofane.txt | fstarcsort > output/3rd/celofane.fst
fstcompose output/3rd/celofane.fst output/final/final.fst > output/3rd/r-celofane.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/3rd/r-celofane.fst | dot -Tpdf > output/3rd/r-celofane.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/galo.txt | fstarcsort > output/3rd/galo.fst
fstcompose output/3rd/galo.fst output/final/final.fst > output/3rd/r-galo.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/3rd/r-galo.fst | dot -Tpdf > output/3rd/r-galo.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/gelo.txt | fstarcsort > output/3rd/gelo.fst
fstcompose output/3rd/gelo.fst output/final/final.fst > output/3rd/r-gelo.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/3rd/r-gelo.fst | dot -Tpdf > output/3rd/r-gelo.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/hoje.txt | fstarcsort > output/3rd/hoje.fst
fstcompose output/3rd/hoje.fst output/final/final.fst > output/3rd/r-hoje.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/3rd/r-hoje.fst | dot -Tpdf > output/3rd/r-hoje.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/paz.txt | fstarcsort > output/3rd/paz.fst
fstcompose output/3rd/paz.fst output/final/final.fst > output/3rd/r-paz.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/3rd/r-paz.fst | dot -Tpdf > output/3rd/r-paz.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/quanto.txt | fstarcsort > output/3rd/quanto.fst
fstcompose output/3rd/quanto.fst output/final/final.fst > output/3rd/r-quanto.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/3rd/r-quanto.fst | dot -Tpdf > output/3rd/r-quanto.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/rato.txt | fstarcsort > output/3rd/rato.fst
fstcompose output/3rd/rato.fst output/final/final.fst > output/3rd/r-rato.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/3rd/r-rato.fst | dot -Tpdf > output/3rd/r-rato.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/xerox.txt | fstarcsort > output/3rd/xerox.fst
fstcompose output/3rd/xerox.fst output/final/final.fst > output/3rd/r-xerox.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/3rd/r-xerox.fst | dot -Tpdf > output/3rd/r-xerox.pdf

#Test Cases for the 4th Transducer
#-------------------------------------------------------------------------------
echo 'starting testing for 4th transducer tests'
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/4th/aleluia.txt | fstarcsort > output/4th/aleluia.fst
fstcompose output/4th/aleluia.fst output/final/final.fst > output/4th/r-aleluia.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/4th/r-aleluia.fst | dot -Tpdf > output/4th/r-aleluia.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/4th/aula.txt | fstarcsort > output/4th/aula.fst
fstcompose output/4th/aula.fst output/final/final.fst > output/4th/r-aula.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/4th/r-aula.fst | dot -Tpdf > output/4th/r-aula.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/4th/banana.txt | fstarcsort > output/4th/banana.fst
fstcompose output/4th/banana.fst output/final/final.fst > output/4th/r-banana.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/4th/r-banana.fst | dot -Tpdf > output/4th/r-banana.pdf

# Test Cases for the Final Transducer
#-------------------------------------------------------------------------------
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/final/bernardo.txt | fstarcsort > output/final/bernardo.fst
fstcompose output/final/bernardo.fst output/final/final.fst > output/final/r-bernardo.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/final/r-bernardo.fst | dot -Tpdf > output/final/r-bernardo.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/final/casaleiro.txt | fstarcsort > output/final/casaleiro.fst
fstcompose output/final/casaleiro.fst output/final/final.fst > output/final/r-casaleiro.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/final/r-casaleiro.fst | dot -Tpdf > output/final/r-casaleiro.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/final/joao.txt | fstarcsort > output/final/joao.fst
fstcompose output/final/joao.fst output/final/final.fst > output/final/r-joao.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/final/r-joao.fst | dot -Tpdf > output/final/r-joao.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/final/godinho.txt | fstarcsort > output/final/godinho.fst
fstcompose output/final/godinho.fst output/final/final.fst > output/final/r-godinho.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/final/r-godinho.fst | dot -Tpdf > output/final/r-godinho.pdf

#-------------------------------------------------------------------------------
# Cleaning up the house
#-------------------------------------------------------------------------------
rm -f output/1st/*.fst
rm -f output/2nd/*.fst
rm -f output/3rd/*.fst
rm -f output/4th/*.fst
rm -f output/final/*.fst
