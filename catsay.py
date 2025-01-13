import sys
import random 


cat_art = r"""
 _._     _,-'""`-._
(,-.`._,'(       |\`-/|
    `-.-' \ )-`( , o o)
          `-    \`_`"'-
"""
cat_art_2 = r"""
    /\_____/\
   /  o   o  \
  ( ==  ^  == )
   )         (
  (           )
 ( (  )   (  ) )
(__(__)___(__)__)
"""

cat_art_3 = r"""
 ,_     _
 |\\_,-~/
 / _  _ |    ,--.
(  @  @ )   / ,-'
 \  _T_/-._( (
 /         `. \
|         _  \ |
 \ \ ,  /      |
  || |-_\__   /
 ((_/`(____,-'
"""

catz = [cat_art, cat_art_2, cat_art_3]

def catsay(message):
    # Create a border for the message
    border = 'o' * len(message)
    
    # Print the message with the cat art
    print(f" {border} ")
    print(f"< {message} >")
    print(f" {border} ")
    print("    o    ") 
    print("    o    ")
    print(random.choice(catz))

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python catsay.py <message>")
    else:
        message = ' '.join(sys.argv[1:])
        catsay(message)

