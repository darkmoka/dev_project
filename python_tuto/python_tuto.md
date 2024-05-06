# Python tuto 

Lien : https://docs.python.org/fr/3/tutorial/introduction.html

# les commentaires 

# this is the first comment
spam = 1  # and this is the second comment
          # ... and now a third!
text = "# This is not a comment because it's inside quotes."

## Les nombres 

ex:
2 + 2
4
50 - 5*6
20
(50 - 5*6) / 4
5.0
8 / 5  # division always returns a floating point number
1.6

- INTEGER = int = nombres entiers
- FLOAT = float = nombreé décimaux

## Opérations sur les nombres 

ex: 
17 / 3  # classic division returns a float
5.666666666666667
17 // 3  # floor division discards the fractional part
5
17 % 3  # the % operator returns the remainder of the division
2
5 * 3 + 2  # floored quotient * divisor + remainder
17

- +
- -
- *
- / = les divisions donnent toujours des float 
- // = une division qui donne toujours un résultat entier
- % = pour obtenir le reste d'une division entière
- ** = calcule des puissances
- = (égal) est utilisé pour affecter une valeur à une variable

ex: 
width = 20
height = 5 * 9
width * height
900

Si une variable n'est pas fini, son utilisation produit une erreur : 

ex: 
n  # try to access an undefined variable
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'n' is not defined

- _ la dernière expression affichée est affecté à la variable _

ex:
tax = 12.5 / 100
price = 100.50
price * tax
12.5625
price + _
113.0625
round(_, 2)
113.06

## Text

STRINGS = str

ex:
'spam eggs'  # single quotes
'spam eggs'
"Paris rabbit got your back :)! Yay!"  # double quotes
'Paris rabbit got your back :)! Yay!'
'1975'  # digits and numerals enclosed in quotes are also strings
'1975'

Pour écrire une citation, avec des guillements, ou guillements seuls, il faut échapper les guillements avec des \.

ex : 
'doesn\'t'  # use \' to escape the single quote...
"doesn't"
"doesn't"  # ...or use double quotes instead
"doesn't"
'"Yes," they said.'
'"Yes," they said.'
"\"Yes,\" they said."
'"Yes," they said.'
'"Isn\'t," they said.'
'"Isn\'t," they said.'

s = 'First line.\nSecond line.'  # \n means newline
s  # without print(), special characters are included in the string
'First line.\nSecond line.'
print(s)  # with print(), special characters are interpreted, so \n produces new line
First line.
Second line.

- raw string = pour que les caractères précédés d'un \ ne soient pas interprétés comme étant spéciaux

ex:

print('C:\some\name')  # here \n means newline!
C:\some
ame
print(r'C:\some\name')  # note the r before the quote
C:\some\name

- Châines peuvent être concaténés ou répétés 
- Chaines de charactère écritent à la suite sont automatiquement concaténé (saut entre variable et expressions)
- Pour concaténé varables avc chaînes littérales, utiliser l'opérateur + 

ex: 
# 3 times 'un', followed by 'ium'
3 * 'un' + 'ium'
'unununium'

'Py' 'thon'
'Python'

- Les chaines de caractère peuvent être indexés :

word = 'Python'
word[0]  # character in position 0
'P'
word[5]  # character in position 5
'n'
word[-1]  # last character
'n'
word[-2]  # second-last character
'o'
word[-6]
'P
word[0:2]  # characters from position 0 (included) to 2 (excluded)
'Py'
word[2:5]  # characters from position 2 (included) to 5 (excluded)
'tho'
word[:2]   # character from the beginning to position 2 (excluded)
'Py'
word[4:]   # characters from position 4 (included) to the end
'on'
word[-2:]  # characters from the second-last (included) to the end
'on'
word[:2] + word[2:]
'Python'
word[:4] + word[4:]
'Python'

 +---+---+---+---+---+---+
 | P | y | t | h | o | n |
 +---+---+---+---+---+---+
 0   1   2   3   4   5   6
-6  -5  -4  -3  -2  -1

word[42]  # the word only has 6 characters
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
IndexError: string index out of range

- Fonction len() = renvoie la longueur d'une chaîne
  
ex:
s = 'supercalifragilisticexpialidocious'
len(s)
34

## Listes 

squares = [1, 4, 9, 16, 25]
squares
[1, 4, 9, 16, 25]

squares[0]  # indexing returns the item
1
squares[-1]
25
squares[-3:]  # slicing returns a new list
[9, 16, 25

- Modifier une liste, car les chaines sont immuable, les listes sont mutables.

cubes = [1, 8, 27, 65, 125]  # something's wrong here
4 ** 3  # the cube of 4 is 64, not 65!
64
cubes[3] = 64  # replace the wrong value
cubes
[1, 8, 27, 64, 125]

- list.append() = Ajouter un nouvel item à la fin d'une liste 

ex: 
cubes.append(216)  # add the cube of 6
cubes.append(7 ** 3)  # and the cube of 7
cubes
[1, 8, 27, 64, 125, 216, 343]

rgb = ["Red", "Green", "Blue"]
rgba = rgb
id(rgb) == id(rgba)  # they reference the same object
True
rgba.append("Alph")
rgb
["Red", "Green", "Blue", "Alph"]

- Affectation par tranches dans les listes :
letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
letters
['a', 'b', 'c', 'd', 'e', 'f', 'g']
# replace some values
letters[2:5] = ['C', 'D', 'E']
letters
['a', 'b', 'C', 'D', 'E', 'f', 'g']
# now remove them
letters[2:5] = []
letters
['a', 'b', 'f', 'g']
# clear the list by replacing all the elements with an empty list
letters[:] = []
letters
[]

letters = ['a', 'b', 'c', 'd']
len(letters)
4

- Imbriquer les listes:
ex: 
a = ['a', 'b', 'c']
n = [1, 2, 3]
x = [a, n]
x
[['a', 'b', 'c'], [1, 2, 3]]
x[0]
['a', 'b', 'c']
x[0][1]
'b'


