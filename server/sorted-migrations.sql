-- From sql_1441bfe832ca9c.json
ALTER TABLE "public"."impressions" ADD FOREIGN KEY ("buildingId") REFERENCES "public"."buildings" ("id");

-- From sql_14893079de866e.json
ALTER TABLE "public"."buildings"
ADD COLUMN "neighbourhood" text;

-- From sql_154449c978b067.json
ALTER TABLE "public"."impressions"
ADD COLUMN "moods" text[];

-- From sql_2772790d57bbcd.json
ALTER TABLE "public"."impressions"
ADD COLUMN "hyperlinks" text[];

-- From sql_2ebf4b9df037c7.json
ALTER TABLE "public"."buildings" ALTER COLUMN "xcoordinate" SET DATA TYPE float8;

-- From sql_3393baa2d2418c.json
ALTER TABLE "public"."buildings"
ADD COLUMN "designer" text NOT NULL;

-- From sql_340ad5738d31bc.json
ALTER TABLE "public"."impressions" ALTER COLUMN "id" SET NOT NULL;

-- From sql_39103e841a3a07.json
CREATE TABLE "public"."buildings" ("id" serial, PRIMARY KEY ("id"));

-- From sql_39e8e7264d45fc.json
ALTER TABLE "public"."buildings"
ADD COLUMN "photos" jsonb;

-- From sql_5904dc97d00090.json
ALTER TABLE "public"."buildings"
ADD COLUMN "createdAt" timestamptz NOT NULL DEFAULT NOW();

-- From sql_5c9a2cc816668c.json
ALTER TABLE "public"."buildings"
DROP COLUMN "id";

-- From sql_679f2b95b1a1fb.json
ALTER TABLE "public"."impressions"
ADD COLUMN "createdAt" timestamptz NOT NULL DEFAULT NOW();

-- From sql_7a7e80722d5577.json
ALTER TABLE "public"."buildings"
ADD COLUMN "xcoordinate" int4 NOT NULL;

-- From sql_819538592dca25.json
ALTER TABLE buildings
ADD CONSTRAINT id UNIQUE (id);

-- From sql_876bc421bd1dab.json
ALTER TABLE "public"."buildings"
ADD COLUMN "id" uuid;

-- From sql_99328b5cf38ba3.json
ALTER TABLE "public"."buildings"
ADD COLUMN "era" text;

-- From sql_9e5e0056c4cc34.json
ALTER TABLE "public"."impressions"
ADD COLUMN "content" text;

-- From sql_a5ce9e193ab716.json
ALTER TABLE "public"."impressions"
ADD COLUMN "photos" jsonb;

-- From sql_acabe05e768153.json
ALTER TABLE "public"."impressions"
ADD COLUMN "id" uuid;

-- From sql_acf7589815513b.json
ALTER TABLE "public"."buildings" ALTER COLUMN "id" SET NOT NULL;

-- From sql_b0849eb60e9962.json
CREATE TABLE "public"."impressions" ("id" serial, PRIMARY KEY ("id"));

-- From sql_c08911073151a6.json
ALTER TABLE "public"."buildings"
ADD COLUMN "ycoordinate" int4 NOT NULL;

-- From sql_dc090ecd80fac9.json
ALTER TABLE "public"."buildings" ALTER COLUMN "ycoordinate" SET DATA TYPE float8;

-- From sql_dffa7022672441.json
ALTER TABLE "public"."impressions"
ADD COLUMN "buildingId" uuid NOT NULL;

-- From sql_e07af025fc1856.json
ALTER TABLE "public"."impressions"
DROP COLUMN "id";

-- From sql_e601e7a32b7a60.json
ALTER TABLE "public"."buildings"
ADD COLUMN "year" text;

-- From sql_ebdccb99bd5042.json
ALTER TABLE "public"."buildings"
ADD COLUMN "title" text NOT NULL;

