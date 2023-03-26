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

CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "description" Varchar(250)   NOT NULL,
    "goal" INT   NOT NULL,
    "pleadged" INT   NOT NULL,
    "outcome" Varchar(20)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" Varchar(20)   NOT NULL,
    "currency" Varchar(20)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" Varchar(20)   NOT NULL,
    "subcategory_id" Varchar(20)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Contact" (
    "contact_id" INT   NOT NULL,
    "first_name" Varchar(20)   NOT NULL,
    "last_name" Varchar(20)   NOT NULL,
    "email" Varchar(40)   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id"
     )
);



