/* Copyright 2017 Sam Hanes
 *
 * This documentation describes Open Hardware and is licensed under the
 * CERN Open Hardware License v1.2.
 *
 * You may redistribute and modify this documentation under the terms of
 * the CERN OHL v.1.2O. This documentation is distributed WITHOUT ANY
 * EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY
 * QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL
 * v1.2 for applicable conditions. You should have received a copy of the
 * OHL alonside this documentation in the file `LICENSE.txt`.
 */


module box(x, y, z, i) {
  polyhedron(
    points = [
      [0 + i, 0 + i, 0], // 0
      [x - i, 0 + i, 0], // 1
      [x - i, y - i, 0], // 2
      [0 + i, y - i, 0], // 3
      [0,     0,     z], // 4
      [x,     0,     z], // 5
      [x,     y,     z], // 6
      [0,     y,     z], // 7
    ],
    faces = [
      [0, 1, 2, 3],
      [4, 5, 1, 0],
      [7, 6, 5, 4],
      [5, 6, 2, 1],
      [6, 7, 3, 2],
      [7, 4, 0, 3],
    ]
  );
}

sizeX = 2.610;
sizeY = 4.060;
sizeZ = 0.740;

inset = sizeX - 2.560;
thick = 0.055;

difference() {
  box(sizeX, sizeY, sizeZ, inset);

  t2 = thick * 2;
  translate([thick, thick, thick])
    box(sizeX - t2, sizeY - t2, sizeZ, inset);
}
