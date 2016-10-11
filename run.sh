#!/bin/bash

#global
mkdir -p output

#1st

mkdir -p output/1st

 	#transdutores
rm -f output/1st/s_z.fst output/1st/s_z.pdf
rm -f output/1st/x_z.fst output/1st/x_z.pdf
rm -f output/1st/x_s.fst output/1st/x_s.pdf

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