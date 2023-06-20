# ROT13 reference
import codecs

def rot13(secret):
    """ROT13 encode/decode

    NOTE: encode and decode are the same operation in the ROT cipher family.
    """
    return codecs.encode(secret, 'rot_13')

def choose_longest():
    """Echo the longest of the two strings given by the user to the program
    """
    user_value_1 = input("What's your first string? ")
    user_value_2 = input("What's your second string? ")
    longest_value = user_value_1 if len(user_value_1) >= len(user_value_2) else user_value_2

    print("The longest string is: " + longest_value)

# Test the functions
print(rot13("Hello, World!"))
choose_longest()
