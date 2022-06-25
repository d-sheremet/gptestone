BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'Account 02','');
INSERT INTO "Account" VALUES(3,'Account 01','');
CREATE TABLE "DeliveryItem__c" (
	id INTEGER NOT NULL, 
	"FoodStorage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "DeliveryItem__c" VALUES(1,'Non-refrigerated','Position 2','1');
INSERT INTO "DeliveryItem__c" VALUES(2,'Frozen','Position 1','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"ScheduledDate__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2022-06-15T19:00:00.000+0000','Scheduled','3');
INSERT INTO "Delivery__c" VALUES(2,'2022-06-01T19:00:00.000+0000','Canceled','3');
COMMIT;
