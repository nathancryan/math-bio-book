sage: f(N,P) = ((-.5*P+1)*N/sqrt((-.5*P+1)^2*N^2+(.5*N-1)^2*P^2),(.5*N-1)*P/sqrt((-.5*P+1)^2*N^2+(.5*N-1)^2*P^2))
sage: #f(N,P) = ((-.5*P+1)*N,(.5*N-1)*P)
sage: v=plot_vector_field(f,(N,-0.5,8),(P,-0.5,8),headaxislength=5, headlength=4,axes_labels=['$N$','$P$'])
sage: N,P,t=var('N p t')
sage: ss = desolve_system_rk4([(1-P/2)*N, (N/2-1)*P], [N,P],ics=[0,1,4],ivar=t,end_points=100)
sage: Q = [(j,k) for i,j,k in ss]
sage: v += list_plot(Q,plotjoined=True,axes_labels=['$N$','$P$'],thickness=3)
sage: show(v)
sage: #v+= implicit_plot(P*exp(-.5*P)*N*exp(-.5*N)==1/e, (N,0,5), (P,0,5), axes="true" )
sage: #v+= implicit_plot(P*exp(-.5*P)*N*exp(-.5*N)==1/sqrt(e,53)/4, (N,0,8), (P,0,8), axes="true" ,color="red")
sage: #v+=implicit_plot(P*exp(-.5*P)*N*exp(-.5*N)==9*exp(-1.5)/4 ,(N,0,8), (P,0,8), axes="true" ,color="green")
sage: f(N,P) = ((-.5*P+1)*N/sqrt((-.5*P+1)^2*N^2+(.5*N-1)^2*P^2),(.5*N-1)*P/sqrt((-.5*P+1)^2*N^2+(.5*N-1)^2*P^2))
sage: #f(N,P) = ((-.5*P+1)*N,(.5*N-1)*P)
sage: v=plot_vector_field(f,(N,-0.1,1),(P,-0.1,1),headaxislength=5, headlength=4,axes_labels=['$N$','$P$'])
sage: #v+= implicit_plot(P*exp(-.5*P)*N*exp(-.5*N)==1/e, (N,0,5), (P,0,5), axes="true" )
sage: #v+= implicit_plot(P*exp(-.5*P)*N*exp(-.5*N)==1/sqrt(e,53)/4, (N,0,8), (P,0,8), axes="true" ,color="red")
sage: #v+=implicit_plot(P*exp(-.5*P)*N*exp(-.5*N)==9*exp(-1.5)/4 ,(N,0,8), (P,0,8), axes="true" ,color="green")
sage: show(v)
sage: f(N,P) = ((-.5*P+1)*N/sqrt((-.5*P+1)^2*N^2+(.5*N-1)^2*P^2),(.5*N-1)*P/sqrt((-.5*P+1)^2*N^2+(.5*N-1)^2*P^2))
sage: #f(N,P) = ((-.5*P+1)*N,(.5*N-1)*P)
sage: v=plot_vector_field(f,(N,-0.5,8),(P,-0.5,8),headaxislength=5, headlength=4,axes_labels=['$N$','$P$'])
sage: v+= implicit_plot(P*exp(-.5*P)*N*exp(-.5*N)==1/e, (N,0,5), (P,0,5), axes="true",linewidth=3 )
sage: v+= implicit_plot(P*exp(-.5*P)*N*exp(-.5*N)==1/sqrt(e,53)/4, (N,0,8), (P,0,8), axes="true" ,color="red",linewidth=3 )
sage: v+=implicit_plot(P*exp(-.5*P)*N*exp(-.5*N)==9*exp(-1.5)/4 ,(N,0,8), (P,0,8), axes="true" ,color="green",linewidth=3 )
sage: show(v)
sage: yrs = list(1968..1987)
sage: perch = [0,0.1,.2,.3,.2,.9,.792,0.308, 0.519,1.50,4.47, 14,16,59.8,5.47,67.7,57.5,56.5,55.2]
sage: cichlids=[22.8,36.8,32.7,32,29,33.2,35,27.9,34.1,27.8,27.8,21.6,13.5,2.40,4.18,.791,.0571,.00677,.00291,.162]
sage: P = list_plot(zip(yrs,perch),plotjoined=True,color="red",linestyle="--",legend_label="$P$ Nile perch population",thickness=3,title="Percent catch in Kenya of Nile perch and cichlid versus time",axes_labels=['$t$','$N$,$P$'])
sage: P+= list_plot(zip(yrs,cichlids),plotjoined=True,color="blue",legend_label="$N$ cichlid population",thickness=3)
sage: show(P)
sage: pts=zip(cichlids,perch)
sage: P = list_plot(pts,axes_labels=['$N$','$P$'],title="Phase portrait of percent catch of Nile perch and cichlids")
sage: pp = pts[0]
sage: for i in range(1,len(pts)):
...       P += arrow(pp,pts[i],width=2,arrowsize=4)
...       pp = pts[i]
...
sage: show(P,ymin=-5)
sage: pts=zip(cichlids,perch)
sage: P = list_plot(pts,axes_labels=['$N$','$P$'],title="Enlarged part of the phase portrait of percent catch of Nile perch and cichlids,\nclose to $N=30$ and $P=0$.")
sage: pp = pts[0]
sage: for i in range(1,len(pts)):
...       P += arrow(pp,pts[i],width=2,arrowsize=4)
...       pp = pts[i]
...
sage: show(P,xmin=20,xmax=40,ymax=5)
sage: N,P,t=var('N P t')
sage: ss = desolve_system_rk4([(1-P/2)*N, (N/2-1)*P], [N,P],ics=[0,0.5,2],ivar=t,end_points=20)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(Q,plotjoined=True,linestyle="--",axes_labels=['$t$','$N$,$P$'],thickness=3,legend_label='$N$ cichlid population',title="Examples of solutions to undamped Lotka-Volterra\npredator-prey models")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,thickness=3,legend_label='$P$ Nile perch population')
sage: show(LP)