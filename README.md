# miniature-guacamole
(Repository name proposed by github itself haha :)
This project aims to create a data base about my litterature using neo4j. The idea is to create a simple DB to get important information about articles. (for the moment) There would be 4 types of nodes : Article, Author, KeyWord and Result. Those node could be all linked together like :
*Article-[WRITTEDBY]->Author
*Article-[ISABOUT]->KeyWord
*Article-[SHOWS]->Result
*Author-[WORKSON]->KeyWord
*KeyWord<-[IMPACTS]-Result
And maybe more if need !

This project is a test, I'm working on it on my free time so I hope to have to time to finish it !
