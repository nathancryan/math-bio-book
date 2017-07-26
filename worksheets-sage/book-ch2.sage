sage: r = 0.0550
sage: K = 3.1*10^12
sage: N0 = 4.8*10^9
sage: #rand_xs = [10^10 + random()*(10^13-10^9) for i in range(20)]
sage: #rand_ys = [r*xx*ln(K/xx)+(random()-.25)*10^9 for xx in rand_xs]
sage: #Q = list_plot(zip(rand_xs,rand_ys),size=30)
sage: P = plot(r*x*ln(K/x), (x,N0,3.1*10^12),thickness=3,legend_label="number of tumor cells $N$",title='Growth rate of the number of tumor cells vs number of tumor cells \naccording to the model $N^\prime=r N \ln(K/N)$ where $r=0.006$, $K=10^{12}$ and $N_0=4.8\cdot 10^9$', axes_labels=['$N$','$N^\prime$'])
sage: show(P)
sage: K = 10^13
sage: N0 = 10^9
sage: a = 0.006
sage: b = 0.006*ln(K/N0).n(100)
sage: x,t = var('x,t')
sage: ss = desolve_system_rk4([.055*x*ln(10^12/x)], [x],ics=[0,4.810^9],ivar=t,end_points=200,step=1)
sage: XX=[ [i,j] for i,j in ss]
sage: LP=list_plot(XX,plotjoined=True,legend_label="number of tumor cells $N$",thickness=3,title='Number of tumor cells vs time in days\naccording to the model $N^\prime=r N \ln(K/N)$ where $r=0.055$, $K=10^{12}$ and $N_0=4.8\cdot 10^9$', axes_labels=['$t$','$N$'])
sage: show(LP)