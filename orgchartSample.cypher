CREATE
(manish:EMPLOYEE{Name:"Manish Kumar Pandey", officialID:"GSI G 1568"}),
(bhavik:EMPLOYEE{Name:"Bhavik Garg", officialID:"GSI G 274"}),
(anil:EMPLOYEE{Name:"Anil Singh", officialID:"GSI G 818"}),
(vishal:EMPLOYEE{Name:"Vishal Malik", officialID:"GSI N 001"}),
(shriya:EMPLOYEE{Name:"Shriya Singh", officialID:"GSI GI 594"}),
(hardik:EMPLOYEE{Name:"Hardik Bhayana", officialID:"GSI G 1099"}),
(tarun:EMPLOYEE{Name:"Prateek Singh", officialID:"GSI GI 589"}),
(harshit:EMPLOYEE{Name:"Harshit Srivastava", officialID:"GSI GI 592"}),

(manish)-[:RL_EC]-> (bhavik),
(shriya)-[:RL_EC]-> (bhavik),
(hardik)-[:RL_EC]-> (anil),
(tarun)-[:RL_EC]-> (anil),
(bhavik) -[:RL_EC]-> (vishal),
(anil)-[:RL_EC]-> (vishal),

(manish)-[:RL_DC]-> (bhavik),
(anil)-[:RL_DC]-> (bhavik),
(bhavik) -[:RL_DC]-> (vishal),

(vishal)-[:RL_Gemini]-> (anil),
(bhavik)-[:RL_Gemini]-> (anil),
(shriya)-[:RL_Gemini]-> (anil),
(tarun)-[:RL_Gemini]-> (bhavik),
(hardik)-[:RL_Gemini]-> (bhavik),
(harshit)-[:RL_Gemini]-> (shriya);