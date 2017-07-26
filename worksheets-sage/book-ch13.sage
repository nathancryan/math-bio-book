sage: P = plot(8*e^(-0.15*x), (x,0,5),ymin=0,ymax=10,thickness=3,title='Solution to the initial value problem\n$C^\prime = -kC$ with $C(0)=8$ and $k=0.15$', axes_labels=['$t$','$C$'])
sage: show(P)
sage: ll
[[1, 3.20119738166216],
 [2, 3.00119738166216],
 [4, 2.60119738166216],
 [6, 2.20119738166216],
 [10, 1.40119738166216]]
sage: P = plot(8*e^(-0.15*x), (x,0,10),ymin=0,ymax=10,thickness=3,scale="semilogy",title='Typical plot of drug concentrations in\na one compartment model', axes_labels=['$t$','$C$'])
sage: show(P)
sage: plot(24*e^(-1.5*x)+6*e^(-.25*x),x,0,24,scale="semilogy",thickness=3,ymin=0,ymax=10,title='Typical semilog plot of drug concentrations in\na two compartment model', axes_labels=['$t$','$C$'])
sage: A =20; B=15; alpha=1; beta=.1; ka=2; C = -35;
sage: plot(A*e^(-alpha*x)+B*e^(-beta*x)+C*e^(-ka*x),(x,0,18),thickness=3,ymin=0,title='Typical semilog plot of drug concentrations in\na two compartment model after an oral bolus', axes_labels=['$t$','$C$'],scale="semilogy")
sage: A =20; B=15; alpha=1; beta=.1; ka=2; C = -35;
sage: f(x) = A*e^(-alpha*x)+B*e^(-beta*x)+C*e^(-ka*x)
sage: P = plot(f(x),(0,20),ticks=[[],[]],thickness=3,ymin=0,title='Visualization of AUC approximation\nfor a two compartment model after an oral bolus ', axes_labels=['$t$','$C$'])
sage: yold = 0
sage: iold = 0
sage: for i in range(1,15,2):
...       yi = f(i)+(2*random()-1)
...       P += plot((yi-yold)/(i-iold)*(x-i)+yi,xmin=iold,xmax=i,fill=0,fillcolor='green',thickness=3)
...       P += point((i,yi),rgbcolor=hue(0.75),size=100)
...       P += line([[i,yi],[i,0]])
...       yold = yi
...       iold = i
...       P += plot(f(x),xmin=13,xmax=20,fill=0,fillcolor='red',fillalpha=0.3)
...
sage: show(P)