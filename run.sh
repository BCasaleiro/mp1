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
