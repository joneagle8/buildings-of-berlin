-- Commands for the "impressions" table
-- Create the "impressions" table first
CREATE TABLE impressions ("id" serial, PRIMARY KEY ("id"));

-- Add columns to the "impressions" table
ALTER TABLE impressions
ADD COLUMN "buildingId" uuid NOT NULL;

-- From sql_9e5e0056c4cc34.json
ALTER TABLE impressions
ADD COLUMN "content" text;

-- From sql_a5ce9e193ab716.json
ALTER TABLE impressions
ADD COLUMN "photos" jsonb;

-- From sql_154449c978b067.json
ALTER TABLE impressions
ADD COLUMN "moods" text[];

-- From sql_2772790d57bbcd.json
ALTER TABLE impressions
ADD COLUMN "hyperlinks" text[];

-- From sql_679f2b95b1a1fb.json
ALTER TABLE impressions
ADD COLUMN "createdAt" timestamptz NOT NULL DEFAULT NOW();

-- Modify columns in the "impressions" table
-- From sql_340ad5738d31bc.json
ALTER TABLE impressions ALTER COLUMN "id" SET NOT NULL;

-- Drop columns if necessary
-- From sql_e07af025fc1856.json
ALTER TABLE impressions
DROP COLUMN "id";

ALTER TABLE impressions
ADD COLUMN "id" uuid;



-- Commands for the "buildings" table
-- Create the "buildings" table first
CREATE TABLE "public"."buildings" ("id" serial, PRIMARY KEY ("id"));


ALTER TABLE "public"."buildings"
ADD COLUMN "neighbourhood" text;

ALTER TABLE "public"."buildings"
ADD COLUMN "era" text;

ALTER TABLE "public"."buildings"
ADD COLUMN "designer" text NOT NULL;

ALTER TABLE "public"."buildings"
ADD COLUMN "photos" jsonb;

ALTER TABLE "public"."buildings"
ADD COLUMN "createdAt" timestamptz NOT NULL DEFAULT NOW();

ALTER TABLE "public"."buildings"
ADD COLUMN "year" text;

ALTER TABLE "public"."buildings"
ADD COLUMN "title" text NOT NULL;

ALTER TABLE "public"."buildings"
ADD COLUMN "xcoordinate" int4 NOT NULL;

ALTER TABLE "public"."buildings"
ADD COLUMN "ycoordinate" int4 NOT NULL;

-- Modify columns in the "buildings" table
ALTER TABLE "public"."buildings" ALTER COLUMN "xcoordinate" SET DATA TYPE float8;

ALTER TABLE "public"."buildings" ALTER COLUMN "ycoordinate" SET DATA TYPE float8;

ALTER TABLE "public"."buildings" ALTER COLUMN "id" SET NOT NULL;

-- Drop columns if necessary
ALTER TABLE "public"."buildings"
DROP COLUMN "id";

ALTER TABLE "public"."buildings"
ADD COLUMN "id" uuid;

-- Add constraints to the "buildings" table
-- From sql_819538592dca25.json
ALTER TABLE buildings
ADD CONSTRAINT id UNIQUE (id);

-- Add foreign key constraints
--- depends on the buildings table being updated
ALTER TABLE impressions ADD FOREIGN KEY ("buildingId") REFERENCES "public"."buildings" ("id");