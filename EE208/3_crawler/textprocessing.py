""" bloomfilter_test is the document part of pg1661.txt
    this python script remove the blank lines from the txt
    and generates a new test.txt with no overlapping lines
    for bloomfilter testing """

f1 = open('bloomfilter_test.txt','r')
f2 = open('test.txt','w')
lineset = set()
while True:
    line = f1.readline()
    if (len(line)==0):
        break
    if (line != '\r\n'):
        lineset.add(line)
for line in lineset:
    f2.write(line)
f2.close()
