*Aditya Biyani, Jang suk Charlie Roh
Set
i all nodes /1*7/
;
Alias (i,j)
;
Set
T Time in years /t1*t20/
S(i) Power plants (Sources) /1,6/
R(i) Storage sites (Reservoirs) /3,5/
L(i) Utilization sites /7/
N(i,j) Nodes adjacent to node i /1.2, 2.1, 2.3,2.4, 3.2, 4.2, 4.5, 4.6, 4.7, 5.4, 6.4, 7.4/
Ns(i,j) Nodes adjacent to source nodes /1.2,2.1,4.6,6.4/
Nr(i,j) Nodes adjacent to reservoir nodes /2.3,3.2,4.5,5.4/
Nl(i,j) Nodes adjacent to utility /4.7,7.4/
D Possible diameters /4, 6, 8, 12, 16, 20, 24, 30/
;
Alias (t,tp)
;
Alias (t, tp);

Parameters
Qs(i) Total carbon production capacity of a source node(ton_year) /1 4.0e6, 6 5.5e6/
Qr(i) Total carbon storage capacity (ton) /3 5.94e6, 5 100e6/
Ql(i) Annual Carobon utilization amount (ton) /7 22.5e6/
pE(t) price of carbon in the ETS in year t ($ per ton)
/
t1      30
t2      29.1
t3      28.227
t4      27.38019
t5      26.5587843
t6      25.76202077
t7      24.98916015
t8      24.23948534
t9      23.51230078
t10     22.80693176
t11     22.12272381
t12     21.45904209
t13     20.81527083
t14     20.1908127
t15     19.58508832
t16     18.99753567
t17     18.4276096
t18     17.87478132
t19     17.33853788
t20     16.81838174
/
pC(t) price of carbon that is sold to an entity in year t ($ per ton) /t1*t20 5/
a(i) /1 4e3, 6 5.5e3/
IC(i) installation cost of carbon capture unit with capacity ai
;
IC(i) = 640800000 * 1.2**0.6 + 31.3 * a(i);
;
Table Qp(i,j,D) Carbon capacity of a pipeline with diameter D
                4                6                8                 12            16              20             24                  30
1.2             190000000        475000000        1187500000    2090000000        5225000000      3990000000     15437500000     26125000000
2.1             190000000        475000000        1187500000    2090000000        5225000000      3990000000     15437500000     26125000000
2.3             18000000         45000000         112500000         198000000     495000000           378000000      1462500000      2475000000
2.4             60000000         150000000        375000000         660000000     1650000000      1260000000     4875000000          8250000000
3.2             18000000         45000000         112500000         198000000     495000000           378000000      1462500000      2475000000
4.2             60000000         150000000        375000000         660000000     1650000000      1260000000     4875000000          8250000000
4.5             10000000         25000000         62500000          110000000     275000000           210000000      812500000       1375000000
4.6             44000000         110000000        275000000         484000000     1210000000      924000000          3575000000      6050000000
4.7             164000000        410000000        1025000000    1804000000        4510000000      3444000000     13325000000     22550000000
5.4             10000000         25000000         62500000          110000000     275000000           210000000      812500000       1375000000
6.4             44000000         110000000        275000000         484000000     1210000000      924000000          3575000000      6050000000
7.4             164000000        410000000        1025000000    1804000000        4510000000      3444000000     13325000000     22550000000
;

Table dist(i,j) distance between nodes
        1       2       3       4       5       6       7
1               950
2       950             90      300
3               90
4               300                     50      220     820
5                               50
6                               220
7                               820
;
Table Fp(i,j,d,t)
        t1*t20
1.2.4   751208455.7
1.2.6   1126062974
1.2.8   1500917493
1.2.12  2250626531
1.2.16  3000335568
1.2.20  3750044606
1.2.24  4499753644
1.2.30  5624317200
2.1.4   751208455.7
2.1.6   1126062974
2.1.8   1500917493
2.1.12  2250626531
2.1.16  3000335568
2.1.20  3750044606
2.1.24  4499753644
2.1.30  5624317200
2.3.4   71167116.85
2.3.6   106679650.2
2.3.8   142192183.6
2.3.12  213217250.3
2.3.16  284242317
2.3.20  355267383.7
2.3.24  426292450.5
2.3.30  532830050.5
2.4.4   237223722.8
2.4.6   355598834
2.4.8   473973945.2
2.4.12  710724167.6
2.4.16  947474390
2.4.20  1184224612
2.4.24  1420974835
2.4.30  1776100168
3.2.4   71167116.85
3.2.6   106679650.2
3.2.8   142192183.6
3.2.12  213217250.3
3.2.16  284242317
3.2.20  355267383.7
3.2.24  426292450.5
3.2.30  532830050.5
4.2.4   237223722.8
4.2.6   355598834
4.2.8   473973945.2
4.2.12  710724167.6
4.2.16  947474390
4.2.20  1184224612
4.2.24  1420974835
4.2.30  1776100168
4.5.4   39537287.14
4.5.6   59266472.34
4.5.8   78995657.54
4.5.12  118454027.9
4.5.16  157912398.3
4.5.20  197370768.7
4.5.24  236829139.1
4.5.30  296016694.7
4.6.4   173964063.4
4.6.6   260772478.3
4.6.8   347580893.2
4.6.12  521197722.9
4.6.16  694814552.7
4.6.20  868431382.5
4.6.24  1042048212
4.6.30  1302473457
4.7.4   648411509.1
4.7.6   971970146.4
4.7.8   1295528784
4.7.12  1942646058
4.7.16  2589763333
4.7.20  3236880607
4.7.24  3883997882
4.7.30  4854673794
5.4.4   39537287.14
5.4.6   59266472.34
5.4.8   78995657.54
5.4.12  118454027.9
5.4.16  157912398.3
5.4.20  197370768.7
5.4.24  236829139.1
5.4.30  296016694.7
6.4.4   173964063.4
6.4.6   260772478.3
6.4.8   347580893.2
6.4.12  521197722.9
6.4.16  694814552.7
6.4.20  868431382.5
6.4.24  1042048212
6.4.30  1302473457
7.4.4   648411509.1
7.4.6   971970146.4
7.4.8   1295528784
7.4.12  1942646058
7.4.16  2589763333
7.4.20  3236880607
7.4.24  3883997882
7.4.30  4854673794
;

parameter Vp variable cost of sending carbon between nodes i and j for a given diameter (d) and unit time;
Vp(i,j,d,t) = 0.04 * Fp(i,j,d,t);

Table cap(i,t) cap value on the emissions level of pwer plant
        t1              t2              t3              t4              t5               t6             t7              t8              t9              t10             t11             t12             t13             t14             t15             t16             t17             t18             t19             t20
1       4.00E+06        3.88E+06        3.76E+06        3.65E+06        3.54E+06        3.43E+06        3.33E+06        3.23E+06        3.13E+06        3.04E+06        2.95E+06        2.86E+06        2.78E+06        2.69E+06        2.61E+06        2.53E+06        2.46E+06        2.38E+06        2.31E+06        2.24E+06
6       5.50E+06        5.34E+06        5.17E+06        5.02E+06        4.87E+06        4.72E+06        4.58E+06        4.44E+06        4.31E+06        4.18E+06        4.06E+06        3.93E+06        3.82E+06        3.70E+06        3.59E+06        3.48E+06        3.38E+06        3.28E+06        3.18E+06        3.08E+06
;

scalar
VC variable cost of storing($) /10/
rho_s density of steel(kg_m^3) /7850/
h thickness of pipe(m) / 0.008/
;

display cap, pE, pC, a, IC, VC, Vp

variables
aa(i,t) "amount of carbon captured in node s in year t (ton/yr)"
bb(i,t) "amount of carbon captured in node r in year t (ton/yr)"
c(i,t) "amount of carbon sold to node l in year t(ton/yr)"
b(i) "total amount of carbon stored in node r (ton)"
x(i,j,t) "amount of carbon sent from node i to node j in year t (ton)"
e(i,t) "amount of carbon traded at ETS (between sources) in year t captured in node s (ton/yr)"
ss(i,t) "if carbon capture unit should be installed or not"
rr(i,t) "if reservoir needs to be built or not"
y(i,j,d,t) "pipeline with diameter d needs to be built from node i to node j"

binary variables
ss, rr, y;

positive variables
aa, bb, c, b, x;

free variables
z, e;

equations
obj objective function
eq2
eq3
eq4
eq5
eq6
eq7
eq8
eq9
eq10
eq11
eq12
eq13
eq14
eq15
eq16
;

eq2(i,t)$(ord(i)$s(i))..aa(i,t) =e= sum(j$Ns(i,j),x(i,j,t))
;
eq3(i,t)$(ord(i)$s(i))..a(i) =g= aa(i,t)
;
eq4(i,t)$(ord(i)$r(i)).. bb(i,t) =e= sum(j$Nr(i,j),x(j,i,t))
;
eq5(i)$(ord(i)$r(i))..b(i) =e= sum(t, bb(i,t))
;
eq6(i,t)$(ord(i)$l(i))..c(i,t) =e= sum(j$Nl(i,j),x(j,i,t))
;
*eq7(i,j,t)..x(i,j,t) =l= sum(d,smax((i,j),Qp(i,j,D)) * sum(tp $ (ord(tp) <= ord(t)),y(i,j,d,tp)))5624317200
eq7(i,j,t)..x(i,j,t) =l= sum(d, 5624317200 * sum(tp $ (ord(tp) <= ord(t)),y(i,j,d,tp)))
;
*eq8(i,j,t)..x(i,j,t) =g= sum(d,smin((i,j),Qp(i,j,D)) * sum(tp $ (ord(tp) <= ord(t)),y(i,j,d,tp)))39537287.14
eq8(i,j,t)..x(i,j,t) =g= sum(d, 39537287.14 * sum(tp $ (ord(tp) <= ord(t)),y(i,j,d,tp)))
;
eq9(i,t).. sum(j,x(i,j,t)) - sum(j$Nr(i,j),x(j,i,t)) - aa(i,t) + bb(i,t) + c(i,t) =e= 0
;
eq10(i, t)$(ord(i)$s(i)).. aa(i,t) =l= Qs(i) * sum(tp $ (ord(tp)<=ord(t)), ss(i,tp))
;
eq11(i, t)$(ord(i)$r(i)).. b(i) =l= Qr(i) * sum(tp $ (ord(tp)<=ord(t)), rr(i, tp))
;
eq12(i, t)$(ord(i)$l(i)).. c(i,t) =l= Ql(i)
;
eq13(i, t)$(ord(i)$s(i)).. aa(i,t) + e(i,t) =e= Qs(i) - cap(i,t)
;
eq14(i)$(ord(i)$s(i)).. sum(t, ss(i,t)) =l= 1
;
eq15(i)$(ord(i)$r(i)).. sum(t, rr(i,t)) =l= 1
;
eq16(i, j)$(ord(j)$N(i,j)).. sum((d, t), y(i,j,d,t)) =l= 1
;

obj.. z =e= sum(t, (1/(1 + 0.05)**ord(t)) * (sum(i $ s(i), IC(i)*ss(i,t) + 21.6*aa(i,t)) +
            sum(i $ r(i), rr(i,t)*0) + VC + sum((i,j)$(ord(j)$N(i,j)), sum(d, Fp(i,j,d,t)*y(i,j,d,t) +Vp(i,j,d,t)*x(i,j,t)))+
            sum(i$s(i), pE(t)*e(i,t)) - sum(i $ L(i), pC(t)*c(i,t))))
;

Model turkey_carbon /all/
;

solve turkey_carbon minimizing z using minlp
;
*option minlp=baron

display z.l, aa.l, bb.l, b.l, c.l, x.l, e.l, ss.l, rr.l, y.l
;
