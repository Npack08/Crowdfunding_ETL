CREATE TABLE "Category" (
    "category_id" Varchar(20)   NOT NULL,
    "category" Varchar(20)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" Varchar(20)   NOT NULL,
    "subcategory" Varchar(20)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contact" (
    "contact_id" INT   NOT NULL,
    "first_name" Varchar(20)   NOT NULL,
    "last_name" Varchar(20)   NOT NULL,
    "email" Varchar(250)   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
	"company_name" Varchar(250) Not Null,
    "description" Varchar(250)   NOT NULL,
    "goal" Float  NOT NULL,
    "pledged" FLoat NOT NULL,
    "outcome" Varchar(250)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" Varchar(250)   NOT NULL,
    "currency" Varchar(250)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" Varchar(250)   NOT NULL,
    "subcategory_id" Varchar(250)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contact" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

Select * From "Subcategory";

Select * From "Category";

Select * From "Contact";

Select * From "Campaign";

