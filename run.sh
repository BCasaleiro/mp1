#global
mkdir -p output

mkdir -p output/1st

 	#transdutores


rm -f output/1st/trans1.fst output/1st/trans1.pdf


#main
rm -f output/1st/step1.fst output/1st/step1.pdf

	#testes
rm -f output/1st/casa.fst output/1st/casa.pdf
rm -f output/1st/asa.fst output/1st/asa.pdf
rm -f output/1st/exame.fst output/1st/exame.pdf
rm -f output/1st/extra.fst output/1st/extra.pdf
rm -f output/1st/test1.fst output/1st/test1.pdf
rm -f output/1st/test2.fst output/1st/test2.pdf
rm -f output/1st/test3.fst output/1st/test3.pdf

	#teste "casa"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/casa.txt | fstarcsort > output/1st/casa.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/1st/casa.fst | dot -Tpdf  > output/1st/casa.pdf

	#teste "asa"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/asa.txt | fstarcsort > output/1st/asa.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/1st/asa.fst | dot -Tpdf  > output/1st/asa.pdf

	#teste "exame"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/exame.txt | fstarcsort > output/1st/exame.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/1st/exame.fst | dot -Tpdf  > output/1st/exame.pdf

	#teste "extra"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/1st/extra.txt | fstarcsort > output/1st/extra.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/1st/extra.fst | dot -Tpdf  > output/1st/extra.pdf

#transdutores
#s->z between vowels
#x->z when word starts with E and followed by vowel
#x->s when word starts with E and followed by consonant

#main transducer
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/1st/trans1.txt | fstarcsort > output/1st/trans1.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/1st/trans1.fst | dot -Tpdf  > output/1st/trans1.pdf


fstrmepsilon output/1st/trans1.fst > output/1st/step1.fst

fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/1st/step1.fst | dot -Tpdf  > output/1st/step1.pdf

#testes:
#casa
fstcompose output/1st/casa.fst output/1st/step1.fst > output/1st/test1.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/test1.fst | dot -Tpdf > output/1st/test1.pdf

#exame
fstcompose output/1st/exame.fst output/1st/step1.fst > output/1st/test2.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/test2.fst | dot -Tpdf > output/1st/test2.pdf

#exame
fstcompose output/1st/asa.fst output/1st/step1.fst > output/1st/test3.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/test3.fst | dot -Tpdf > output/1st/test3.pdf

#extra
fstcompose output/1st/extra.fst output/1st/step1.fst > output/1st/test4.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/1st/test4.fst | dot -Tpdf > output/1st/test4.pdf


#2nd



#3rd

mkdir -p output/3rd

 	#transdutores
rm -f output/3rd/trans1.fst output/3rd/trans1.pdf

	#temporais
rm -f output/3rd/step2_t1.fst output/3rd/step2_t1.pdf

	#main transducer
rm -f output/3rd/step2.fst output/3rd/step2.pdf


	#testes
rm -f output/3rd/quanto.fst output/3rd/quanto.pdf
rm -f output/3rd/celofane.fst output/3rd/celofane.pdf
rm -f output/3rd/calar.fst output/3rd/calar.pdf
rm -f output/3rd/paz.fst output/3rd/paz.pdf
rm -f output/3rd/gelo.fst output/3rd/gelo.pdf
rm -f output/3rd/galo.fst output/3rd/galo.pdf
rm -f output/3rd/xerox.fst output/3rd/xerox.pdf
rm -f output/3rd/rato.fst output/3rd/rato.pdf
rm -f output/3rd/hoje.fst output/3rd/hoje.pdf

rm -f output/3rd/test1.fst output/3rd/test1.pdf
rm -f output/3rd/test2.fst output/3rd/test2.pdf
rm -f output/3rd/test3.fst output/3rd/test3.pdf
rm -f output/3rd/test4.fst output/3rd/test4.pdf
rm -f output/3rd/test5.fst output/3rd/test5.pdf
rm -f output/3rd/test6.fst output/3rd/test6.pdf
rm -f output/3rd/test7.fst output/3rd/test7.pdf
rm -f output/3rd/test8.fst output/3rd/test8.pdf
rm -f output/3rd/test9.fst output/3rd/test9.pdf

	#teste "quanto"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/quanto.txt | fstarcsort > output/3rd/quanto.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/quanto.fst | dot -Tpdf  > output/3rd/quanto.pdf

	#teste "celofane"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/celofane.txt | fstarcsort > output/3rd/celofane.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/celofane.fst | dot -Tpdf  > output/3rd/celofane.pdf

	#teste "calar"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/calar.txt | fstarcsort > output/3rd/calar.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/calar.fst | dot -Tpdf  > output/3rd/calar.pdf

	#teste "paz"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/paz.txt | fstarcsort > output/3rd/paz.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/paz.fst | dot -Tpdf  > output/3rd/paz.pdf

	#teste "gelo"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/gelo.txt | fstarcsort > output/3rd/gelo.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/gelo.fst | dot -Tpdf  > output/3rd/gelo.pdf

	#teste "galo"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/galo.txt | fstarcsort > output/3rd/galo.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/galo.fst | dot -Tpdf  > output/3rd/galo.pdf

	#teste "xerox"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/xerox.txt | fstarcsort > output/3rd/xerox.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/xerox.fst | dot -Tpdf  > output/3rd/xerox.pdf

	#teste "rato"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/rato.txt | fstarcsort > output/3rd/rato.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/rato.fst | dot -Tpdf  > output/3rd/rato.pdf

	#teste "hoje"
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/3rd/hoje.txt | fstarcsort > output/3rd/hoje.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/hoje.fst | dot -Tpdf  > output/3rd/hoje.pdf


#transdutores
#R->4 Beggining of words
#h->eps
#q->k
#z->s In the end of word
#x->ks In the end of word

#Main transducer:
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/3rd/trans3.txt | fstarcsort > output/3rd/trans3.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/trans3.fst | dot -Tpdf  > output/3rd/trans3.pdf


fstrmepsilon output/3rd/trans3.fst > output/3rd/step3.fst

fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/step3.fst | dot -Tpdf  > output/3rd/step2.pdf

#tests
fstcompose output/3rd/quanto.fst output/3rd/step3.fst > output/3rd/test1.fst
fstcompose output/3rd/celofane.fst output/3rd/step3.fst > output/3rd/test2.fst
fstcompose output/3rd/calar.fst output/3rd/step3.fst > output/3rd/test3.fst
fstcompose output/3rd/paz.fst output/3rd/step3.fst > output/3rd/test4.fst
fstcompose output/3rd/gelo.fst output/3rd/step3.fst > output/3rd/test5.fst
fstcompose output/3rd/galo.fst output/3rd/step3.fst > output/3rd/test6.fst
fstcompose output/3rd/xerox.fst output/3rd/step3.fst > output/3rd/test7.fst
fstcompose output/3rd/rato.fst output/3rd/step3.fst > output/3rd/test8.fst
fstcompose output/3rd/hoje.fst output/3rd/step3.fst > output/3rd/test9.fst

#draw tests
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/test1.fst | dot -Tpdf  > output/3rd/test1.pdf
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/test2.fst | dot -Tpdf  > output/3rd/test2.pdf
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/test3.fst | dot -Tpdf  > output/3rd/test3.pdf
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/test4.fst | dot -Tpdf  > output/3rd/test4.pdf
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/test5.fst | dot -Tpdf  > output/3rd/test5.pdf
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/test6.fst | dot -Tpdf  > output/3rd/test6.pdf
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/test7.fst | dot -Tpdf  > output/3rd/test7.pdf
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/test8.fst | dot -Tpdf  > output/3rd/test8.pdf
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/test9.fst | dot -Tpdf  > output/3rd/test9.pdf


#-------------------------------------------------------------------------------
# TODO CASALEIRO
#-------------------------------------------------------------------------------

# 2nd
mkdir -p output/2nd

rm -f output/2nd/*.pdf

# ch -> x
#-------------------------------------------------------------------------------
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/2nd/ch-x.txt | fstarcsort > output/2nd/ch-x.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/2nd/ch-x.fst | dot -Tpdf  > output/2nd/ch-x.pdf

# lh -> 2
#-------------------------------------------------------------------------------
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/2nd/lh-2.txt | fstarcsort > output/2nd/lh-2.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/2nd/lh-2.fst | dot -Tpdf  > output/2nd/lh-2.pdf

# nh -> 3
#-------------------------------------------------------------------------------
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/2nd/nh-3.txt | fstarcsort > output/2nd/nh-3.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/2nd/nh-3.fst | dot -Tpdf  > output/2nd/nh-3.pdf

# rr -> 4
#-------------------------------------------------------------------------------
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/2nd/rr-4.txt | fstarcsort > output/2nd/rr-4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/2nd/rr-4.fst | dot -Tpdf  > output/2nd/rr-4.pdf

# ss -> s
#-------------------------------------------------------------------------------
fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/2nd/ss-s.txt | fstarcsort > output/2nd/ss-s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/2nd/ss-s.fst | dot -Tpdf  > output/2nd/ss-s.pdf

#-------------------------------------------------------------------------------
# compose between ch -> x and lh -> 2
#-------------------------------------------------------------------------------
fstcompose output/2nd/ch-x.fst output/2nd/lh-2.fst > output/2nd/t-u1.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/t-u1.fst | dot -Tpdf > output/2nd/t-u1.pdf

#-------------------------------------------------------------------------------
# compose between u1 and nh -> 3
#-------------------------------------------------------------------------------
fstcompose output/2nd/t-u1.fst output/2nd/nh-3.fst > output/2nd/t-u2.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/t-u2.fst | dot -Tpdf > output/2nd/t-u2.pdf

#-------------------------------------------------------------------------------
# compose between u2 and rr -> 4
#-------------------------------------------------------------------------------
fstcompose output/2nd/t-u2.fst output/2nd/rr-4.fst > output/2nd/t-u3.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/t-u3.fst | dot -Tpdf > output/2nd/t-u3.pdf

#-------------------------------------------------------------------------------
# compose between u3 and ss-s
#-------------------------------------------------------------------------------
fstcompose output/2nd/t-u3.fst output/2nd/ss-s.fst > output/2nd/t-u4.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/t-u4.fst | dot -Tpdf > output/2nd/t-u4.pdf

# test cases
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/chucha.txt | fstarcsort > output/2nd/chucha.fst
fstcompose output/2nd/chucha.fst output/2nd/t-u4.fst > output/2nd/r-compose-chucha.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-chucha.fst | dot -Tpdf > output/2nd/r-compose-chucha.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/acachar.txt | fstarcsort > output/2nd/acachar.fst
fstcompose output/2nd/acachar.fst output/2nd/t-u4.fst > output/2nd/r-compose-acachar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-acachar.fst | dot -Tpdf > output/2nd/r-compose-acachar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/achacar.txt | fstarcsort > output/2nd/achacar.fst
fstcompose output/2nd/achacar.fst output/2nd/t-u4.fst > output/2nd/r-compose-achacar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-achacar.fst | dot -Tpdf > output/2nd/r-compose-achacar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/acho.txt | fstarcsort > output/2nd/acho.fst
fstcompose output/2nd/acho.fst output/2nd/t-u4.fst > output/2nd/r-compose-acho.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-acho.fst | dot -Tpdf > output/2nd/r-compose-acho.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/chines.txt | fstarcsort > output/2nd/chines.fst
fstcompose output/2nd/chines.fst output/2nd/t-u4.fst > output/2nd/r-compose-chines.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-chines.fst | dot -Tpdf > output/2nd/r-compose-chines.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ch-x/pichar.txt | fstarcsort > output/2nd/pichar.fst
fstcompose output/2nd/pichar.fst output/2nd/t-u4.fst > output/2nd/r-compose-pichar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-pichar.fst | dot -Tpdf > output/2nd/r-compose-pichar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/acolhimento.txt | fstarcsort > output/2nd/acolhimento.fst
fstcompose output/2nd/acolhimento.fst output/2nd/t-u4.fst > output/2nd/r-compose-acolhimento.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-acolhimento.fst | dot -Tpdf > output/2nd/r-compose-acolhimento.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/alho.txt | fstarcsort > output/2nd/alho.fst
fstcompose output/2nd/alho.fst output/2nd/t-u4.fst > output/2nd/r-compose-alho.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-alho.fst | dot -Tpdf > output/2nd/r-compose-alho.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/alilha.txt | fstarcsort > output/2nd/alilha.fst
fstcompose output/2nd/alilha.fst output/2nd/t-u4.fst > output/2nd/r-compose-alilha.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-alilha.fst | dot -Tpdf > output/2nd/r-compose-alilha.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/bisbilhotar.txt | fstarcsort > output/2nd/bisbilhotar.fst
fstcompose output/2nd/bisbilhotar.fst output/2nd/t-u4.fst > output/2nd/r-compose-bisbilhotar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-bisbilhotar.fst | dot -Tpdf > output/2nd/r-compose-bisbilhotar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/lhama.txt | fstarcsort > output/2nd/lhama.fst
fstcompose output/2nd/lhama.fst output/2nd/t-u4.fst > output/2nd/r-compose-lhama.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-lhama.fst | dot -Tpdf > output/2nd/r-compose-lhama.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/lh-2/lhe.txt | fstarcsort > output/2nd/lhe.fst
fstcompose output/2nd/lhe.fst output/2nd/t-u4.fst > output/2nd/r-compose-lhe.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-lhe.fst | dot -Tpdf > output/2nd/r-compose-lhe.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/nh-3/banhista.txt | fstarcsort > output/2nd/banhista.fst
fstcompose output/2nd/banhista.fst output/2nd/t-u4.fst > output/2nd/r-compose-banhista.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-banhista.fst | dot -Tpdf > output/2nd/r-compose-banhista.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/nh-3/castanha.txt | fstarcsort > output/2nd/castanha.fst
fstcompose output/2nd/castanha.fst output/2nd/t-u4.fst > output/2nd/r-compose-castanha.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-castanha.fst | dot -Tpdf > output/2nd/r-compose-castanha.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/nh-3/menininho.txt | fstarcsort > output/2nd/menininho.fst
fstcompose output/2nd/menininho.fst output/2nd/t-u4.fst > output/2nd/r-compose-menininho.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-menininho.fst | dot -Tpdf > output/2nd/r-compose-menininho.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/nh-3/nenhum.txt | fstarcsort > output/2nd/nenhum.fst
fstcompose output/2nd/nenhum.fst output/2nd/t-u4.fst > output/2nd/r-compose-nenhum.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-nenhum.fst | dot -Tpdf > output/2nd/r-compose-nenhum.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/nh-3/nhazinha.txt | fstarcsort > output/2nd/nhazinha.fst
fstcompose output/2nd/nhazinha.fst output/2nd/t-u4.fst > output/2nd/r-compose-nhazinha.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-nhazinha.fst | dot -Tpdf > output/2nd/r-compose-nhazinha.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/rr-4/arrasar.txt | fstarcsort > output/2nd/arrasar.fst
fstcompose output/2nd/arrasar.fst output/2nd/t-u4.fst > output/2nd/r-compose-arrasar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-arrasar.fst | dot -Tpdf > output/2nd/r-compose-arrasar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/rr-4/carro.txt | fstarcsort > output/2nd/carro.fst
fstcompose output/2nd/carro.fst output/2nd/t-u4.fst > output/2nd/r-compose-carro.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-carro.fst | dot -Tpdf > output/2nd/r-compose-carro.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/rr-4/corrupto.txt | fstarcsort > output/2nd/corrupto.fst
fstcompose output/2nd/corrupto.fst output/2nd/t-u4.fst > output/2nd/r-compose-corrupto.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-corrupto.fst | dot -Tpdf > output/2nd/r-compose-corrupto.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/rr-4/errar.txt | fstarcsort > output/2nd/errar.fst
fstcompose output/2nd/errar.fst output/2nd/t-u4.fst > output/2nd/r-compose-errar.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-errar.fst | dot -Tpdf > output/2nd/r-compose-errar.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/rr-4/raro.txt | fstarcsort > output/2nd/raro.fst
fstcompose output/2nd/raro.fst output/2nd/t-u4.fst > output/2nd/r-compose-raro.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-raro.fst | dot -Tpdf > output/2nd/r-compose-raro.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ss-s/espesso.txt | fstarcsort > output/2nd/espesso.fst
fstcompose output/2nd/espesso.fst output/2nd/t-u4.fst > output/2nd/r-compose-espesso.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-espesso.fst | dot -Tpdf > output/2nd/r-compose-espesso.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ss-s/massa.txt | fstarcsort > output/2nd/massa.fst
fstcompose output/2nd/massa.fst output/2nd/t-u4.fst > output/2nd/r-compose-massa.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-massa.fst | dot -Tpdf > output/2nd/r-compose-massa.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ss-s/microssegundo.txt | fstarcsort > output/2nd/microssegundo.fst
fstcompose output/2nd/microssegundo.fst output/2nd/t-u4.fst > output/2nd/r-compose-microssegundo.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-microssegundo.fst | dot -Tpdf > output/2nd/r-compose-microssegundo.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/2nd/ss-s/sossego.txt | fstarcsort > output/2nd/sossego.fst
fstcompose output/2nd/sossego.fst output/2nd/t-u4.fst > output/2nd/r-compose-sossego.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/2nd/r-compose-sossego.fst | dot -Tpdf > output/2nd/r-compose-sossego.pdf

rm -r output/2nd/*.fst

# 4th
mkdir -p output/4th

rm -f output/4th/*.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  src/4th.txt | fstarcsort > output/4th/4th.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/4th/4th.fst | dot -Tpdf  > output/4th/4th.pdf

# test cases
fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/4th/aleluia.txt | fstarcsort > output/4th/aleluia.fst
fstcompose output/4th/aleluia.fst output/4th/4th.fst > output/4th/r-aleluia.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/4th/r-aleluia.fst | dot -Tpdf > output/4th/r-aleluia.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/4th/aula.txt | fstarcsort > output/4th/aula.fst
fstcompose output/4th/aula.fst output/4th/4th.fst > output/4th/r-aula.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/4th/r-aula.fst | dot -Tpdf > output/4th/r-aula.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  input/4th/banana.txt | fstarcsort > output/4th/banana.fst
fstcompose output/4th/banana.fst output/4th/4th.fst > output/4th/r-banana.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  output/4th/r-banana.fst | dot -Tpdf > output/4th/r-banana.pdf

rm -r output/4th/*.fst
