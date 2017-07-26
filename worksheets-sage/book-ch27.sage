sage: S,I,R,t=var('S I R t')
sage: k=1./7
sage: b=2
sage: ss = desolve_system_rk4([-b*S*I,b*S*I-k*I,k*I], [S,I,R],ics=[0,1,.0001,0],ivar=t,end_points=300,step=1)
sage: II=[ [i,j] for i,j,k,l in ss]
sage: LP = list_plot(II,color="green",plotjoined=True,thickness=3,linestyle="--",title='$k=1/7$', axes_labels=['$t$','$I$'])
sage: show(LP)