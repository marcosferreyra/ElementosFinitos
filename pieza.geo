
//Parameters

gridsize = 0.5;
h = 18; //Height
r_curv = 0.5; //Edges Radius
w = 9; //Width
h_c = 6; //Cantilever Height
a = 27.5; //Cantilever Long
L = a+w; //Distance to the applied force
R = 5; //Biggest Circle Radius
r_h = 1; //Holes Radius
h_h = 3; //Holes Height
l = L-R*Sqrt(1-(h_c/(2*R))^2); //Distance to the joint between cantilever and the biggest circle

//El punto de comienzo de los puntos es la esquina inferior izquierda de la pieza
//y en sentido horario

Point(1) = {r_curv, 0, 0, gridsize};
Point(2) = {r_curv, r_curv, 0, gridsize};
Point(3) = {0, r_curv, 0, gridsize};

Point(4) = {0, h-r_curv, 0, gridsize};
Point(5) = {r_curv, h-r_curv, 0, gridsize};
Point(6) = {r_curv, h, 0, gridsize};

Point(7) = {w-r_curv, h, 0, gridsize};
Point(8) = {w-r_curv, h-r_curv, 0, gridsize};
Point(9) = {w, h-r_curv, 0, gridsize};

Point(10) = {w, h/2+h_c/2+r_curv, 0, gridsize};
Point(11) = {w+r_curv, h/2+h_c/2+r_curv, 0, gridsize};
Point(12) = {w+r_curv, h/2+h_c/2, 0, gridsize};

Point(13) = {l , h/2+h_c/2, 0, gridsize};

Point(14) = {L, h/2, 0, gridsize};
Point(15) = {L, h/2+R, 0, gridsize};
Point(16) = {L+R, h/2, 0, gridsize};
Point(17) = {L, h/2-R, 0, gridsize};

Point(18) = {l, h/2-h_c/2, 0, gridsize};

Point(19) = {w+r_curv, h/2-h_c/2, 0, gridsize};
Point(20) = {w+r_curv, h/2-h_c/2-r_curv, 0, gridsize};
Point(21) = {w, h/2-h_c/2-r_curv, 0, gridsize};

Point(22) = {w, r_curv, 0, gridsize};
Point(23) = {w-r_curv, r_curv, 0, gridsize};
Point(24) = {w-r_curv, 0, 0, gridsize};

//Líneas del contorno

Circle(1) = {1, 2, 3};
Line(2) = {3, 4};
Circle(3) = {4, 5, 6};
Line(4) = {6, 7};
Circle(5) = {7, 8, 9};
Line(6) = {9, 10};
Circle(7) = {10, 11, 12};
Line(8) = {12, 13};
Circle(9) = {13, 14, 16};
Circle(10) = {16, 14, 18};
Line(11) = {18, 19};
Circle(12) = {19, 20, 21};
Line(13) = {21, 22};
Circle(14) = {22, 23, 24};
Line(15) = {24, 1};

//Agujeros

Point(25) = {w/2, h_h, 0, gridsize};
Point(26) = {w/2, h-h_h, 0, gridsize};

Point(27) = {w/2, h_h+r_h, 0, gridsize};
Point(28) = {w/2, h_h-r_h, 0, gridsize};

Point(29) = {w/2, h-h_h-r_h, 0, gridsize};
Point(30) = {w/2, h-h_h+r_h, 0, gridsize};

Point(31) = {L, h/2+r_h, 0, gridsize};
Point(32) = {L, h/2-r_h, 0, gridsize};

Circle(16) = {27, 25, 28};
Circle(17) = {28, 25, 27};
Circle(18) = {30, 26, 29};
Circle(19) = {29, 26, 30};
Circle(20) = {31, 14, 32};
Circle(21) = {32, 14, 31};

//Lines Loops

Line Loop(1) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
Line Loop(2) = {16,17};
Line Loop(3) = {18,19};
Line Loop(4) = {20,21};

//Physical Lines

Physical Line(10) = {16,17};
Physical Line(20) = {18,19};
Physical Line(30) = {20,21};

//Plane Surface

Plane Surface(1) = {1,2,3,4};

//Physical Surface

Physical Surface(1) = {1};









