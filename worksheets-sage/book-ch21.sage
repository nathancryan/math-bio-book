sage: p = line([(0,5),(1,0)],thickness=3,axes_labels=["$P$","$C$"],title="Graph of $dP/dt=0$ on the phase-plane")
sage: p+=text("$a/m$",(-.2,5))
sage: p+=text("1",(1,-.2))
sage: show(p,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
sage: q = line([(0,1),(4,0)],thickness=3,axes_labels=["$P$","$C$"],title="Graph of $dC/dt=0$ on the phase-plane")
sage: q+=text("1",(-.2,1))
sage: q+=text("$b/n$",(4,-.2))
sage: show(q,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
sage: p = line([(0,5),(1,0)],thickness=3,axes_labels=["$P$","$C$"],title="Possible graph of $dP/dt=0$ and $dC/dt=0$ on the phase-plane",legend_label="dP/dt=0$")
sage: p+=text("$a/m$",(-.2,5))
sage: p+=text("1",(1,-.2))
sage: q = line([(0,1),(4,0)],thickness=3,linestyle="-.",legend_label="dC/dt=0$",color="red")
sage: q+=text("1",(-.2,1))
sage: q+=text("$b/n$",(4,-.2))
sage: show(p+q,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
sage: p = line([(0,5),(4,0)],thickness=3,axes_labels=["$P$","$C$"],title="Possible graph of $dP/dt=0$ and $dC/dt=0$ on the phase-plane",legend_label="dP/dt=0$")
sage: p+=text("$a/m$",(-.2,5))
sage: p+=text("1",(4,-.2))
sage: q = line([(0,4),(2,0)],thickness=3,linestyle="-.",legend_label="dC/dt=0$",color="red")
sage: q+=text("1",(-.2,4))
sage: q+=text("$b/n$",(2,-.2))
sage: show(p+q,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
sage: p = line([(0,5),(4,0)],thickness=3,axes_labels=["$P$","$C$"],title="Possible graph of $dP/dt=0$ and $dC/dt=0$ on the phase-plane",legend_label="dP/dt=0$")
sage: p+=text("$a/m$",(-.2,5))
sage: p+=text("1",(4,-.2))
sage: p+= line([(0,4),(2,0)],thickness=3,linestyle="-.",legend_label="dC/dt=0$",color="red")
sage: p+=text("1",(-.2,4))
sage: p+=text("$b/n$",(2,-.2))
sage: show(p,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
sage: p = line([(0,5),(4,0)],thickness=3,axes_labels=["$P$","$C$"],title="Possible graph of $dP/dt=0$ and $dC/dt=0$ on the phase-plane",linestyle="-.",legend_label="dC/dt=0$",color="red")
sage: p+=text("$1$",(-.2,5))
sage: p+=text("$b/n$",(4,-.2))
sage: p+= line([(0,4),(2,0)],thickness=3,legend_label="dP/dt=0$")
sage: p+=text("$a/m$",(-.2,4))
sage: p+=text("$1$",(2,-.2))
sage: show(p,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
sage: p = line([(0,5),(1,0)],thickness=3,axes_labels=["$P$","$C$"],title="Possible graph of $dP/dt=0$ and $dC/dt=0$ on the phase-plane",legend_label="dP/dt=0$")
sage: p+=text("$a/m$",(-.2,5))
sage: p+=text("1",(1,-.2))
sage: q = line([(0,1),(4,0)],thickness=3,linestyle="-.",legend_label="dC/dt=0$",color="red")
sage: q+=text("1",(-.2,1))
sage: q+=text("$b/n$",(4,-.2))
sage: show(p+q,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
sage: p = line([(0,5),(1,0)],thickness=3,axes_labels=["$P$","$C$"],title="Possible graph of $dP/dt=0$ and $dC/dt=0$ on the phase-plane",linestyle="-.",legend_label="dC/dt=0$",color="red")
sage: p+=text("$1$",(-.2,5))
sage: p+=text("$b/n$",(1,-.2))
sage: q = line([(0,1),(4,0)],thickness=3,legend_label="dP/dt=0$")
sage: q+=text("$a/m$",(-.2,1))
sage: q+=text("$1$",(4,-.2))
sage: show(p+q,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
sage: p = line([(0,5),(4,0)],thickness=3,axes_labels=["$P$","$C$"],title="Isoclines of $dP/dt$ and $dC/dt$ on the phase-plane\nwith arrows indicating horizonal and vertical flows\nin each region",legend_label="dP/dt=0$")
sage: p+=text("$a/m$",(-.2,5))
sage: p+=text("1",(4,-.2))
sage: p+= line([(0,4),(2,0)],thickness=3,linestyle="-.",legend_label="dC/dt=0$",color="red")
sage: p+=text("1",(-.2,4))
sage: p+=text("$b/n$",(2,-.2))
sage: p+= arrow((.5,.6),(.5,1))
sage: p+= arrow((.6,.5),(1,.5))
sage: p+= arrow((2.5,.5),(2.1,.5))
sage: p+= arrow((2,.6),(2,1))
sage: p+= arrow((4.25,.5),(3.85,.5))
sage: p+= arrow((3.75,1),(3.75,.6))
sage: show(p,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
sage: p = line([(0,5),(4,0)],thickness=3,axes_labels=["$P$","$C$"],title="Isoclines of $dP/dt$ and $dC/dt$ on the phase-plane\nwith arrows indicating horizonal and vertical flows\nin each region",linestyle="-.",legend_label="dC/dt=0$",color="red")
sage: p+=text("$1$",(-.2,5))
sage: p+=text("$b/n$",(4,-.2))
sage: p+= line([(0,4),(2,0)],thickness=3,legend_label="dP/dt=0$")
sage: p+=text("$a/m$",(-.2,4))
sage: p+=text("$1$",(2,-.2))
sage: p+= arrow((.5,.6),(.5,1))
sage: p+= arrow((.6,.5),(1,.5))
sage: p+= arrow((2.1,.5),(2.5,.5))
sage: p+= arrow((2,1),(2,.6))
sage: p+= arrow((4.25,.5),(3.85,.5))
sage: p+= arrow((3.75,1),(3.75,.6))
sage: p+= text("C",(.5,1.2),fontweight='bold')
sage: p+= text("B",(2,1.2),fontweight='bold')
sage: p+= text("A",(3.75,1.2),fontweight='bold')
sage: show(p,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
sage: p = line([(0,5),(1,0)])
sage: p+= line([(0,1),(4,0)])
sage: p+= arrow((.23,1.6),(.23,1.26))
sage: p+= arrow((.27,1.25),(.60,1.25))
sage: p+= arrow((.27,.25),(.60,.25))
sage: p+= arrow((.23,.26),(.23,.60))
sage: p+= arrow((1.4,.25),(1.06,.25))
sage: p+= arrow((1.05,.26),(1.05,.6))
sage: p+= arrow((1.4,1.25),(1.06,1.25))
sage: p+= arrow((1.05,1.6),(1.05,1.26))
sage: show(p,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
<html><font color='black'><img src='cell://sage0.png'></font></html>
sage: p = line([(0,5),(1,0)])
sage: p+=text("$a/m$",(-.2,5))
sage: p+=text("1",(1,-.2))
sage: q = line([(0,6),(4,0)])
sage: q+=text("1",(-.2,6))
sage: q+=text("$b/n$",(4,-.2))
sage: show(p+q,ticks=[[],[]],aspect_ratio=1,xmax=6,ymax=6)
<html><font color='black'><img src='cell://sage0.png'></font></html>