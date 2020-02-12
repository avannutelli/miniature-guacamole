CREATE (j:Article { tittle : '',
                    year : ,
                    journal : ,})
CREATE (a:Author { name : '',
                  affiliation : ''})
CREATE (k:KeyWord { words : ''})
CREATE (r:Result { importance : '',
                  res: ''})

MATCH (j:Article)
WHERE j.tittle = ''
MATCH (a:Author)
WHERE a.name = '' OR a.name = ''
CREATE (j)-[:WRITTEDBY]->(a)

MATCH (j:Article)
WHERE j.tittle = ''
MATCH (k:KeyWord)
WHERE k.name = '' OR k.name = ''
CREATE (j)-[:ISABOUT]->(k)

MATCH (j:Article)
WHERE j.tittle = ''
MATCH (r:Result)
WHERE r.name = '' OR r.name = ''
CREATE (j)-[:SHOWS]->(r)

MATCH (a:Author)
WHERE a.name = ''
MATCH (k:KeyWord)
WHERE k.name = '' OR k.name = ''
CREATE (a)-[:WORKSON]->(k)

MATCH (r:Result)
WHERE r.name = ''
MATCH (k:KeyWord)
WHERE k.name = '' OR k.name = ''
CREATE (k)<-[:IMPACTS]-(r)
