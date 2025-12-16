OPEN SYMMETRIC KEY TFN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

OPEN SYMMETRIC KEY ABN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

OPEN SYMMETRIC KEY DOB_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

SELECT TOP(1) LI.ID AS ID
      ,LI.Lot_ID
	  ,L.GF_ID
      ,CI.GivenName + ' ' + CI.Surname AS Name
      ,CI.GivenName AS GivenName
      ,CI.Surname AS Surname
      ,CAS.Address
      ,CI.Email
      ,CI.Phone
      ,CI.Mobile
      ,CI.Fax
	  ,CONVERT(NVARCHAR, DECRYPTBYKEY(CI.DOB,1,HASHBYTES('SHA2_256', CONVERT(VARBINARY, CI.ID)))) AS 'DOB'
	  ,CONVERT(NVARCHAR, DECRYPTBYKEY(CI.TFN,1,HASHBYTES('SHA2_256', CONVERT(VARBINARY, CI.ID)))) AS 'TFN'
  	  ,CASE WHEN CI.Is_ForeignEntity = 'true' then 'Yes'
       ELSE 'No'
       END AS Is_ForeignEntity
  ,LI.Is_Has_FIRB_Received
	  ,COALESCE(LI.Date_FIRB_Received,CD.Date_Blanket_FIRB) AS Date_FIRB_Received
	  ,LI.Is_Self_Representing
	  ,LI.Is_Acting_onBehalf_of_Trust
	  ,LI.TrustName
	  , CONVERT(NVARCHAR, DECRYPTBYKEY(LI.TrustABN, 1, HASHBYTES('SHA2_256', CONVERT(VARBINARY, LI.ID)))) AS 'TrustABN',
     CONVERT(NVARCHAR, DECRYPTBYKEY(LI.TrustTFN, 1, HASHBYTES('SHA2_256', CONVERT(VARBINARY, LI.ID)))) AS 'TrustTFN'
      ,LI.Contact_Type_ID
      ,CAS.ID as StreetAddressID
	  ,CAS.Address AS StreetAddress
      ,CAP.ID as PostalAddressID
	  ,CAP.Address AS PostalAddress
  ,CAP.Is_Same_As_Street_Address
      ,CI.ID AS ContactID
	  ,'I' AS Type
FROM [dbo].[Lot_Matter_Individual_Contacts] LI
INNER JOIN [dbo].[CRM_Contacts_Individual] CI ON LI.Contact_Individual_ID = CI.ID
LEFT JOIN [dbo].[CRM_Contacts_Address] CAS
           ON CI.Address_ID = CAS.ID
		     and CAS.Contact_ID = CI.ID
           AND CAS.Is_Primary_Address = 1
           AND CAS.Address_Type_ID = '2C33C047-1AA0-EF11-95CF-00505688CFF2'
LEFT JOIN [dbo].[CRM_Contacts_Address] CAP
           ON CI.Postal_Address_ID = CAP.ID
		     and CAP.Contact_ID = CI.ID
           AND CAP.Is_Primary_Address <> 1
           AND CAP.Address_Type_ID = '2D33C047-1AA0-EF11-95CF-00505688CFF2'
INNER JOIN [dbo].[GF_Lots] L ON LI.Lot_ID = L.ID
LEFT JOIN [dbo].[GF_Chklist_DEV] CD ON L.GF_ID = CD.GF_ID
WHERE CI.GivenName + ' ' + CI.Surname = {{ ListExistingIndividuals.value }}
--ORDER BY NAME

CLOSE SYMMETRIC KEY TFN_Key;
CLOSE SYMMETRIC KEY ABN_Key;
CLOSE SYMMETRIC KEY DOB_Key;