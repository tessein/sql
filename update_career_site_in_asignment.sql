#####################################################################################################
/* Convert all XXXXXXXX (Client id --xxxxxxxx) careerSite assignments to forwarded career site */
UPDATE Assignment

INNER JOIN Client     ON Assignment.clientID     = Client.id     AND Client.id = '999999999' AND Client.isMerged = 'true'
INNER JOIN CareerSite ON Assignment.careerSiteID = CareerSite.id AND CareerSite.forwardCareerSiteID != '0'

SET Assignment.careerSiteID = CareerSite.forwardCareerSiteID;

#####################################################################################################
