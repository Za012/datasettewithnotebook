DROP TABLE IF EXISTS "SASB_fts";
DROP TABLE IF EXISTS "SASB_fts_docsize";
DROP TABLE IF EXISTS "SASB_fts_segdir";
DROP TABLE IF EXISTS "SASB_fts_segments";
DROP TABLE IF EXISTS "SASB_fts_stat";
CREATE VIRTUAL TABLE "SASB_fts" USING FTS4 (
       CompanyID,
       DisclosureTopic,
       Sector,
       content="SASB dummy"
);
INSERT INTO "SASB_fts" (rowid, CompanyID, DisclosureTopic, Sector)
SELECT [SASB dummy].rowid,
       [SASB dummy].CompanyID,
       [SASB-disclosure-topic].DisclosureTopic,
       [SASB-sector].Sector
       FROM [SASB dummy]
           JOIN [SASB-disclosure-topic] ON [SASB dummy].DisclosureTopicCode=[SASB-disclosure-topic].DisclosureTopicCode
           JOIN [SASB-sector] ON [SASB dummy].SectorCode=[SASB-sector].SectorCode;
