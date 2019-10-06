import math

# -*- coding: utf8 -*-
class Bitarray:
    def __init__(self, size):
        """ Create a bit array of a specific size """
        self.size = size
        self.bitarray = bytearray(int(math.ceil(size/8.)))

    def set(self, n):
        """ Sets the nth element of the bitarray """

        index = n / 8
        position = n % 8
        self.bitarray[index] = self.bitarray[index] | 1 << (7 - position)

    def get(self, n):
        """ Gets the nth element of the bitarray """
        index = n / 8
        position = n % 8
        return (self.bitarray[index] & (1 << (7 - position))) > 0

    def hashstr_compare(self, hstr):
        """ Match the hstr with the bitarray, return true if all matched """
        res = True
        for i in hstr:
            res = (res and self.get(i))
        return res

def BKDRHash(seed,key):
    """ a BKDRHash function where seed can be set manually """
    hash = 0
    for i in range(len(key)):
      hash = (hash * seed) + ord(key[i])
    return hash

def get_hashstr(keyword,bitlength):
    """ return a 10-bit hash string for a string """
    res = []
    hash_seed = [31,133,1245,4,683,235,986,1325,8539,4452]
    for j in range(10):
        res.append(BKDRHash(hash_seed[j],keyword)%bitlength)
    return res

def main(txt,bitlength):
    fp_count = 0
    total_count = 0
    bitary = Bitarray(bitlength)
    f = open(txt,'r')
    while True:
        line = f.readline()
        linehash = get_hashstr(line,bitlength)
        if (len(line) == 0):
            break
        if (bitary.hashstr_compare(linehash)): # if match, count an fp
            fp_count += 1
        else: # if not match, add to the bitarray
            for j in linehash:
                bitary.set(j)
        total_count += 1
    f.close()
    print fp_count, total_count
    return

if __name__ == "__main__":
    main('test.txt',2000000)