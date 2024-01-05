-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "contacts" (
    "contact_id" INTEGER   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL
);

CREATE TABLE "category" (
    "category_id" VARCHAR(50)   NOT NULL,
    "category" VARCHAR(50)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(50)   NOT NULL,
    "subcategory" VARCHAR(50)   NOT NULL
);

CREATE TABLE "campaign" (
    "cf_id" INTEGER   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company_name" VARCHAR(50)   NOT NULL,
    "description" TEXT   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(50)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(50)   NOT NULL,
    "currency" VARCHAR(50)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(50)   NOT NULL,
    "subcategory_id" VARCHAR(50)   NOT NULL
);

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

ALTER TABLE "category" ADD CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

