#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

CJK = (0x4e00, 0x9fa5)

try:
    f_dic = open("zh.dic","w")
    f_aff = open("zh.aff","w")
except IOError,e:
    print e
    sys.exit(1)

f_dic.write("%d\n"%(CJK[1]-CJK[0]+1))
for cjk in xrange(CJK[0], CJK[1]+1):
    f_dic.write(unichr(cjk).encode('utf8')+"\n")

f_aff.write("SET utf-8\n")
f_aff.write("NOBREAK\n")

f_dic.close()
f_aff.close()




