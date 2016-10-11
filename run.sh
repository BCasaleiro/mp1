#!/bin/bash

#global
mkdir -p output

#1st

mkdir -p output/1st

 	#transdutores
rm -f output/1st/s_z.fst output/1st/s_z.pdf
rm -f output/1st/x_z.fst output/1st/x_z.pdf
rm -f output/1st/x_s.fst output/1st/x_s.pdf
	
	#testes
rm -f output/1st/asa.fst output/1st/asa.pdf
rm -f output/1st/casa.fst output/1st/casa.pdf


#s->z between vowels
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/s_z.txt | fstarcsort > output/1st/s_z.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/s_z.fst | dot -Tpdf  > output/1st/s_z.pdf 

#x->z when word starts with E and followed by vowel
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/x_z.txt | fstarcsort > output/1st/x_z.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/x_z.fst | dot -Tpdf  > output/1st/x_z.pdf

#x->s when word starts with E and followed by consonant
fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/x_s.txt | fstarcsort > output/1st/x_s.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/x_s.fst | dot -Tpdf  > output/1st/x_s.pdf



#2nd