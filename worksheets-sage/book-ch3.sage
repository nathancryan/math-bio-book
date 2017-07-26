sage: r = 0.054
sage: N0 = 1
sage: #rand_xs = [10^10 + random()*(10^13-10^9) for i in range(20)]
sage: #rand_ys = [r*xx*ln(K/xx)+(random()-.25)*10^9 for xx in rand_xs]
sage: #Q = list_plot(zip(rand_xs,rand_ys),size=30)
sage: P = plot(N0*e^(r*x), (x,0,20),thickness=3,legend_label="algae population $N$",title='Population of algae vs time in years\naccording to the model $y=N_0e^{rt}$ where $N_0=1$ and $r=0.054$', axes_labels=['$t$','$N$'])
sage: show(P)#+Q)
sage: P = plot(3.7*e^(0.3*x), (x,0,5),ymin=0,thickness=3,legend_label="algae population $N$",title='Population of algae vs time in years\naccording to the model $y=N_0e^{rt}$ for an unknown $N_0$ and $r$', axes_labels=['$t$','$N$'])
sage: show(P)