
# !/bin/bash

# global
mkdir -p output

# 1st
# mkdir -p output/1st
#
# rm -f output/1st/s_z.fst output/1st/s_z.pdf
# rm -f output/1st/x_z.fst output/1st/x_z.pdf
# rm -f output/1st/x_s.fst outputs/1st/x_s.pdf
#
# fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/s_z.txt | fstarcsort > outputs/1st/s_z.fst
# fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/s_z.fst | dot -Tpdf  > output/1st/s_z.pdf
#
# fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/x_z.txt | fstarcsort > output/1st/x_z.fst
# fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/x_z.fst | dot -Tpdf  > output/1st/x_z.pdf
#
# fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/1st/x_s.txt | fstarcsort > output/1st/x_s.fst
# fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/1st/x_s.fst | dot -Tpdf  > output/1st/x_s.pdf

# 2nd
mkdir -p output/2nd

# ch -> x
rm -f output/2nd/ch-x.fst output/2nd/ch-x.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/ch-x.txt | fstarcsort > output/2nd/ch-x.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/ch-x.fst | dot -Tpdf  > output/2nd/ch-x.pdf

# lh -> 2
rm -f output/2nd/lh-2.fst output/2nd/lh-2.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/lh-2.txt | fstarcsort > output/2nd/lh-2.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/lh-2.fst | dot -Tpdf  > output/2nd/lh-2.pdf

# nh -> 3
rm -f output/2nd/nh-3.fst output/2nd/nh-3.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/nh-3.txt | fstarcsort > output/2nd/nh-3.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/nh-3.fst | dot -Tpdf  > output/2nd/nh-3.pdf

# rr -> 4
rm -f output/2nd/rr-4.fst output/2nd/rr-4.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/rr-4.txt | fstarcsort > output/2nd/rr-4.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/rr-4.fst | dot -Tpdf  > output/2nd/rr-4.pdf

# ss -> s
rm -f output/2nd/ss-s.fst output/2nd/ss-s.pdf

fstcompile --isymbols=letras.sym --osymbols=letras.sym  src/2nd/ss-s.txt | fstarcsort > output/2nd/ss-s.fst
fstdraw    --isymbols=letras.sym --osymbols=letras.sym  output/2nd/ss-s.fst | dot -Tpdf  > output/2nd/ss-s.pdf
