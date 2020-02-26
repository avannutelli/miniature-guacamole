CREATE (j:Article { tittle : 'New Modified Deoxythymine With Dibranched Tetraethylene Glycol Stabilizes G-Quadruplex Structures',
                    type : 'Article',
                    year : 2020,
                    journal : 'MDPI'})

CREATE (HTK:Author { name : 'Hisae Tateishi-Karimata',
                  affiliation : 'Konan University'})
CREATE (a:Author { name : 'Tatsuya Ohyama',
                  affiliation : 'Konan University'})
CREATE (a:Author { name : 'Takahiro Muraoka',
                  affiliation : 'Tokyo University'})
CREATE (a:Author { name : 'Shigenori Tanaka',
                  affiliation : 'Kobe University'})
CREATE (a:Author { name : 'Kazushi Kinbara',
                  affiliation : 'Tokyo Institute of Technology'})
CREATE (a:Author { name : 'Naoki Sugimoto',
                  affiliation : 'Konan University'})

CREATE (k:KeyWord { words : 'G4 stabilisation'})
CREATE (k:KeyWord { words : 'TEG'})

CREATE (r:Result { importance : 'Low',
                  res: 'developed a new modified deoxythymine with dibranched or tribranched tetraethylene glycol (TEG) and incorporated these TEG-modified deoxythymines into a loop region that forms an antiparallel G-quadruplex'})

MATCH (j:Article)
WHERE j.tittle = 'New Modified Deoxythymine With Dibranched Tetraethylene Glycol Stabilizes G-Quadruplex Structures'
MATCH (a:Author)
WHERE a.name = 'Hisae Tateishi-Karimata' OR a.name = 'Tatsuya Ohyama' OR a.name = 'Takahiro Muraoka' OR a.name = 'Shigenori Tanaka' OR a.name = 'Kazushi Kinbara' OR a.name = 'Naoki Sugimoto'
CREATE (j)-[:WRITTEDBY]->(a)

MATCH (j:Article)
WHERE j.tittle = 'New Modified Deoxythymine With Dibranched Tetraethylene Glycol Stabilizes G-Quadruplex Structures'
MATCH (k:KeyWord)
WHERE k.name = 'G4 stabilisation' OR k.name = 'TEG'
CREATE (j)-[:ISABOUT]->(k)

MATCH (j:Article)
WHERE j.tittle = 'New Modified Deoxythymine With Dibranched Tetraethylene Glycol Stabilizes G-Quadruplex Structures'
MATCH (r:Result)
WHERE r.name = 'developed a new modified deoxythymine with dibranched or tribranched tetraethylene glycol (TEG) and incorporated these TEG-modified deoxythymines into a loop region that forms an antiparallel G-quadruplex'
CREATE (j)-[:SHOWS]->(r)

// ************************************************************************** //

CREATE (j:Article { tittle : 'A Synthetic Pur-based Peptide Binds and Alters G-quadruplex Secondary Structure Present in the Expanded RNA Repeat of C9orf72 ALS/FTD',
                    type : 'Article',
                    year : 2020,
                    journal : 'Molecular cell research'})

CREATE (a:Author { name : 'Margaret J Wortman',
                  affiliation : 'Eastern Virginia Medical School'})
CREATE (a:Author { name : 'Dianne C Daniel',
                  affiliation : 'Eastern Virginia Medical School'})

CREATE (m:Method { name : 'CD'})

CREATE (k:KeyWord { words : 'Binding'})
CREATE (k:KeyWord { words : 'Unwinding'})

CREATE (r:Result { importance : 'Medium',
                  res: 'Tzip peptide binds the repeat sequences G4, both in DNA and RNA'})
CREATE (r:Result { importance : 'Medium',
                  res: 'Potential role of Tzip to unwind RNA G4'})

MATCH (j:Article)
WHERE j.tittle = 'A Synthetic Pur-based Peptide Binds and Alters G-quadruplex Secondary Structure Present in the Expanded RNA Repeat of C9orf72 ALS/FTD'
MATCH (a:Author)
WHERE a.name = 'Margaret J Wortman' OR a.name = 'Dianne C Daniel'
CREATE (j)-[:WRITTEDBY]->(a)

MATCH (j:Article)
WHERE j.tittle = 'A Synthetic Pur-based Peptide Binds and Alters G-quadruplex Secondary Structure Present in the Expanded RNA Repeat of C9orf72 ALS/FTD'
MATCH (m:Method)
WHERE m.name = 'CD'
CREATE (m)-[:ISUSED]->(j)

MATCH (j:Article)
WHERE j.tittle = 'A Synthetic Pur-based Peptide Binds and Alters G-quadruplex Secondary Structure Present in the Expanded RNA Repeat of C9orf72 ALS/FTD'
MATCH (k:KeyWord)
WHERE k.name = 'Binding' OR k.name = 'Unwinding'
CREATE (j)-[:ISABOUT]->(k)

MATCH (j:Article)
WHERE j.tittle = 'A Synthetic Pur-based Peptide Binds and Alters G-quadruplex Secondary Structure Present in the Expanded RNA Repeat of C9orf72 ALS/FTD'
MATCH (r:Result)
WHERE r.name = 'Tzip peptide binds the repeat sequences G4, both in DNA and RNA' OR r.name = 'Potential role of Tzip to unwind RNA G4'
CREATE (j)-[:SHOWS]->(r)

// ************************************************************************** //

CREATE (j:Article { tittle : 'Small-molecule G-quadruplex Stabilizers Reveal a Novel Pathway of Autophagy Regulation in Neurons',
                    type : 'Article',
                    year : 2020,
                    journal : 'eLife',})

CREATE (a:Author { name : 'Jose F Moruno-Manchon',
                  affiliation : 'The University of Texas McGovern Medical School at Houston'})
CREATE (a:Author { name : 'Andrey S Tsvetkov',
                  affiliation : 'The University of Texas McGovern Medical School at Houston'})

CREATE (m:Method { name : 'CD'})
CREATE (m:Method { name : 'AG'})
CREATE (m:Method { name : 'QGRS mapper'})

CREATE (k:KeyWord { words : 'DNA'})
CREATE (k:KeyWord { words : 'Autophagy'})
CREATE (k:KeyWord { words : 'Aging'})
CREATE (k:KeyWord { words : 'mouse'})
CREATE (k:KeyWord { words : 'neuronal degeneration'})

CREATE (r:Result { importance : 'High',
                  res: 'More stable G4 in old mouse brain'})

CREATE (c:Comment { com : 'Mutant is 7 G to 7C, good ?'})
CREATE (c:Comment { com : 'CD graph strange'})

MATCH (j:Article)
WHERE j.tittle = 'Small-molecule G-quadruplex Stabilizers Reveal a Novel Pathway of Autophagy Regulation in Neurons'
MATCH (a:Author)
WHERE a.name = 'Jose F Moruno-Manchon' OR a.name = 'Andrey S Tsvetkov'
CREATE (j)-[:WRITTEDBY]->(a)

MATCH (j:Article)
WHERE j.tittle = 'Small-molecule G-quadruplex Stabilizers Reveal a Novel Pathway of Autophagy Regulation in Neurons'
MATCH (m:Method)
WHERE m.name = 'CD' OR m.name = 'AG' OR m.name = 'QGRS mapper'
CREATE (m)-[:ISUSED]->(j)

MATCH (j:Article)
WHERE j.tittle = 'Small-molecule G-quadruplex Stabilizers Reveal a Novel Pathway of Autophagy Regulation in Neurons'
MATCH (k:KeyWord)
WHERE k.name = 'DNA' OR k.name = 'Autophagy' OR k.name = 'Aging' OR k.name = 'mouse' OR k.name = 'neuronal degeneration'
CREATE (j)-[:ISABOUT]->(k)

MATCH (j:Article)
WHERE j.tittle = 'Small-molecule G-quadruplex Stabilizers Reveal a Novel Pathway of Autophagy Regulation in Neurons'
MATCH (r:Result)
WHERE r.name = 'More stable G4 in old mouse brain'
CREATE (j)-[:SHOWS]->(r)

MATCH (j:Article)
WHERE j.tittle = 'Small-molecule G-quadruplex Stabilizers Reveal a Novel Pathway of Autophagy Regulation in Neurons'
MATCH (c:Comment)
WHERE c.name = 'More stable G4 in old mouse brain' OR c.name = 'CD graph strange'
CREATE (j)-[:TOCOMMENT]->(c)
