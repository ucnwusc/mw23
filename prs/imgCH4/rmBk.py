#!/usr/bin/python

from PIL import Image

img = Image.open('CH4.png')
img = img.convert("RGBA")
datas = img.getdata()

newData = []
for item in datas:
    if item[0] == 255 and item[1] == 255 and item[2] == 255:
        newData.append((255, 255, 255, 0))
        print "white bkgd "
    else:
        newData.append(item)
        print "non-white bkgd "

img.putdata(newData)
img.save("img3.png", "PNG")
