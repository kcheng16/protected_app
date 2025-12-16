OPEN SYMMETRIC KEY TFN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

OPEN SYMMETRIC KEY DOB_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

SELECT
	CI.ID AS IndividualID,
  CI.GivenName,
  CI.Surname,
	CI.GivenName + ' ' + CI.Surname AS Name,
	CI.Phone,
	CI.Mobile,
	CI.Email,
	
     CONVERT(NVARCHAR, DECRYPTBYKEY(CI.DOB, 1, HASHBYTES('SHA2_256', CONVERT(VARBINARY, CI.ID)))) AS 'DOB',
    CI.Fax,
	CI.VOI_Completed_Date,
	CI.Is_VOI_Completed,
	CI.VOI_Expiry_Date,
	CI.Is_ForeignEntity,
    CI.Is_CAF_Completed,
    CONVERT(NVARCHAR, DECRYPTBYKEY(CI.TFN, 1, HASHBYTES('SHA2_256', CONVERT(VARBINARY, CI.ID)))) AS 'TFN',

	CI.Is_Active
   
  FROM [dbo].[CRM_Contacts_Individual] CI
where Contact_ID = {{ ListExistingBusinesses.value}}
  
CLOSE SYMMETRIC KEY TFN_Key;
CLOSE SYMMETRIC KEY DOB_Key