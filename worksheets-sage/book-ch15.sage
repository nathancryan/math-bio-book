sage: #with air input
sage: X,Z,t=var('X Z  t')
sage: a=1050
sage: ss = desolve_system_rk4([-(2+3)*X+7*Z+a,2*X-7*Z], [X,Z],ics=[0,13,.5],ivar=t,end_points=10,step=.1)
sage: XX=[ [i,j] for i,j,l in ss]
sage: LP=list_plot(XX,plotjoined=True,thickness=3,legend_label="Mass of lead in bloodstream")
sage: ZZ=[[i,l] for i,j,l in ss]
sage: LP += list_plot(ZZ,color="green",plotjoined=True,thickness=3,linestyle="--",legend_label="Mass of lead in bones",title='Time series of the amount of lead in\n two compartments and with constant lead inhalation', axes_labels=['$t$','$X,Z$'])
sage: show(LP)
sage: ss[-1]
[10.0, 349.9999998251884, 99.99999992825273]
sage: Cmax = [(1000,333.33),(1050,350),(950,316.667)]
sage: 1-317.460317/333.33
0.0476095250952510
sage: def tornado_plot(test_var,var_list, pct_list, pos_sensitivity_list, neg_sensitivity_list):
...       '''
...           test_var: the variable whose senstivity you are analyzing, a string
...           var_list: a list of strings that correspond to the parameters you are varying
...           pct_list: a list of percentages where the ith entry determines how much you vary the ith parameter
...           pos_sensitivity_list: a list of percentages that result when you increase a parameter by the appropriate percentage
...           neg_sensitivity_list: a list of percentages that result when you decrease a parameter by the appropriate percentage
...       ;
...           
...       num_bars = len(var_list)
...       P = line([(0,0),(0,num_bars)])
...       pos_scale = max(pos_sensitivity_list)
...       neg_scale = max(neg_sensitivity_list)
...       ss = [" "+str(pct_list[i])+" percent change in parameter "+var_list[i] +"\n" for i in range(num_bars)]
...       tt = ''.join(ss)
...       P += plot(0,(x,-neg_scale,pos_scale),ticks=[ceil(pos_scale/num_bars),[]],title="Sensitivity of "+test_var+" to a \n"+tt)
...       for i in range(num_bars):
...           P += polygon([(0,i+.2),(pos_sensitivity_list[i],i+.2),(pos_sensitivity_list[i],i+.8),(0,i+.8)],color=(0,0,1))
...           P += polygon([(0,i+.2),(-neg_sensitivity_list[i],i+.2),(-neg_sensitivity_list[i],i+.8),(0,i+.8)],color=(1,0,0))
...           P += text(var_list[i],(pos_scale*1.1,i+.5))
...       return P
sage: PP = tornado_plot('Cmax',['a','b','d','e'], [5,5,5,5], [5,5.1,0,0],[5,4.8,0,0])
sage: show(PP,gridlines=True)