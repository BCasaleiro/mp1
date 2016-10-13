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


fstcompose output/1st/step1.fst output/3rd/step3.fst > output/3rd/stepT1.fst
#fstdraw    --isymbols=syms.txt --osymbols=syms.txt  output/3rd/stepT1.fst | dot -Tpdf  > output/3rd/stepT1.pdf
