OPEN SYMMETRIC KEY DOB_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

OPEN SYMMETRIC KEY TFN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

SELECT [ID]
      ,[Contact_ID]
      ,[Address_ID]
      ,[Postal_Address_ID]
      ,[Contact_CategoryID]
      ,[Title]
      ,GivenName + ' ' + Surname AS Name
      ,[GivenName]
      ,[Surname]
      ,[Email]
      ,[Phone]
      ,[Mobile]
      ,[Fax]
      ,CONVERT(NVARCHAR, DECRYPTBYKEY(DOB,1,HASHBYTES('SHA2_256', CONVERT(VARBINARY, ID)))) AS 'DOB'
      ,[Is_VOI_Completed]
      ,[VOI_Completed_Date]
      ,[VOI_Expiry_Date]
      ,[Is_CAF_Completed]
      ,[Is_ForeignEntity]
      ,[Is_Active]
      ,CONVERT(NVARCHAR, DECRYPTBYKEY(TFN,1,HASHBYTES('SHA2_256', CONVERT(VARBINARY, ID)))) AS 'TFN'
      ,[Is_Has_FIRB_Received]
      ,[Date_FIRB_Received]
      ,[Is_Self_Representing]
      ,[Is_Acting_onBehalf_of_Trust]
      ,[TrustName]
      ,[TrustABN]
      ,[TrustTFN]
      ,[Reference]
  FROM [dbo].[CRM_Contacts_Individual]
  where Contact_ID = {{ ListExistingBusinesses.selectedItem?.BusinessID }} AND Is_Active = 1
  
CLOSE SYMMETRIC KEY TFN_Key;
CLOSE SYMMETRIC KEY DOB_Key;
