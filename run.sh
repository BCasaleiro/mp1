#!/bin/bash

#global
mkdir -p output

#1st

mkdir -p output/1st

 	#transdutores
rm -f output/1st/s_z.fst output/1st/s_z.pdf
rm -f output/1st/x_z.fst output/1st/x_z.pdf
rm -f output/1st/x_s.fst output/1st/x_s.pdf

	#temporary
rm -f output/1st/step_t1.fst output/1st/step_t1.pdf
rm -f output/1st/step_t2.fst output/1st/step_t2.pdf


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
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/1st/casa.txt | fstarcsort > output/1st/casa.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/casa.fst | dot -Tpdf  > output/1st/casa.pdf

	#teste "asa"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/1st/asa.txt | fstarcsort > output/1st/asa.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/asa.fst | dot -Tpdf  > output/1st/asa.pdf
	
	#teste "exame"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/1st/exame.txt | fstarcsort > output/1st/exame.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/exame.fst | dot -Tpdf  > output/1st/exame.pdf

	#teste "extra"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/1st/extra.txt | fstarcsort > output/1st/extra.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/extra.fst | dot -Tpdf  > output/1st/extra.pdf

#transdutores
#s->z between vowels
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/s_z.txt | fstarcsort > output/1st/s_z.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/s_z.fst | dot -Tpdf  > output/1st/s_z.pdf 

#x->z when word starts with E and followed by vowel
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/x_z.txt | fstarcsort > output/1st/x_z.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/x_z.fst | dot -Tpdf  > output/1st/x_z.pdf

#x->s when word starts with E and followed by consonant
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/x_s.txt | fstarcsort > output/1st/x_s.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/x_s.fst | dot -Tpdf  > output/1st/x_s.pdf

#Combine the three transductors:
fstunion output/1st/s_z.fst output/1st/x_s.fst > output/1st/step_t1.fst
fstunion output/1st/step_t1.fst output/1st/x_z.fst > output/1st/step_t2.fst

fstrmepsilon output/1st/step_t2.fst > output/1st/step1.fst

fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/step1.fst | dot -Tpdf  > output/1st/step1.pdf

#testes:
#casa
fstcompose output/1st/casa.fst output/1st/step1.fst > output/1st/test1.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/1st/test1.fst | dot -Tpdf > output/1st/test1.pdf

#exame
fstcompose output/1st/exame.fst output/1st/step1.fst > output/1st/test2.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/1st/test2.fst | dot -Tpdf > output/1st/test2.pdf

#exame
fstcompose output/1st/exame.fst output/1st/step1.fst > output/1st/test3.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/1st/test3.fst | dot -Tpdf > output/1st/test3.pdf

#extra
fstcompose output/1st/extra.fst output/1st/step1.fst > output/1st/test4.fst
fstdraw --isymbols=letras.sym --osymbols=letras.sym  output/1st/test4.fst | dot -Tpdf > output/1st/test4.pdf


#2nd



#3rd

mkdir -p output/3rd

 	#transdutores
rm -f output/3rd/r_4.fst output/3rd/r_4.pdf
rm -f output/3rd/h_eps.fst output/3rd/h_eps.pdf
rm -f output/3rd/q_k.fst output/3rd/q_k.pdf
rm -f output/3rd/z_s.fst output/3rd/z_s.pdf
rm -f output/3rd/x_ks.fst output/3rd/x_ks.pdf

	#temporais
rm -f output/3rd/step2_t1.fst output/3rd/step2_t1.pdf
rm -f output/3rd/step2_t2.fst output/3rd/step2_t2.pdf
rm -f output/3rd/step2_t3.fst output/3rd/step2_t3.pdf
rm -f output/3rd/step2_t4.fst output/3rd/step2_t4.pdf

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
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/3rd/quanto.txt | fstarcsort > output/3rd/quanto.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/quanto.fst | dot -Tpdf  > output/3rd/quanto.pdf

	#teste "celofane"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/3rd/celofane.txt | fstarcsort > output/3rd/celofane.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/celofane.fst | dot -Tpdf  > output/3rd/celofane.pdf
	
	#teste "calar"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/3rd/calar.txt | fstarcsort > output/3rd/calar.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/calar.fst | dot -Tpdf  > output/3rd/calar.pdf

	#teste "paz"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/3rd/paz.txt | fstarcsort > output/3rd/paz.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/paz.fst | dot -Tpdf  > output/3rd/paz.pdf

	#teste "gelo"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/3rd/gelo.txt | fstarcsort > output/3rd/gelo.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/gelo.fst | dot -Tpdf  > output/3rd/gelo.pdf

	#teste "galo"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/3rd/galo.txt | fstarcsort > output/3rd/galo.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/galo.fst | dot -Tpdf  > output/3rd/galo.pdf

	#teste "xerox"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/3rd/xerox.txt | fstarcsort > output/3rd/xerox.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/xerox.fst | dot -Tpdf  > output/3rd/xerox.pdf

	#teste "rato"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/3rd/rato.txt | fstarcsort > output/3rd/rato.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/rato.fst | dot -Tpdf  > output/3rd/rato.pdf

	#teste "hoje"
fstcompile --isymbols=letras.sym --osymbols=letras.sym  input/3rd/hoje.txt | fstarcsort > output/3rd/hoje.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/hoje.fst | dot -Tpdf  > output/3rd/hoje.pdf


#transdutores
#R->4 Beggining of words
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/3rd/r_4.txt | fstarcsort > output/3rd/r_4.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/r_4.fst | dot -Tpdf  > output/3rd/r_4.pdf 

#h->eps
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/3rd/h_eps.txt | fstarcsort > output/3rd/h_eps.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/h_eps.fst | dot -Tpdf  > output/3rd/h_eps.pdf 

#q->k
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/3rd/q_k.txt | fstarcsort > output/3rd/q_k.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/q_k.fst | dot -Tpdf  > output/3rd/q_k.pdf 

#z->s In the end of word
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/3rd/z_s.txt | fstarcsort > output/3rd/z_s.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/z_s.fst | dot -Tpdf  > output/3rd/z_s.pdf 

#x->ks In the end of word
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/3rd/x_ks.txt | fstarcsort > output/3rd/x_ks.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/x_ks.fst | dot -Tpdf  > output/3rd/x_ks.pdf 

#Combine the transductors:
#r_4 and h_eps
fstunion output/3rd/r_4.fst output/3rd/h_eps.fst > output/3rd/step2_t1.fst

#step2_t1 and q_k
fstunion output/3rd/step2_t1.fst output/3rd/q_k.fst > output/3rd/step2_t2.fst

#step2_t2 and z_s
fstunion output/3rd/step2_t2.fst output/3rd/z_s.fst > output/3rd/step2_t3.fst

#step2_t3 and x_ks
fstunion output/3rd/step2_t3.fst output/3rd/x_ks.fst > output/3rd/step2_t4.fst


fstrmepsilon output/3rd/step2_t4.fst > output/3rd/step2.fst

fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/step2.fst | dot -Tpdf  > output/3rd/step2.pdf

#tests
fstcompose output/3rd/quanto.fst output/3rd/step2.fst > output/3rd/test1.fst
fstcompose output/3rd/celofane.fst output/3rd/step2.fst > output/3rd/test2.fst
fstcompose output/3rd/calar.fst output/3rd/step2.fst > output/3rd/test3.fst
fstcompose output/3rd/paz.fst output/3rd/step2.fst > output/3rd/test4.fst
fstcompose output/3rd/gelo.fst output/3rd/step2.fst > output/3rd/test5.fst
fstcompose output/3rd/galo.fst output/3rd/step2.fst > output/3rd/test6.fst
fstcompose output/3rd/xerox.fst output/3rd/step2.fst > output/3rd/test7.fst
fstcompose output/3rd/rato.fst output/3rd/step2.fst > output/3rd/test8.fst
fstcompose output/3rd/hoje.fst output/3rd/step2.fst > output/3rd/test9.fst

#draw tests
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/test1.fst | dot -Tpdf  > output/3rd/test1.pdf
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/test2.fst | dot -Tpdf  > output/3rd/test2.pdf
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/test3.fst | dot -Tpdf  > output/3rd/test3.pdf
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/test4.fst | dot -Tpdf  > output/3rd/test4.pdf
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/test5.fst | dot -Tpdf  > output/3rd/test5.pdf
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/test6.fst | dot -Tpdf  > output/3rd/test6.pdf
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/test7.fst | dot -Tpdf  > output/3rd/test7.pdf
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/test8.fst | dot -Tpdf  > output/3rd/test8.pdf
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/3rd/test9.fst | dot -Tpdf  > output/3rd/test9.pdf

