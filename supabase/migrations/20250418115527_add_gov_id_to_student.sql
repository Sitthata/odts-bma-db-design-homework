alter table "public"."student"
add column "gov_id" varchar(11) not null,
add CONSTRAINT "uq_student_gov_id" UNIQUE ("gov_id");