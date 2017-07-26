sage: P = plot(x/(x+1),(x,0,4),thickness=3,legend_label="N/(1+N)",title="Desirable functional response for a predator\ncompared to a linear functional response",axes_labels=['$N$',''])
sage: P+= plot(x,0,2,linestyle="--",thickness=3,legend_label="linear functional response")
sage: show(P,ymax=2)
sage: P = plot(2/pi*atan(x),(x,0,4))
sage: P+= plot(x,0,2,linestyle="--")
sage: show(P,ymax=2)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: P=bezier_path([[(0,0),(.8,.8),(1,1),(4,1)]],color="blue",thickness=3,title="A possible functional response for a predator with an increasing prey population")
sage: show(P,xmax=4)
sage: P=bezier_path([[(0,0),(2,.1),(2.1,1),(4,1)]],color="blue",thickness=3,title="A possible functional response for a predator with an increasing prey population")
sage: show(P,xmax=4)
sage: P = plot(x/(1+x),(x,0,5),linestyle="--",legend_label="$k=1$",title="Plots of $x^k/(1+x^k)$ for various values of $k$",thickness=3)
sage: P+= plot(x^2/(1+x^2),(x,0,5),linestyle="-.",legend_label="$k=2$",thickness=3)
sage: P+= plot(x^3/(1+x^3),(x,0,5),linestyle=":",legend_label="$k=3$",thickness=3)
sage: P+= plot(x^4/(1+x^4),(x,0,5),legend_label="$k=4$",thickness=3)
sage: show(P)
sage: N,P,t=var('N P t')
sage: ss = desolve_system_rk4([2*N*(1-N)-.5*P*N, -.13*P+.3*N*P], [N,P],ics=[0,0.5,0.5],ivar=t,end_points=150)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(Q,plotjoined=True,linestyle="--",thickness=3,legend_label="$N$ prey",axes_labels=["$t$","$N,P$"],title="Lotka-Volterra with logistic prey growth and\nstrictly proportional predation")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,thickness=3,legend_label="$P$ predator")
sage: show(LP)
sage: N,P,t=var('N P t')
sage: ss = desolve_system_rk4([2*N*(1-N)-.5*P*N/(1+N), -.13*P+.3*P*N/(1+N)], [N,P],ics=[0,0.5,.5],ivar=t,end_points=300)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(Q,plotjoined=True,linestyle="--",thickness=3,legend_label="$N$ prey",axes_labels=["$t$","$N,P$"],title="Lotka-Volterra with logistic prey growth and\npredation following a Hollis function")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,thickness=3,legend_label="$P$ predator")
sage: show(LP)
sage: N,P,t=var('N P t')
sage: ss = desolve_system_rk4([.5*N*(1-N)-.5*P*N/(1+N), -.13*P+.3*P*N/(1+N)], [N,P],ics=[0,0.5,.5],ivar=t,end_points=400)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(Q,plotjoined=True,linestyle="--",title="Solutions to initial value problems\n $N'=rN(1-N)-bPN/(1+N)$\n$P'=-gP+cPN/(1+N)$\n $N(0)=0.5,P(0)=0.5$\nfor varying values of $r$ and other parameters fixed",thickness=3,legend_label="$N$ prey when $r=0.5$")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,linestyle="--",thickness=3,legend_label="$P$ predator when $r=0.5$")
sage: ss = desolve_system_rk4([1*N*(1-N)-.5*P*N/(1+N), -.13*P+.3*P*N/(1+N)], [N,P],ics=[0,0.5,.5],ivar=t,end_points=400)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP+=list_plot(Q,plotjoined=True,linestyle=":",thickness=3,legend_label="$N$ prey when $r=1$")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,linestyle=":",thickness=3,legend_label="$P$ predator when $r=1$")
sage: ss = desolve_system_rk4([2*N*(1-N)-.5*P*N/(1+N), -.13*P+.3*P*N/(1+N)], [N,P],ics=[0,0.5,.5],ivar=t,end_points=400)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP+=list_plot(Q,plotjoined=True,linestyle="-.",thickness=3,legend_label="$N$ prey when $r=2$")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,linestyle="-.",thickness=3,legend_label="$P$ predator when $r=2$")
sage: ss = desolve_system_rk4([4*N*(1-N)-.5*P*N/(1+N), -.13*P+.3*P*N/(1+N)], [N,P],ics=[0,0.5,.5],ivar=t,end_points=400)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP+=list_plot(Q,plotjoined=True,thickness=3,legend_label="$N$ prey when $r=4$")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,thickness=3,legend_label="$P$ predator when $r=4$")
sage: show(LP)
sage: N,P,t=var('N P t')
sage: ss = desolve_system_rk4([.5*N*(1-N)-.5*P*N, -.13*P+.3*P*N], [N,P],ics=[0,0.5,.5],ivar=t,end_points=200)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(Q,plotjoined=True,linestyle="--",thickness=3,legend_label="$N$ prey when $r=0.5$",title="Solutions to initial value problems\n $N'=rN(1-N)-bPN$\n$P'=-gP+cNP$\n $N(0)=0.5,P(0)=0.5$\nfor varying values of $r$ and other parameters fixed")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,linestyle="--",thickness=3,legend_label="$P$ predator when $r=0.5$")
sage: ss = desolve_system_rk4([1*N*(1-N)-.5*P*N, -.13*P+.3*P*N], [N,P],ics=[0,0.5,.5],ivar=t,end_points=200)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP+=list_plot(Q,plotjoined=True,linestyle=":",thickness=3,legend_label="$N$ prey when $r=1$")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,linestyle=":",thickness=3,legend_label="$P$ predator when $r=1$")
sage: ss = desolve_system_rk4([2*N*(1-N)-.5*P*N, -.13*P+.3*P*N], [N,P],ics=[0,0.5,.5],ivar=t,end_points=200)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP+=list_plot(Q,plotjoined=True,linestyle="-.",thickness=3,legend_label="$N$ prey when $r=2$")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,linestyle="-.",thickness=3,legend_label="$P$ predator when $r=2$")
sage: ss = desolve_system_rk4([4*N*(1-N)-.5*P*N, -.13*P+.3*P*N], [N,P],ics=[0,0.5,.5],ivar=t,end_points=200)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP+=list_plot(Q,plotjoined=True,thickness=3,legend_label="$N$ prey when $r=4$")
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,thickness=3,legend_label="$P$ predator when $r=4$")
sage: show(LP)