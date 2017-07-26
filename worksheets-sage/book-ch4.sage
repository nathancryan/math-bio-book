sage: fish_catch = [1035,2739,10552,6071,7930,11140,11268,11020,10368,8987,2930,4380,4910,4900,6530,3845,3877,3907,2141,1733,15017,9288,7058,206,913,785]
sage: years = [1965..1990]
sage: pts = zip(years,fish_catch)
sage: Q= list_plot(pts,size=30,legend_label="population $N$",title='Population of seu vs year\nas measured among fish caught by Ugandan fisheries', axes_labels=['$t$','$N$'])
sage: Q.set_legend_options(loc=9)
sage: show(Q)
sage: # should really be doing this by pct catch by weight
sage: catfish_pct = [4.24, 9.78,27.6,15,17.1,26.7,29,31.2,31.9,35.2,21.3,39.5,31.5,31.5,39,38.5,22.8,30,12.6,39.4,27.5,16.3,7.58,.192,.69,.654]
sage: pts = zip([1965..1990],catfish_pct)
sage: Q= list_plot(pts,size=30,legend_label="population $N$",title='Percentage of seu vs year\nas measured among fish caught by Ugandan fisheries', axes_labels=['$t$','$N$'])
sage: Q.set_legend_options(loc=1)
sage: show(Q)
sage: # should really be doing this by pct catch by weight
sage: catfish_pct = [4.24, 9.78,27.6,15,17.1,26.7,29,31.2,31.9,35.2,21.3,39.5,31.5,31.5,39,38.5,22.8,30,12.6,39.4,27.5,16.3,7.58,.192,.69,.654]
sage: pts = zip([1965..1990],catfish_pct)
sage: Q= list_plot(pts,size=30,legend_label="actual percentage",title='Percentage of seu vs year\nas measured among fish caught by Ugandan fisheries', axes_labels=['$t$','$N$'])
sage: Q += plot(4.24*e^(0.8357762148028*(x-1965)),(x,1965,1969.5), thickness=3,legend_label="fitted percentage using first two data points")
sage: #Q += plot(26.110164839319303*e^(-0.011853198363150708*(x-1965)),(x,1965,1990), thickness=3,linestyle=":",legend_label="fitted percentage using all the data points")
sage: #Q += plot(10.372496252226473*e^(0.16583410261619144*(x-1965)),(x,1965,1982), thickness=3,linestyle="--",legend_label="fitted percentage using all the data points")
sage: show(Q)
sage: # should really be doing this by pct catch by weight
sage: catfish_pct = [4.24, 9.78,27.6,15,17.1,26.7,29,31.2,31.9,35.2,21.3,39.5,31.5,31.5,39,38.5,22.8,30,12.6,39.4,27.5,16.3,7.58,.192,.69,.654]
sage: pts = zip([1965..1990],catfish_pct)
sage: Q= list_plot(pts,size=30,legend_label="actual percentage",title='Percentage of seu vs year\nas measured among fish caught by Ugandan fisheries', axes_labels=['$t$','$N$'])
sage: Q += plot( 23.863166666866018/(1+e^(-221.19601854350637*(x-1.7497775211686561-1965))),(x,1965,1990), thickness=3,legend_label="fitted percentage using all data points")
sage: Q += plot(21.300000007465115/(1+e^(-20.922364722092308*(x-1.0078261385840563-1965))),(x,1965,1990), thickness=3,linestyle=":",legend_label="fitted percentage using the first four data points")
sage: Q += plot(35.600846984845106/(1+e^(-0.41818129230464524*(x-2.7197631158794646-1965))),(x,1965,1990), thickness=3,linestyle="--",legend_label="fitted percentage using the first eight data points")
sage: Q.set_legend_options(loc=8)
sage: show(Q)
sage: var("c r a x")
sage: exp_model(x) = c*e^(r*x)
sage: log_model(x) = c/(1+e^(r*(x-a)))
sage: catfish_pct = [4.24, 9.78,27.6,15,17.1,26.7,29,31.2,31.9,35.2,21.3,39.5,31.5,31.5,39,38.5,22.8,30,12.6,39.4,27.5,16.3,7.58,.192,.69,.654]
sage: pts = zip([0..25],catfish_pct)
sage: find_fit(pts,exp_model)
[c == 26.110164839319303, r == -0.011853198363150708]
sage: catfish_pct = [4.24, 9.78,27.6,15,17.1,26.7,29,31.2,31.9,35.2,21.3,39.5,31.5,31.5,39,38.5,22.8,30,12.6,39.4,27.5,16.3,7.58,.192,.69,.654]
sage: pts = zip([0..25],catfish_pct)
sage: find_fit(pts[:8],log_model)
[a == 3.3409135544415127, r == -0.36422200655076786]
sage: var("c r a x")
sage: exp_model(x) = c*e^(r*x)
sage: log_model(x) = c/(1+e^(r*(x-a)))
sage: mm(x) = 39.4*c/(c+39.4*e^(-r*x))
sage: find_fit(pts[:2],mm)
[c == 4.751308304891923, r == 1.007235478780183]
sage: # should really be doing this by pct catch by weight
sage: catfish_pct = [4.24, 9.78,27.6,15,17.1,26.7,29,31.2,31.9,35.2,21.3,39.5,31.5,31.5,39,38.5,22.8,30,12.6,39.4,27.5,16.3,7.58,.192,.69,.654]
sage: pts = zip([1965..1990],catfish_pct)
sage: Q= list_plot(pts,size=30,legend_label="actual percentage",title='Percentage of seu vs year\nas measured among fish caught by Ugandan fisheries', axes_labels=['$t$','$N$'])
sage: Q += plot( 39.4*4.751308304891923/(4.751308304891923+39.4*e^(-1.007235478780183*(x-1965))),(x,1965,1990), thickness=3,legend_label="fitted percentage using parameters as computed in Exercise 4.12")
sage: show(Q)
sage: find_fit(pts[:5],exp_model)
[c == 10.372496252226473, r == 0.16583410261619144]
sage: find_fit(pts[:15],exp_model)
[c == 15.971931121270817, r == 0.06487767352882767]
sage: find_fit(pts,log_model)
[a == 1.7497775211686561, c == 23.863166666866018, r == -221.19601854350637]
sage: Q = plot((10/e^(10))/(5/e^10 + e^(-2*x)),(x,0,10), thickness=3,legend_label="",title='Logistic curve $N(t)=(KC)/(C+e^{-rt})$ with $r=2$, $C=5/e^{10}$ and $K=2$', axes_labels=['$t$','$N$'])
sage: show(Q)
sage: P = line([(2,0),(5,0)],axes=False,linestyle=":",thickness=3)
sage: P += line([(5,0),(19,0)],thickness=3)
sage: P += text("$N=0$",(5,-.07),ymin=-2)
sage: P += text("$N=K$",(15,-.07),ymin=-2)
sage: P += point((5,0),size=60,marker="D", color="red",alpha=2,zorder=4)
sage: P += point((15,0),size=60,marker="D",color="red",alpha=2,zorder=4)
sage: jj = 20
sage: for ii in range(6,jj):
...       P += arrow2d((ii,0),(ii+.1*ii*(1-ii/15),0),width=1,arrowsize=10,color="magenta",zorder=5)
...
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