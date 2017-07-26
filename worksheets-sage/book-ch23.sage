sage: X,Y,P,t=var('X Y P  t')
sage: ss = desolve_system_rk4([X*(1-X)-0.9*X*Y-0.122*X*P,Y*(1-Y)-1.1*X*Y-0.1*Y*P,-0.11*P+0.2*P*X+0.1*P*Y], [X,Y,P],ics=[0,0.6,.2,0],ivar=t,end_points=500,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: PP=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(PP,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$",title='Time series of two prey and one predator\nwhen $PY$ interaction is symmetric\nin the absence of predators', axes_labels=['$t$','$X,Y,P$'])
sage: show(LP)
sage: X,Y,P,t=var('X Y P  t')
sage: ss = desolve_system_rk4([X*(1-X)-0.9*X*Y-0.5*X*P,Y*(1-Y)-1.1*X*Y-0.1*Y*P,-0.11*P+0.2*P*X+0.1*P*Y], [X,Y,P],ics=[0,0.6,.2,0.1],ivar=t,end_points=500,step=1)
sage: XX=[ [j,k] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: PP=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(PP,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$",title='Time series of two prey and one predator\nwhen $PX$ coefficient in $dX/dt$ equation is 0.5', axes_labels=['$t$','$X,Y,P$'])
sage: show(LP)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: X,Y,P,t=var('X Y P  t')
sage: ss = desolve_system_rk4([X*(1-X)-0.9*X*Y-0.9*X*P,Y*(1-Y)-1.1*X*Y-0.1*Y*P,-0.11*P+0.2*P*X+0.1*P*Y], [X,Y,P],ics=[0,0.6,.2,0.1],ivar=t,end_points=500,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: PP=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(PP,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$",title='Time series of two prey and one predator\nwhen $PX$ coefficient in $dX/dt$ equation is 0.9', axes_labels=['$t$','$X,Y,P$'])
sage: show(LP)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: X,Y,P,t=var('X Y P  t')
sage: ss = desolve_system_rk4([X*(1-X)-0.9*X*Y-0.2*X*P,Y*(1-Y)-1.1*X*Y-0.1*Y*P,-0.11*P+0.2*P*X+0.1*P*Y], [X,Y,P],ics=[0,0.6,.2,0.1],ivar=t,end_points=1000,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: PP=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(PP,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$",title='Time series of two prey and one predator', axes_labels=['$t$','$X,Y,P$'])
sage: show(LP)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: X,Y,P,t=var('X Y P  t')
sage: ss = desolve_system_rk4([X*(1-X)-0.9*X*Y-0.2*X*P,Y*(1-Y)-1.1*X*Y-0.1*Y*P,-0.11*P+0.2*P*X+0.1*P*Y], [X,Y,P],ics=[0,0.6,.2,0],ivar=t,end_points=1000,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: PP=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(PP,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$",title='Time series of two prey and predator removed', axes_labels=['$t$','$X,Y,P$'])
sage: show(LP)
^CTraceback (most recent call last):    PP=[[i,l] for i,j,k,l in ss]
  File "", line 1, in <module>
    
  File "/tmp/tmpO1HxYU/___code___.py", line 4, in <module>
    ss = desolve_system_rk4([X*(_sage_const_1 -X)-_sage_const_0p9 *X*Y-_sage_const_0p2 *X*P,Y*(_sage_const_1 -Y)-_sage_const_1p1 *X*Y-_sage_const_0p1 *Y*P,-_sage_const_0p11 *P+_sage_const_0p2 *P*X+_sage_const_0p1 *P*Y], [X,Y,P],ics=[_sage_const_0 ,_sage_const_0p6 ,_sage_const_p2 ,_sage_const_0 ],ivar=t,end_points=_sage_const_1000 ,step=_sage_const_1 )
  File "/nfs/software/sage-6.3/local/lib/python2.7/site-packages/sage/calculus/desolvers.py", line 1342, in desolve_system_rk4
    dess = [de._maxima_().str() for de in des]
  File "expression.pyx", line 585, in sage.symbolic.expression.Expression._maxima_ (build/cythonized/sage/symbolic/expression.cpp:5366)
  File "sage_object.pyx", line 570, in sage.structure.sage_object.SageObject._interface_ (build/cythonized/sage/structure/sage_object.c:4607)
  File "lazy_import.pyx", line 326, in sage.misc.lazy_import.LazyImport.__getattr__ (build/cythonized/sage/misc/lazy_import.c:2834)

  File "lazy_import.pyx", line 250, in sage.misc.lazy_import.LazyImport._get_object (build/cythonized/sage/misc/lazy_import.c:2024)
  File "/nfs/software/sage-6.3/local/lib/python2.7/site-packages/sage/interfaces/maxima_lib.py", line 154, in <module>
    ecl_eval("#$%s$"%l)
  File "ecl.pyx", line 1316, in sage.libs.ecl.ecl_eval (build/cythonized/sage/libs/ecl.c:8834)
  File "ecl.pyx", line 1331, in sage.libs.ecl.ecl_eval (build/cythonized/sage/libs/ecl.c:8767)
  File "ecl.pyx", line 337, in sage.libs.ecl.ecl_safe_eval (build/cythonized/sage/libs/ecl.c:4349)
RuntimeError: ECL says: Console interrupt.
__SAGE__
sage: X,Y,P,t=var('X Y P  t')
sage: ss = desolve_system_rk4([X*(1-X)-0.9*X*Y-0.2*X*P,Y*(1-Y)-1.1*X*Y-0.1*Y*P,-0.11*P+0.2*P*X+0.1*P*Y], [X,Y,P],ics=[0,0.6,.2,0.1],ivar=t,end_points=1000,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: PP=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(PP,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$",title='Time series of two prey and one predator\nwhen $PX$ coefficient in $dX/dt$ equation is 0.2', axes_labels=['$t$','$X,Y,P$'])
sage: show(LP)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: X,Y,P,t=var('X Y P  t')
sage: ss = desolve_system_rk4([X*(1-X)-0.9*X*Y-0.1*X*P,Y*(1-Y)-1.1*X*Y-0.1*Y*P,-0.11*P+0.2*P*X+0.1*P*Y], [X,Y,P],ics=[0,0.6,.2,0.1],ivar=t,end_points=1000,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: PP=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(PP,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$",title='Time series of two prey and one predator\nwhen $PX$ coefficient in $dX/dt$ equation is 0.1', axes_labels=['$t$','$X,Y,P$'])
sage: show(LP)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: X,Y,P,t=var('X Y P  t')
sage: ss = desolve_system_rk4([X*(1-X)-0.9*X*Y-X*P,Y*(1-Y)-1.1*X*Y-0.1*Y*P,-0.11*P+0.2*P*X+0.1*P*Y], [X,Y,P],ics=[0,0.6,.2,0.1],ivar=t,end_points=1000,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: PP=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(PP,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$",title='Time series of two prey and one predator\nwhen $PX$ coefficient in $dX/dt$ equation is 1.0', axes_labels=['$t$','$X,Y,P$'])
sage: show(LP)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: def fake_fcn(X,Y,P,t):
...       if Y < 10:
...           return 0
...       return X*(1-X)-0.9*X*Y-0.2*X*P
sage: plot(unit_step(x),(x,0,5))
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: X,Y,P,t=var('X Y P  t')
sage: ss = desolve_system_rk4([(X*(1-X)-0.9*X*Y-0.2*X*P)*unit_step(t-4),Y*(1-Y)-1.1*X*Y-0.1*Y*P,-0.11*P+0.2*P*X+0.1*P*Y], [X,Y,P],ics=[0,0.6,.2,0.1],ivar=t,end_points=50,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: PP=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(PP,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$",title='Time series of two prey and one predator\nwhen $PX$ coefficient in $dX/dt$ equation is 0.2', axes_labels=['$t$','$X,Y,P$'])
sage: show(LP)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: X,Y,P,t=var('X Y P  t')
sage: ss = desolve_system_rk4([X*(1-X)-0.9*X*Y-0.2*X*P,Y*(1-Y)-1.1*X*Y-0.1*Y*P,-0.11*P+0.2*P*X+0.1*P*Y], [X,Y,P],ics=[0,0.6,.2,0.1],ivar=t,end_points=500,step=1)
sage: XX=[ [i,j] for i,j,k,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: PP=[[i,l] for i,j,k,l in ss]
sage: LP += list_plot(PP,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$",title='Time series of two prey and one predator\nwhen $PX$ coefficient in $dX/dt$ equation is 0.2', axes_labels=['$t$','$X,Y,P$'])
sage: show(LP)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: X,Y,t=var('X Y   t')
sage: ss = desolve_system_rk4([X*(1-X)-X*Y-0.001*X*Y,Y*(1-Y)-X*Y+0.2*X*Y], [X,Y],ics=[0,0.6,.2],ivar=t,end_points=1000,step=1)
sage: XX=[ [i,j] for i,j,k in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k in ss]
sage: LP += list_plot(YY,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$", axes_labels=['$t$','$X,Y$'])
sage: show(LP)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: X,Y,Z,P,t = var('X Y Z P t')
sage: ss = desolve_system_rk4([ X*(1 - X) - .9*X*Y - 0.9*X*Z -0.006*X*P,Y*(1 - Y) - .9*X*Y - 2*Y*Z -0.002*Y*P,Z*(1 - Z) - .85*Z*Y - .8*X*Z - 5*Z*P  , -0.11*P + 0.01*P*X + 0.02*P*Y + 2*P*Z], [X,Y,Z,P],ics=[0,0.2,.2,.2,0.5],ivar=t,end_points=100,step=1)
sage: XX=[ [i,j] for i,j,k,l,m in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="prey $X$")
sage: YY=[[i,k] for i,j,k,l,m in ss]
sage: LP += list_plot(YY,color="red",plotjoined=True,thickness=3,linestyle=":",legend_label="prey $Y$")
sage: ZZ=[[i,l] for i,j,k,l,m in ss]
sage: LP += list_plot(ZZ,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="prey $Z$")
sage: PP = [[i,m] for i,j,k,l,m in ss]
sage: LP += list_plot(PP,color="orange",plotjoined=True,thickness=3,linestyle="--",legend_label="predator $P$")
sage: show(LP)
<html><font color='black'><img src='cell://sage0.png'></font></html>