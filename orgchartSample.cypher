CREATE
(manish:EMPLOYEE{Name:"Manish Kumar Pandey", officialID:"GSI G 1568"}),
(bhavik:EMPLOYEE{Name:"Bhavik Garg", officialID:"GSI G 274"}),
(anil:EMPLOYEE{Name:"Anil Singh", officialID:"GSI G 818"}),
(vishal:EMPLOYEE{Name:"Vishal Malik", officialID:"GSI N 001"}),
(shriya:EMPLOYEE{Name:"Shriya Singh", officialID:"GSI GI 594"}),
(hardik:EMPLOYEE{Name:"Hardik Bhayana", officialID:"GSI G 1099"}),
(tarun:EMPLOYEE{Name:"Prateek Singh", officialID:"GSI GI 589"}),
(harshit:EMPLOYEE{Name:"Harshit Srivastava", officialID:"GSI GI 592"}),

(manish)-[:RL_EC {name: "EC_Hierarchy"}]-> (bhavik),
(shriya)-[:RL_EC {name: "EC_Hierarchy"}]-> (bhavik),
(hardik)-[:RL_EC {name: "EC_Hierarchy"}]-> (anil),
(tarun)-[:RL_EC {name: "EC_Hierarchy"}]-> (anil),
(bhavik) -[:RL_EC {name: "EC_Hierarchy"}]-> (vishal),
(anil)-[:RL_EC {name: "EC_Hierarchy"}]-> (vishal),

(manish)-[:RL_DC {name: "DC_Hierarchy"}]-> (bhavik),
(anil)-[:RL_DC {name: "DC_Hierarchy"}]-> (bhavik),
(bhavik) -[:RL_DC {name: "DC_Hierarchy"}]-> (vishal),

(vishal)-[:RL_Gemini {name: "Gemini_Hierarchy"}]-> (anil),
(bhavik)-[:RL_Gemini {name: "Gemini_Hierarchy"}]-> (anil),
(shriya)-[:RL_Gemini {name: "Gemini_Hierarchy"}]-> (anil),
(tarun)-[:RL_Gemini {name: "Gemini_Hierarchy"}]-> (bhavik),
(hardik)-[:RL_Gemini {name: "Gemini_Hierarchy"}]-> (bhavik),
(harshit)-[:RL_Gemini {name: "Gemini_Hierarchy"}]-> (shriya);