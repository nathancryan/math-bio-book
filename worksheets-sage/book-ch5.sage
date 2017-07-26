sage: P = line([(2,0),(5,0)],axes=False,linestyle=":",thickness=3)
sage: P += line([(5,0),(19,0)],thickness=3)
sage: P += text("$N=0$",(5,-.07),ymin=-2)
sage: P += text("$N=1$",(15,-.07),ymin=-2)
sage: P += point((5,0),size=60,marker="D", color="red",alpha=2,zorder=4)
sage: P += point((15,0),size=60,marker="D",color="red",alpha=2,zorder=4)
sage: jj = 20
sage: for ii in range(6,jj):
...       P += arrow2d((ii,0),(ii+.1*ii*(1-ii/15),0),width=1,arrowsize=10,color="magenta",zorder=5)
...
sage: show(P)
sage: P = line([(2,0),(5,0)],axes=False,linestyle=":",thickness=3)
sage: P += line([(5,0),(19,0)],thickness=3)
sage: P += text("$N=0$",(5,-.2),ymin=-2)
sage: P += text("$N=1$",(15,-.2),ymin=-2)
sage: P += point((5,0),size=60,marker="D", color="red",alpha=2,zorder=4)
sage: P += point((15,0),size=60,marker="D",color="red",alpha=2,zorder=4)
sage: jj = 20
sage: for ii in range(6,jj):
...       P += arrow2d((ii,0),(ii+.1*ii*(1-ii/15),0),width=1,arrowsize=10,color="magenta",zorder=5)
...
sage: P += plot(-.13*(x-5)*(x-15),(x,4,16),axes=False)
sage: show(P)
sage: FF = plot(3.5*2/(2+e^(-4*(x-2))),(0,7),ticks=[[],[]],thickness=3,legend_label="intial population below carrying capacity $K$ and positive")
sage: FF += line([(0,3.5),(7,3.5)],linestyle='--',color='red',legend_label="initial population equal to carrying capacity $K$",thickness=3)
sage: FF += plot(0.2-3.5*2*e/(-2*e+e^(-4*x)),(0,7),ticks=[[],[]],thickness=3,legend_label="intial population above carrying capacity $K$",linestyle=':')
sage: FF += line([(0,0),(7,0)],linestyle='-.',color='red',legend_label="no initial population",thickness=3)
sage: FF.set_legend_options(loc=5)
sage: FF += point((0,0),marker='D',size=60,color="red",zorder=5)
sage: FF += point((0,3.5),marker='D',size=60,color="red",zorder=5)
sage: for ii in srange(0,5,.5):
...       FF += arrow2d((0,ii),(0,ii+.1*ii*(1-ii/3.5)),width=1,arrowsize=10,color="magenta",zorder=5)
...
sage: show(FF)
sage: P = line([(2,0),(5,0)],axes=False,linestyle=":",thickness=3)
sage: P += line([(5,0),(19,0)],thickness=3)
sage: P += text("$N=0$",(5,-.4),ymin=-2)
sage: P += text("$N=1$",(15,-.4),ymin=-2)
sage: P += text("$N=M$",(7,-.4),ymin=-2)
sage: P += point((5,0),size=60,marker="D", color="red",alpha=2,zorder=4)
sage: P += point((15,0),size=60,marker="D",color="red",alpha=2,zorder=4)
sage: P += point((7,0),size=60,marker="D",color="red",alpha=2,zorder=6)
sage: jj = 20
sage: for ii in range(6,jj):
...       P += arrow2d((ii,0),(ii+-.13*ii*(1-ii/7)*(1-ii/15),0),width=1,arrowsize=10,color="magenta",zorder=5)
...
sage: P += plot(-.13*(x-5)*(x-7)*(x-15),(x,4,16),axes=False)
sage: show(P)
sage: P = line([(-5,0),(10,0)],thickness=3)
sage: P += text("$N=0$",(0,-.1),ymin=-2)
sage: P += text("$N=(r-d_p)/r$",(7,-.1),ymin=-2)
sage: P += point((0,0),size=60,marker="D", color="red",alpha=2,zorder=4)
sage: P += point((7,0),size=60,marker="D",color="red",alpha=2,zorder=4)
sage: jj=10
sage: for ii in srange(-1,jj):
...       P += arrow2d((ii,0),(ii+sgn(-.125*ii*(ii-7)/2),0),width=1,arrowsize=10,color="magenta",zorder=5)
...
sage: P += plot(-.125*x*(x-7),(x,-1,8),axes=False)
sage: show(P)
sage: P = line([(-5,0),(10,0)],thickness=3)
sage: P += text("$N=(1-\sqrt{1-4d_p/r})/2$",(2,-.1),ymin=-2)
sage: P += text("$N=(1+\sqrt{1-4d_p/r})/2$",(7,-.1),ymin=-2)
sage: P += point((2,0),size=60,marker="D", color="red",alpha=2,zorder=4)
sage: P += point((7,0),size=60,marker="D",color="red",alpha=2,zorder=4)
sage: jj=10
sage: for ii in srange(-1,jj):
...       P += arrow2d((ii,0),(ii+sgn(-.125*(ii-2)*(ii-7))/2,0),width=1,arrowsize=10,color="magenta",zorder=5)
...
sage: P += plot(-.125*(x-2)*(x-7),(x,1,8),axes=False)
sage: show(P)