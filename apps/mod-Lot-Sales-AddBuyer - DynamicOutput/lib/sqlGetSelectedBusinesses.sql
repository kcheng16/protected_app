OPEN SYMMETRIC KEY TFN_Key  
   DECRYPTION BY CERTIFICATE Cert_Protect_Keys;  
SELECT 
       CB.ID AS ContactID
      ,CB.CompanyName AS CompanyName
	  ,CB.TradingName AS TradingName
      ,CB.Email
      ,CB.Phone
      ,CB.Mobile
	  ,CB.Fax
	  ,CB.ACN
	  ,CB.ABN
	     ,CONVERT(NVARCHAR, DECRYPTBYKEY(CB.TFN, 1, HASHBYTES('SHA2_256', CONVERT(VARBINARY, CB.ID)))) AS 'TFN'
	  ,CB.Website
      ,CASE WHEN CB.Is_ForeignEntity = 'true' then 'Yes'
       ELSE 'No'
       END AS Is_ForeignEntity
      ,'B' AS Type
FROM [dbo].[CRM_Contacts_Business] CB
WHERE CB.ID = {{ ListExistingBusinesses.value }}

CLOSE SYMMETRIC KEY TFN_Key;

/*The previous query fetched the contacts from Lot-matter_Business_Contacts. But if we add a new business then it won't show up.

So, the following query is modified to check if contact exists on lot level, fetch data from there else fetch data from CRM.

But again, there is no need for this as the FIRB and Trust fields will be different for every buyer every sale.
So, we only fetch data from CRM for the contacts now.


IF EXISTS
  (
  SELECT LB.ID FROM [dbo].[Lot_Matter_Business_Contacts] LB
  WHERE LB.Contact_Business_ID={ ListExistingBusinesses.value }} 
and LB.Lot_ID={urlparams.hash.ID}}
)
BEGIN 
SELECT LB.ID AS ID
      ,LB.Lot_ID
      ,CB.ID AS ContactID
      ,CB.CompanyName AS CompanyName
	  ,CB.TradingName AS TradingName
      ,CAS.Address
      ,CB.Email
      ,CB.Phone
      ,CB.Mobile
	  ,CB.Fax
	  ,CB.ACN
	  ,CB.ABN
	  ,CB.TFN
	  ,CB.Website
	  ,CASE WHEN CB.Is_ForeignEntity = 'true' then 'Yes'
       ELSE 'No'
       END AS Is_ForeignEntity
	  ,CASE WHEN COALESCE(LB.Date_FIRB_Received,CD.Date_Blanket_FIRB) IS NULL then 'false'
       ELSE 'true'
       END AS Is_Has_FIRB_Received
	  ,COALESCE(LB.Date_FIRB_Received,CD.Date_Blanket_FIRB) AS Date_FIRB_Received
	  ,LB.Is_Self_Representing
	  ,LB.Is_Acting_onBehalf_of_Trust
	  ,LB.TrustName
	  ,LB.TrustABN
	  ,LB.TrustTFN
      ,LB.Contact_Type_ID
	  ,CAS.Address AS StreetAddress
	  ,CAP.Address AS PostalAddress
      ,CAS.ID AS StreetAddressID
      ,CAP.ID AS PostalAddressID
	  ,'B' AS Type
	  ,CAP.Is_Same_As_Street_Address
FROM [dbo].[Lot_Matter_Business_Contacts] LB
INNER JOIN [dbo].[CRM_Contacts_Business] CB ON LB.Contact_Business_ID = CB.ID
LEFT JOIN [dbo].[CRM_Contacts_Address] CAS ON CB.ID = CAS.Contact_ID
           AND CAS.Is_Primary_Address = 1
           AND CAS.Address_Type_ID = '2C33C047-1AA0-EF11-95CF-00505688CFF2'
LEFT JOIN [dbo].[CRM_Contacts_Address] CAP ON CB.ID = CAP.Contact_ID
          AND CAP.Is_Primary_Address <> 1
           AND CAP.Address_Type_ID = '2D33C047-1AA0-EF11-95CF-00505688CFF2'
INNER JOIN [dbo].[GF_Lots] L ON LB.Lot_ID = L.ID
LEFT JOIN [dbo].[GF_Chklist_DEV] CD ON L.GF_ID = CD.GF_ID
WHERE CB.ID = { ListExistingBusinesses.value }}
AND LB.Lot_ID={urlparams.hash.ID}}
END

ELSE
BEGIN
SELECT CB.ID AS ContactID
      ,CB.CompanyName AS CompanyName
	  ,CB.TradingName AS TradingName
      ,CAS.Address
      ,CB.Email
      ,CB.Phone
      ,CB.Mobile
	  ,CB.Fax
	  ,CB.ACN
	  ,CB.ABN
	  ,CB.TFN
	  ,CB.Website
	  ,CASE WHEN CB.Is_ForeignEntity = 'true' then 'Yes'
       ELSE 'No'
       END AS Is_ForeignEntity
	  ,CASE WHEN [dbo].[GF_Chklist_DEV].Date_Blanket_FIRB IS NULL then 'false'
       ELSE 'true'
       END AS Is_Has_FIRB_Received
	  ,[dbo].[GF_Chklist_DEV].Date_Blanket_FIRB AS Date_FIRB_Received
	   ,NULL AS Is_Self_Representing
	  ,NULL AS Is_Acting_onBehalf_of_Trust
	  ,NULL AS TrustName
	  ,NULL AS TrustABN
	  ,NULL AS TrustTFN
      ,'789655CA-1DA0-EF11-95CF-00505688CFF2' AS Contact_Type_ID
	  ,CAS.Address AS StreetAddress
	  ,CAP.Address AS PostalAddress
      ,CAS.ID AS StreetAddressID
      ,CAP.ID AS PostalAddressID
	  ,'B' AS Type
	  ,CAP.Is_Same_As_Street_Address
FROM [dbo].CRM_Contacts_Business CB

LEFT JOIN [dbo].[CRM_Contacts_Address] CAS ON CB.ID = CAS.Contact_ID
           AND CAS.Is_Primary_Address = 1
           AND CAS.Address_Type_ID = '2C33C047-1AA0-EF11-95CF-00505688CFF2'
LEFT JOIN [dbo].[CRM_Contacts_Address] CAP ON CB.ID = CAP.Contact_ID
          AND CAP.Is_Primary_Address <> 1
           AND CAP.Address_Type_ID = '2D33C047-1AA0-EF11-95CF-00505688CFF2'
CROSS JOIN [dbo].[GF_Chklist_DEV]
WHERE CB.ID = {ListExistingBusinesses.value}}
AND [dbo].[GF_Chklist_DEV].GF_ID=(SELECT GF_ID FROM dbo.GF_Lots WHERE ID={urlparams.hash.ID}})
END

*/
