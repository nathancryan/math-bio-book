sage: #with air input
sage: X,Y,Z,t=var('X Y Z  t')
sage: ss = desolve_system_rk4([-(0.0211+0.0111+0.0039)*X+0.0124*Y+0.000035*Z+49.3,0.0111*X-(0.0162+0.0124)*Y ,0.0039*X-0.000035*Z], [X,Y,Z],ics=[0,0,0,0],ivar=t,end_points=500,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="Mass of lead in bloodstream")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="Mass of lead in tissues")
sage: ZZ=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(ZZ,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="Mass of lead in bones",title='Time series of the amount of lead in\n three compartments and with constant lead inhalation', axes_labels=['$t$','$X,Y,Z$'])
sage: show(LP)
sage: ss[-1]
[500.0, 1578.579502479003, 612.5386713084935, 2822.548667906797]
sage: X,Y,Z,t=var('X Y Z  t')
sage: ss = desolve_system_rk4([-(0.0211+0.0111+0.0039)*X+0.0124*Y+0.000035*Z,0.0111*X-(0.0162+0.0124)*Y ,0.0039*X-0.000035*Z], [X,Y,Z],ics=[0,1578,612,2822],ivar=t,end_points=100,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="Mass of lead in bloodstream")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="Mass of lead in tissues")
sage: ZZ=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(ZZ,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="Mass of lead in bones",title='Time series of lead elimination\nin a three compartment model with no lead inhalation ', axes_labels=['$t$','$X,Y,Z$'])
sage: show(LP)
sage: X,Y,Z,t=var('X Y Z  t')
sage: ss = desolve_system_rk4([-(0.0211+0.0111+0.0039)*X+0.0124*Y+0.000035*Z,0.0111*X-(0.0162+0.0124)*Y ,0.0039*X-0.000035*Z], [X,Y,Z],ics=[0,1578,612,2822],ivar=t,end_points=1000,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="Mass of lead in bloodstream")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="Mass of lead in tissues")
sage: ZZ=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(ZZ,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="Mass of lead in bones",title='Time series of lead elimination\nin a three compartment model with no lead inhalation ', axes_labels=['$t$','$X,Y,Z$'])
sage: show(LP)
sage: X,Y,Z,t=var('X Y Z  t')
sage: ss = desolve_system_rk4([-(.1+0.0211+0.0111+0.0039)*X+0.0124*Y+0.000035*Z,0.0111*X-(0.0162+0.0124)*Y ,0.0039*X-0.000035*Z], [X,Y,Z],ics=[0,1578,612,2822],ivar=t,end_points=1000,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="Mass of lead in bloodstream")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="Mass of lead in tissues")
sage: ZZ=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(ZZ,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="Mass of lead in bones",title='Time series of the amount of lead elimination\nin a three compartment model with no lead inhalation\nand chelation', axes_labels=['$t$','$X,Y,Z$'])
sage: show(LP)
sage: #two compartment model
sage: X,Z,t=var('X Z   t')
sage: ss = desolve_system_rk4([-(0.0373+0.0039)*X+0.000035*Z+49.3,0.0039*X-0.000035*Z], [X,Z],ics=[0,0,0],ivar=t,end_points=500,step=1)
sage: XX=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="$X$ Mass of lead in bloodstream")
sage: ZZ=[[i,k] for i,j,k in ss]
sage: LP += list_plot(ZZ,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="$Z$ Mass of lead in bones",title='Time series of the amount of lead in\n two compartments and with constant lead inhalation', axes_labels=['$t$','$X,Z$'])
sage: show(LP)
sage: ss[-1]
[500.0, 1198.378777252549, 2203.243759104843]
sage: #two compartment model
sage: X,Z,t=var('X Z   t')
sage: ss = desolve_system_rk4([-(0.0162+0.0211+0.0039)*X+0.000035*Z,0.0039*X-0.000035*Z], [X,Z],ics=[0,1200,4483],ivar=t,end_points=1000,step=1)
sage: XX=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="$X$ Mass of lead in bloodstream")
sage: ZZ=[[i,k] for i,j,k in ss]
sage: LP += list_plot(ZZ,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="$Z$ Mass of lead in bones",title='Time series of lead elimination in\n two compartments and with no lead inhalation', axes_labels=['$t$','$X,Z$'])
sage: show(LP)
sage: #two compartment model
sage: X,Z,t=var('X Z   t')
sage: ss = desolve_system_rk4([-(.2+0.0162+0.0211+0.0039)*X+0.000035*Z,0.0039*X-0.000035*Z], [X,Z],ics=[0,1200,4483],ivar=t,end_points=1000,step=1)
sage: XX=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="$X$ Mass of lead in bloodstream")
sage: ZZ=[[i,k] for i,j,k in ss]
sage: LP += list_plot(ZZ,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="$Z$ Mass of lead in bones",title='Time series of lead elimination in\n two compartments, with no lead inhalation and with chelation', axes_labels=['$t$','$X,Z$'])
sage: show(LP)