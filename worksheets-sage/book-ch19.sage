sage: N,P,t=var('N P t')
sage: ss = desolve_system_rk4([(1-P/2-N/10)*N, (N/2-1)*P], [N,P],ics=[0,0.5,2],ivar=t,end_points=100)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(Q,plotjoined=True,linestyle="--",axes_labels=['$t$','$N$,$P$'],thickness=3,legend_label='$N$ cichlid population',title="Examples of solutions to undamped Lotka-Volterra predator-prey models\nwhere the prey exhibits logistic growth")
sage: P=[[i,k] for i,j,k in ss]
sage: LP += list_plot(P,color="red",plotjoined=True,thickness=3,legend_label='$P$ Nile perch population')
sage: show(LP)
sage: f(N,P) = ((-.5*P-N/10+1)*N/sqrt(((-.5*P-N/10+1)*N)^2+((.5*N-1)*P)^2),(.5*N-1)*P/sqrt(((-.5*P-N/10+1)*N)^2+((.5*N-1)*P)^2))
sage: v=plot_vector_field(f,(N,-.01,8),(P,-.01,8),headaxislength=3, headlength=2, axes_labels=['$N$','$P$'],title="Phase portrait of undamped Lotka-Volterra model\nwhere the prey exhibits logistic growth")
sage: N,P,t=var('N P t')
sage: ss = desolve_system_rk4([(1-P/2-N/10)*N, (N/2-1)*P], [N,P],ics=[0,0.5,2],ivar=t,end_points=100)
sage: Q=[ [j,k] for i,j,k in ss]
sage: LP = list_plot(Q,plotjoined=True,thickness=3)
sage: show(v+LP)
sage: N,P,t=var('N P t')
sage: f(N,P) = ((-.5*P+1)*N/sqrt((-.5*P+1)^2*N^2+(.5*N-1)^2*P^2),(.5*N-1)*P/sqrt((-.5*P+1)^2*N^2+(.5*N-1)^2*P^2))
sage: #f(N,P) = ((-.5*P+1)*N,(.5*N-1)*P)
sage: v=plot_vector_field(f,(N,-0.5,8),(P,-0.5,8),headaxislength=3, headlength=2,axes_labels=['$N$','$P$'])
sage: ss = desolve_system_rk4([(1-P/2)*N, (N/2-1)*P], [N,P],ics=[0,0.5,2],ivar=t,end_points=100)
sage: Q=[ [j,k] for i,j,k in ss]
sage: LP = list_plot(Q,plotjoined=True,legend_label='initial conditions $P(0)=2$ and $N(0)=0.5$',thickness=3,linestyle="--")
sage: ss = desolve_system_rk4([(1-P/2)*N, (N/2-1)*P], [N,P],ics=[0,0.4,2.1],ivar=t,end_points=100)
sage: Q_perturb=[ [j,k] for i,j,k in ss]
sage: LQ = list_plot(Q_perturb,plotjoined=True,thickness=3,color='red',legend_label='initial conditions $P(0)=2.1$ and $N(0)=0.4$')
sage: LQ += point((3,.58),marker='s',size=50,color="green",zorder=6)
sage: LQ += text('A',(3,1),fontsize=20,fontweight='bold',color="green")
sage: LQ += point((3,4.85),marker='s',size=50,color="green",zorder=6)
sage: LQ += text('B',(3,4.2),fontsize=20,fontweight='bold',color="green")
sage: show(LQ+LP+v)
sage: N,P,t=var('N P t')
sage: f(N,P) = ((-.5*P+1)*N/sqrt((-.5*P+1)^2*N^2+(.5*N-1)^2*P^2),(.5*N-1)*P/sqrt((-.5*P+1)^2*N^2+(.5*N-1)^2*P^2))
sage: #f(N,P) = ((-.5*P+1)*N,(.5*N-1)*P)
sage: #v=plot_vector_field(f,(N,-0.5,8),(P,-0.5,8),headaxislength=3, headlength=2,axes_labels=['$N$','$P$'])
sage: ss = desolve_system_rk4([(1-P/2)*N, (N/2-1)*P], [N,P],ics=[0,0.5,2],ivar=t,end_points=30)
sage: N1=[ [i,j] for i,j,k in ss]
sage: LP = list_plot(N1,plotjoined=True,legend_label='$N$ cichlid population with initial conditions $P(0)=2$ and $N(0)=0.5$',thickness=3,linestyle=":",title='Plots of solutions to different Lotka-Volterra initial value problems\nwith slightly different initial conditions')
sage: P1 = [ [i,k] for i,j,k in ss]
sage: LP += list_plot(P1,plotjoined=True,legend_label='$P$ Nile perch population with initial conditions $P(0)=2$ and $N(0)=0.5$',thickness=3)
sage: ss = desolve_system_rk4([(1-P/2)*N, (N/2-1)*P], [N,P],ics=[0,0.4,2.1],ivar=t,end_points=30)
sage: N1=[ [i,j] for i,j,k in ss]
sage: LP += list_plot(N1,plotjoined=True,legend_label='$N$ cichlid population with initial conditions $P(0)=2.1$ and $N(0)=0.4$',thickness=3,linestyle=":",color='red')
sage: P1 = [ [i,k] for i,j,k in ss]
sage: LP += list_plot(P1,plotjoined=True,legend_label='$P$ Nile perch population with initial conditions $P(0)=2.1$ and $N(0)=0.4$',thickness=3,color='red')
sage: show(LP,ymax=10)
sage: N,P,t=var('N P t')
sage: f(N,P) = ((-.5*P+1-N/10)*N/sqrt((-.5*P+1-N/10)^2*N^2+(.5*N-1)^2*P^2),(.5*N-1)*P/sqrt((-.5*P+1-N/10)^2*N^2+(.5*N-1)^2*P^2))
sage: #f(N,P) = ((-.5*P+1)*N,(.5*N-1)*P)
sage: v=plot_vector_field(f,(N,-0.5,5),(P,-0.5,4),headaxislength=3, headlength=2,axes_labels=['$N$','$P$'],title="Phase portraits of damped Lotka-Volterra models\nwith different initial conditions")
sage: ss = desolve_system_rk4([(1-P/2-N/10)*N, (N/2-1)*P], [N,P],ics=[0,0.5,2],ivar=t,end_points=100)
sage: NP=[ [j,k] for i,j,k in ss]
sage: LNP = list_plot(NP,plotjoined=True,thickness=3,legend_label="initial conditions $N(0)=0.5$ and $P(0)=2$")
sage: ss = desolve_system_rk4([(1-P/2-N/10)*N, (N/2-1)*P], [N,P],ics=[0,0.4,2.1],ivar=t,end_points=100)
sage: NPp=[ [j,k] for i,j,k in ss]
sage: LNPp = list_plot(NPp,plotjoined=True,linestyle="--",thickness=3,legend_label="initial conditions $N(0)=0.4$ and $P(0)=2.1$")
sage: PPp = LNPp+LNP
sage: show(v+PPp)
sage: N,P,t=var('N P t')
sage: ss = desolve_system_rk4([(1-P/2-N/10)*N, (N/2-1)*P], [N,P],ics=[0,0.5,2],ivar=t,end_points=50)
sage: N1=[ [i,j] for i,j,k in ss]
sage: LP = list_plot(N1,plotjoined=True,legend_label='$N$ cichlid population with initial conditions $P(0)=2$ and $N(0)=0.5$',thickness=3,linestyle=":",title='Plots of solutions to different damped Lotka-Volterra initial value problems\nwith slightly different initial conditions')
sage: P1 = [ [i,k] for i,j,k in ss]
sage: LP += list_plot(P1,plotjoined=True,legend_label='$P$ Nile perch population with initial conditions $P(0)=2$ and $N(0)=0.5$',thickness=3)
sage: ss = desolve_system_rk4([(1-P/2-N/10)*N, (N/2-1)*P], [N,P],ics=[0,0.4,2.1],ivar=t,end_points=50)
sage: N1=[ [i,j] for i,j,k in ss]
sage: LP += list_plot(N1,plotjoined=True,legend_label='$N$ cichlid population with initial conditions $P(0)=2.1$ and $N(0)=0.4$',thickness=3,linestyle=":",color='red')
sage: P1 = [ [i,k] for i,j,k in ss]
sage: LP += list_plot(P1,plotjoined=True,legend_label='$P$ Nile perch population with initial conditions $P(0)=2.1$ and $N(0)=0.4$',thickness=3,color='red')
sage: show(LP,ymax=5)