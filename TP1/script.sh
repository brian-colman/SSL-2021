#!/bin/bash 

# A 
sed -E 's/\.| \. /&\n/g' breve_historia.txt > breve_historia1.txt 
# B 
sed -r '/^\s*$/d' breve_historia.txt
# C 
sed -E 's/\.| \. /&\n/g' breve_historia.txt | sed -r '/^\s*$/d' > breve_historia_2.txt
# D
echo $(sed -E 's/\.| \. /&\n/g' breve_historia.txt | grep -n -i '.\bguerra\b.')

# E

echo $(sed -E 's/\.| \. /&\n/g' breve_historia.txt | grep -n -i -E '^A.*(s|s\.)$')

# F

sed -E 's/\.| \. /&\n/g' breve_historia.txt | grep -i -c '\bperonismo\b'

# G

echo $(sed -E 's/\.| \. /&\n/g' breve_historia.txt | grep -n -E '\bRosas\b|\bSarmiento\b')
# H 

echo $(sed -E 's/\.| \. /&\n/g' breve_historia.txt | grep -n -E '18[0-9][1-9]')
# I 

sed 's/^[a-zA-Z]*\b//g' breve_historia.txt
# J 

ls *.txt
