-- View: migration.status

-- DROP VIEW migration.status;

CREATE OR REPLACE VIEW migration.status AS
 SELECT x.name,
    x.score,
    x.report
   FROM ( SELECT 'Establishment'::text AS name,
            count(*) AS score,
            'of 20,283'::text AS report
           FROM cqc."Establishment"
        UNION
         SELECT 'Estabs(child)'::text AS name,
            count(*) AS score,
            'of 11,492'::text
           FROM cqc."Establishment" report
          WHERE report."ParentID" IS NOT NULL
        UNION
         SELECT 'User'::text AS name,
            count(*) AS score,
            'of 19,668'::text AS report
           FROM cqc."User"
        UNION
         SELECT 'Login'::text AS name,
            count(*) AS score,
            'of 19,668'::text AS report
           FROM cqc."Login"
        UNION
         SELECT 'Worker'::text AS name,
            count(*) AS score,
            'of 697,467'::text AS report
           FROM cqc."Worker"
        UNION
         SELECT 'Training'::text AS name,
            count(*) AS score,
            'of 3,512,440'::text AS report
           FROM cqc."WorkerTraining"
        UNION
         SELECT 'Qualifications'::text AS name,
            count(*) AS score,
            'of 373,736'::text AS report
           FROM cqc."WorkerQualifications"
        UNION
         SELECT 'ErrorLog'::text AS name,
            count(*) AS score,
            'of 7'::text AS report
           FROM migration.errorlog) x
  ORDER BY x.name;

ALTER TABLE migration.status
    OWNER TO postgres;

