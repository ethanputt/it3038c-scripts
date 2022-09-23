
print('Hi there! Please type in a word: ')

word = input()
letters = 0
vowels = 0
consonants = 0
for le in word:
    letters = letters + 1

    if le == 'a':
        vowels = vowels + 1
    elif le == 'e':
        vowels = vowels + 1
    elif le == 'i':
        vowels = vowels + 1
    elif le == 'o':
        vowels = vowels + 1
    elif le == 'u':
        vowels = vowels + 1
    else:
        consonants = consonants + 1

print('Number of letters in the given word: %s' % letters)
print('Number of vowels in the given word: %s' % vowels)
print('Number of consonants in the given word: %s' % consonants)
