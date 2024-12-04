from keyword import kwlist

def verify_identifier(text):
    if text in kwlist:
        return -1
    
    if not text[0].isalnum():
        return 0

    i=1
    while i<len(text):
        if text[i].isalpha() or text[i]=='_':
            i+=1
            continue
        else:
            return 0
    return 1

if __name__ == "__main__":

    while True:
        t = input("enter identifer\n")
        res = verify_identifier(t)
        if  res == 1:
            print("valid\n")
        elif res == 0:
            print("invalid")
        else:
            print("keyword entered")
    



    