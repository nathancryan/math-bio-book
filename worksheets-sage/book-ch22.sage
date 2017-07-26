sage: X,Y,t=var('X Y  t')
sage: ss = desolve_system_rk4([X*(1-X)-1*X*Y,Y*(1-Y)-1*Y*X], [X,Y],ics=[0,0.2,.2],ivar=t,end_points=10)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(Q,plotjoined=True,title="Time series for two competing cichlid populations with the same initial conditions with \nidentical reproduction rates and symmetric competition rates",axes_labels=['$t$',"$X,Y$"],legend_label="$X$ cichlid population",thickness=3)
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,legend_label="$Y$ cichlid population",thickness=4,linestyle="--")
sage: show(LP)
sage: X,Y,t=var('X Y  t')
sage: ss = desolve_system_rk4([X*(1-X)-1*X*Y,Y*(1-Y)-1*Y*X], [X,Y],ics=[0,0.1,.2],ivar=t,end_points=10)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(Q,plotjoined=True,title="Time series for two competing cichlid populations with the different initial conditions with \nidentical reproduction rates and symmetric competition rates",axes_labels=['$t$',"$X,Y$"],legend_label="$X$ cichlid population",thickness=3)
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,legend_label="$Y$ cichlid population",thickness=3,linestyle="--")
sage: show(LP)
sage: X,Y,t=var('X Y  t')
sage: ss = desolve_system_rk4([X*(1-X)-.9*X*Y,Y*(1-Y)-.85*Y*X], [X,Y],ics=[0,0.3,.3],ivar=t,end_points=100)
sage: Q=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(Q,plotjoined=True,title="Time series for two competing cichlid populations with the same initial conditions with \nidentical reproduction rates and asymmetric competition rates",axes_labels=['$t$',"$X,Y$"],legend_label="$X$ cichlid population",thickness=3)
sage: Q=[[i,k] for i,j,k in ss]
sage: LP += list_plot(Q,color="red",plotjoined=True,legend_label="$Y$ cichlid population",thickness=3,linestyle="--")
sage: show(LP)