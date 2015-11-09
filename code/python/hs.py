error = "you broke it"

def hs(n):
  j = 0
  while (n != 1):
      if (n % 2 == 0):
          j = j+1
          n = n // 2
          print(n)
          if (n < 1):
              n = 1
              print(error)
          else:
              n = n
      else:
          n = 3*n +1
          print(n)
          j = j + 1
  print(j)        


