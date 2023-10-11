︠ed4a8a1d-e8cb-4664-941d-bad30cc8ebf2s︠
def SubtreePoly(S,x): #Input S is tree, input x is variable for polynomial, output is subtree polynomial
    D={}
    P=0;
    T=S.copy();
    for v in T.vertices():
        D[v]=x;
    while T.order()>1:
        for v in T.vertices():
            if T.degree(v)==1:
                u=v;
                break;
        w=T[u][0];
        D[w]=expand(D[w]*(D[u]+1));
        P=P+D[u];
        T.delete_vertex(u);
    return P+D[T.vertices()[0]];

def Mean(G): #Input is subtree, output is mean subtree order
    P=SubtreePoly(G,x)
    Q=derivative(P,x);
    M=Q.substitute(x=1)/P.substitute(x=1);
    return M;
︡dad1a318-6d97-42e4-babc-d6c85931c082︡{"done":true}
︠acdf6e70-e796-49a1-a5ab-cf985427aca0s︠

for n in range(3,19):
    G=[]
    for g in graphs.trees(n):
        if 2 not in g.degree_sequence():
            G.append(g)

    for g in G:
        for e in g.edges(labels=False):
            h=g.copy()
            h.contract_edge(e)
            if Mean(h)+0.5>Mean(g):
                g.show()
                e
︡95fb6744-4609-468c-a461-dfb3b6846f3d︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_mC4uhh.svg","show":true,"text":null,"uuid":"039deca7-df20-4cdf-835a-6c4dd1a08050"},"once":false}︡{"stdout":"(0, 1)\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_oZSWwR.svg","show":true,"text":null,"uuid":"c2fb2a87-3217-447d-81a0-b83b6ae632aa"},"once":false}︡{"stdout":"(0, 2)"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_HPWguQ.svg","show":true,"text":null,"uuid":"604ef135-fff0-4cb6-93ba-bb1e7f571ece"},"once":false}︡{"stdout":"(0, 3)\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_JsjDS4.svg","show":true,"text":null,"uuid":"961db7bf-dc44-4f4b-9bf3-4d1f8d2d9087"},"once":false}︡{"stdout":"(0, 1)"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_Y0aaS3.svg","show":true,"text":null,"uuid":"755f928b-6405-4e2c-abf1-275d63cf697f"},"once":false}︡{"stdout":"(0, 1)"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_qsPKen.svg","show":true,"text":null,"uuid":"2b633433-cf04-4f9d-b5ed-a50fdfda5cf5"},"once":false}︡{"stdout":"(0, 1)"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_0jHwY1.svg","show":true,"text":null,"uuid":"7b06df9f-f4ed-46ae-93a1-fa2d31f91a28"},"once":false}︡{"stdout":"(0, 4)"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_MGjjiw.svg","show":true,"text":null,"uuid":"92352e69-88c4-4262-9791-e203cb373ca4"},"once":false}︡{"stdout":"(0, 5)"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_IGw6ap.svg","show":true,"text":null,"uuid":"8a7bb755-792b-4fd6-aeba-3e6c28e08f39"},"once":false}︡{"stdout":"(0, 1)"}︡{"stdout":"\n"}︡{"done":true}
︠1b74ee50-0a9d-4fa9-87fa-12344d0bf104s︠
for n in range(1,12):
    G=[]
    for g in graphs.trees(n):
        if 2 not in g.degree_sequence():
            G.append(g)
    Min=n;
    H=[]
    for g in G:
        if Mean(g)==Min:
            H.append(g)
        if Mean(g)<Min:
            Min=Mean(g);
            H=[g]
    for h in H:
        n
        h.show()

for n in range(12,19):
    G=[]
    for g in graphs.trees(n):
        if 2 not in g.degree_sequence():
            G.append(g)

    for g in G:
        if Mean(g)<(n+1)/2:
                g.show()
                round(Mean(g),5)
︡774cdf70-e15a-48d9-9705-7e24ca84f73a︡{"stdout":"1\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_VitGm_.svg","show":true,"text":null,"uuid":"853a6b0a-76ff-499c-86ea-92c3f6c83529"},"once":false}︡{"stdout":"2\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_4JXowN.svg","show":true,"text":null,"uuid":"5edd9ca3-5aff-4dc5-b77a-a4379e8e11a1"},"once":false}︡{"stdout":"4"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_7smjK8.svg","show":true,"text":null,"uuid":"91b787ae-baf9-42ad-b502-fe091d718719"},"once":false}︡{"stdout":"5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_onLQLU.svg","show":true,"text":null,"uuid":"a519516e-5e24-4a6e-830f-16f5b8196184"},"once":false}︡{"stdout":"6"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp__Cg6Mq.svg","show":true,"text":null,"uuid":"86ec8d01-b588-4314-9663-c8ac9e1fb1de"},"once":false}︡{"stdout":"7\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_ORcc1G.svg","show":true,"text":null,"uuid":"1cabf4d3-ef96-410b-a793-8467f3a0f27b"},"once":false}︡{"stdout":"8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_5Ihwbr.svg","show":true,"text":null,"uuid":"8eb38ddb-b4cc-4787-a1a1-df9a2086dbbe"},"once":false}︡{"stdout":"9"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_HY5p5U.svg","show":true,"text":null,"uuid":"daa35dd7-2ab9-439a-bc44-2ff111fe9c80"},"once":false}︡{"stdout":"10"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_pTqrij.svg","show":true,"text":null,"uuid":"fe12edcd-436d-46a4-ba7f-a73254b6629f"},"once":false}︡{"stdout":"11"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp__MypgB.svg","show":true,"text":null,"uuid":"ead4dcfd-471d-4af0-8e30-d4872797c5f8"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_IX4XWc.svg","show":true,"text":null,"uuid":"29050680-51d6-4a9b-9826-f341a49a62b9"},"once":false}︡{"stdout":"6.47062"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_dOaNuO.svg","show":true,"text":null,"uuid":"522c4213-6f19-48bb-a1a7-bf786d05039b"},"once":false}︡{"stdout":"6.98247"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_KoiyMy.svg","show":true,"text":null,"uuid":"001b17be-8686-4237-a901-19c10d5bee2a"},"once":false}︡{"stdout":"7.4897"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_FlSOHP.svg","show":true,"text":null,"uuid":"00285d80-c8df-474d-bcae-bf619c0c44c5"},"once":false}︡{"stdout":"7.99402"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_6Dy1Pv.svg","show":true,"text":null,"uuid":"d00c87d6-d269-4ca7-91bf-c297ffa9f928"},"once":false}︡{"stdout":"8.49657"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_Y543kj.svg","show":true,"text":null,"uuid":"5d952f2e-9f36-414e-9542-5ee471c3d4a0"},"once":false}︡{"stdout":"8.99805"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-57c88bfc-c6fe-4dda-a342-d6e163c692fe/438/tmp_odvCvZ.svg","show":true,"text":null,"uuid":"14512657-60e7-4107-beea-e814d106006c"},"once":false}︡{"stdout":"9.4989"}︡{"stdout":"\n"}︡{"done":true}









