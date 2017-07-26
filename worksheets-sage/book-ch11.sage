sage: P = plot(3.7*e^(-0.5*x), (x,0,5),ymin=0,ymax=5,thickness=3,title='Solution to the initial value problem\n$C^\prime = -kC$ with $C(0)=3.7$ and $k=0.5$', axes_labels=['$t$','$C$'])
sage: show(P)
sage: ll = [(ii,30*e^(-.2*ii)) for ii in [1,2,4,6,10]]
sage: list_plot(ll,ymin=0,ymax=30,xmin=0,xmax=10,size=30,legend_label='Drug concentration',axes_labels=['$t$','$C$'],title='Concentration of a drug in plasma versus time')
sage: ll = [[ii,ln(30).n()-.2*ii] for ii in [1,2,4,6,10]]
sage: list_plot(ll,ymin=0,ymax=ln(30),xmin=0,xmax=10,size=30,legend_label='Natural log of drug concentration',axes_labels=['$t$','$C$'],title='Concentration of a drug in plasma versus time')
sage: ll
[[1, 3.20119738166216],
 [2, 3.00119738166216],
 [4, 2.60119738166216],
 [6, 2.20119738166216],
 [10, 1.40119738166216]]
sage: var('C,ke,t')
sage: model(t) = C-ke*t
sage: find_fit(ll, model)
[C == 3.401197381662155, ke == 0.19999999999999996]
sage: ll
[(1, 3.20119738166216),
 (2, 3.00119738166216),
 (4, 2.60119738166216),
 (6, 2.20119738166216),
 (10, 1.40119738166216)]