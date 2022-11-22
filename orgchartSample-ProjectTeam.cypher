CREATE
(anil:EMPLOYEE{name:"Anil Singh", Designation:"Managing Director"}),
(sunil:EMPLOYEE{name:"Sunil Kumar", Designation:"Lead FES Analytics-Infra C++/DB"}),
(mannat:EMPLOYEE{name:"Mannat Kaur", Designation:"Senior Business Analyst L2"}),
(vikas:EMPLOYEE{name:"Vikas Gupta", Designation:"Lead Business Analyst L2"}),
(rohit:EMPLOYEE{name:"Rohit Goyal", Designation:"Assistant Vice President"}),
(anmol:EMPLOYEE{name:"Anmol Kohli", Designation:"Technology Solutions Lead L2"}),
(vasu:EMPLOYEE{name:"Vasu Garg", Designation:"Senior Software Engineer L1"}),

(development:TEAM{name:"Application Development"}),
(devops:TEAM{name:"DevOps"}),
(niva:TEAM{name:"Niva Bupa"}),
(beacon:TEAM{name:"Beacon DevOps"}),

(hdfc:PROJECT{name:"HDFC Ergo"}),

(development)-[:RL_DC]->(anil),
(devops)-[:RL_DC]->(anil),
(niva)-[:RL_DC]->(development),
(beacon)-[:RL_DC]->(devops),

(rohit)-[:RL_DC]->(beacon),
(hdfc)-[:RL_DC]->(rohit),
(anmol)-[:RL_DC]->(hdfc),
(vasu)-[:RL_DC]->(hdfc),
(sunil)-[:RL_DC]->(niva),

(mannat)-[:RL_DC]->(sunil),
(vikas)-[:RL_DC]->(sunil);