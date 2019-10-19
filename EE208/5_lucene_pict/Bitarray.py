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

    def has_hashstr(self, hstr):
        """ Match the hstr with the bitarray, return true if all matched """
        res = True
        for i in hstr:
            res = (res and self.get(i))
        return res

    def has_str(self, str):
        """ Match the string with the bitarray, return true if all matched """
        strhash = self.get_hashstr(str)
        return self.has_hashstr(strhash)

    def add_str(self, str):
        """ Add the str into the bitarray """
        strhash = self.get_hashstr(str)
        self.add_hashstr(strhash)
        return 0

    def add_hashstr(self, strhash):
        for i in strhash:
            self.set(i)
        return 0

    def get_hashstr(self, keyword):
        """ return a 10-bit hash string for a string """
        res = []
        hash_seed = [31, 133, 1245, 4, 683, 235, 986, 1325, 8539, 4452]
        for j in range(10):
            res.append(self.BKDRHash(hash_seed[j], keyword) % self.size)
        return res

    def BKDRHash(self,seed, key):
        """ a BKDRHash function where seed can be set manually """
        hash = 0
        for i in range(len(key)):
            hash = (hash * seed) + ord(key[i])
        return hash

def test(txt,bitlength):
    """a testing main function for counting fp-rate"""
    fp_count = 0
    total_count = 0
    bitary = Bitarray(bitlength)
    f = open(txt,'r')
    while True:
        line = f.readline()
        linehash = bitary.get_hashstr(line)
        if (len(line) == 0):
            break
        if (bitary.has_hashstr(linehash)): # if match, count an fp
            fp_count += 1
        else: # if not match, add to the bitarray
            bitary.add_hashstr(linehash)
        total_count += 1
    f.close()
    print fp_count, total_count
    return

if __name__ == "__main__":
    test('test.txt',200000)
    test('test.txt',700000)