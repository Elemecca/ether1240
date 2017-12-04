# Written in 2017 by Sam Hanes
#
# To the extent possible under law, the author(s) have dedicated all
# copyright and related and neighboring rights to this software to the
# public domain worldwide. This software is distributed without any
# warranty.
#
# You should have received a copy of the CC0 Public Domain Dedication
# along with this software. If not, see
#   http://creativecommons.org/publicdomain/zero/1.0/

import svgwrite
import math

draw = svgwrite.Drawing(size=("14cm", "32cm"), viewBox="0 0 140 320")
draw["font-size"] = 6
draw["font-family"] = "monospace"

def drawchar(char):
    group = draw.g()
    group.scale(0.5, 1)
    group.fill(color="#00FF00")

    back = draw.rect(insert=(0, 0), size=(8, 8))
    back.fill(color="black")
    group.add(back)

    y = 0
    for line in char:
        x = 0
        while line > 0:
            if line & 0x80:
                group.add(draw.rect(insert=(x, y), size=(1, 1)))
            line = (line << 1) & 0xFF
            x += 1
        y += 1

    return group

def drawcharlabel(number, char):
    group = draw.g()

    char.translate(16, 0)
    group.add(char)
    
    text = draw.text("%02X" % number, insert=(0, 6.5))
    group.add(text)

    return group


with open("160-3078-00.bin", "rb") as rom:
    for idx in range(0, 256):
        if idx % 8 == 0:
            group = draw.g()
            group.translate(0, math.floor(idx/8) * 10)
            draw.add(group)

        char = rom.read(8)
        label = drawcharlabel(idx, drawchar(char))
        label.translate(idx % 8 * 18, 0)
        group.add(label)


with open("charmap.svg", "w", encoding="utf-8") as f:
    draw.write(f)
