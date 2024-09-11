*************** Pricebook***************************
select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode from PricebookEntry where Pricebook2.Name = 'Standard Price Book'

 select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode from PricebookEntry where Pricebook2.Name = 'Standard Price Book' and ProductCode in ('SPC-R01', 'SPG-01', 'SPG-02')
Panels	
select Id, Name, Description, Family, ProductCode, CurrencyIsoCode from Product2 where Family = 'Panels'
select Id, Name, Description, Family, ProductCode, CurrencyIsoCode from Product2 where Family = 'Service Packages'

select Id, Name, Description, Family, ProductCode, CurrencyIsoCode from Product2 where Id in ('01tbm000002DBHRAA4', '01tbm000002DB9NAAW', '01tbm000002DBFpAAO')

select Id, Name, Description, Family, ProductCode, CurrencyIsoCode from Product2 where ProductCode in ('SPC-R01', 'SPG-01', 'SPG-02')


select Id, Name from Pricebook2 where Name = 'Standard Price Book'
select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode from PricebookEntry where Product2Id = '01tbm000002DBHRAA4' and Pricebook2Id = '01sbm000001n0uMAAQ'

select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode from PricebookEntry where Product2Id = '01tbm000002DBHRAA4' and Pricebook2Id = '01sbm000001n0uMAAQ'

select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode from PricebookEntry where ProductCode = 'SPC-  R01' and Pricebook2Id = '01sbm000001n0uMAAQ'

select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode from PricebookEntry where ProductCode = 'SPC-R01' and Pricebook2Id = '01sbm000001n0uMAAQ' AND 	CurrencyIsoCode = 'EUR'

select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode from PricebookEntry where ProductCode = 'SPC-R01' and Pricebook2Id.name = 'Standard Price Book' AND CurrencyIsoCode = 'EUR'

select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode, Pricebook2Id from PricebookEntry where ProductCode = 'SPC-R01' and Pricebook2Id = '01sbm000001n0uMAAQ' AND CurrencyIsoCode = 'EUR'

select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode, Pricebook2Id__r.Name from PricebookEntry where ProductCode = 'SPC-R01' and Pricebook2Id = '01sbm000001n0uMAAQ' AND CurrencyIsoCode = 'EUR'

Enable Logger for Salesforce Connector
<AsyncLogger name="org.mule.extension.salesforce" level="DEBUG"/>

SELECT ID, Name, Amount, CurrencyIsoCode, Pricebook2Id, TotalOpportunityQuantity from Opportunity where name = 'BSofSW - Ground-mounted Panels'

SELECT ID, Name, Product2Id, ProductCode, Quantity, UnitPrice, TotalPrice from OpportunityLineItem where OpportunityId = '006bm000001kFxxAAE'


SELECT ID, Name, Amount, CurrencyIsoCode, Pricebook2Id, TotalOpportunityQuantity, ExpectedRevenue from Opportunity where name = 'Saito - Ground-mounted Panels'

SELECT ID, Name, Product2Id, ProductCode, Quantity, UnitPrice, TotalPrice from OpportunityLineItem where OpportunityId = '006bm000001kIivAAE'

*******************************************************************************************************
e2e queries
select Id, Name from Pricebook2

select Id, Name, Company from Lead where Name in ('John Doe', 'Jane Doe')

select Id, Name, Description, Family, ProductCode, CurrencyIsoCode from Product2 where Family = 'Panels'

select Id, Name, Description, Family, ProductCode, CurrencyIsoCode from Product2 where Family = 'Service Packages'

select Id, Name, Description, Family, ProductCode, CurrencyIsoCode from Product2 where ProductCode in ('SPC-R01', 'SPG-01', 'SPG-02')

select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode from PricebookEntry where ProductCode in ('SPC-R01', 'SPG-01', 'SPG-02') and Pricebook2.name = 'Standard Price Book' AND CurrencyIsoCode in ('USD','EUR','JPY','SGD','GBP')

select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode from PricebookEntry where ProductCode in ('SPC-R01', 'SPG-01', 'SPG-02') and Pricebook2.name = 'Enterprise' AND CurrencyIsoCode in ('USD','EUR','JPY','SGD','GBP')

select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode from PricebookEntry where ProductCode in ('SPC-R01', 'SPG-01', 'SPG-02') and Pricebook2.name = 'Nonprofit' AND CurrencyIsoCode in ('USD','EUR','JPY','SGD','GBP')

SELECT ID, Name, CurrencyIsoCode FROM account where name in ('Boy Scouts of the Southwest', 'Saito Family Laundromats')

SELECT ID, Name, Amount, CurrencyIsoCode, Pricebook2Id, TotalOpportunityQuantity, ExpectedRevenue from Opportunity where name in ('BSofSW - Ground-mounted Panels', 'Saito - Ground-mounted Panels')

