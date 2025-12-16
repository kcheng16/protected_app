OPEN SYMMETRIC KEY TFN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

OPEN SYMMETRIC KEY ABN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

OPEN SYMMETRIC KEY DOB_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;
BEGIN TRY
BEGIN TRANSACTION;

DECLARE @ContactIndividualTBL TABLE (ID1 UNIQUEIDENTIFIER); 
DECLARE @StreetAddressTBL TABLE (ID2 UNIQUEIDENTIFIER);
DECLARE @PostalAddressTBL TABLE (ID3 UNIQUEIDENTIFIER);

INSERT INTO dbo.CRM_Contacts_Individual 
  (    
       [Contact_CategoryID]     
      ,[Title] 
      ,[GivenName]
      ,[Surname]
      ,[Email]
      ,[Phone]
      ,[Mobile]
      ,[Fax]

      ,[Is_ForeignEntity]
      ,[Reference]
	  ,[Contact_ID]
	  ,[Is_Active]
  )

OUTPUT INSERTED.ID INTO  @ContactIndividualTBL(ID1)
  
VALUES 
(
'ED187F34-18A0-EF11-95CF-00505688CFF2',
{{ formIndividual.data.ddlAddTitle}},
{{ formIndividual.data.txtAddGivenNames}},
{{ formIndividual.data.txtAddSurname}},
{{ formIndividual.data.txtAddEmail}},
{{ formIndividual.data.txtAddPhone}},
{{ formIndividual.data.txtAddMobile}},
{{ formIndividual.data.txtAddFax}},

{{ formIndividual.data.ddlAddForeignEntity}},
NULL,
'C911C9A3-B5ED-EF11-95D3-00505688CFF2' ,
1
)
  ---Insert DOB and TFN encrypted values
DECLARE @ContactID UNIQUEIDENTIFIER = (SELECT TOP 1 ID1 FROM @ContactIndividualTBL);

UPDATE CRM_Contacts_Individual
SET
TFN =ENCRYPTBYKEY(
        KEY_GUID('TFN_Key'),
        CONVERT(NVARCHAR(250),{{ formIndividual.data.txtAddTFN}}),
        1,
        HASHBYTES('SHA2_256', CONVERT(VARBINARY,@ContactID))),

  DOB =ENCRYPTBYKEY(
        KEY_GUID('DOB_Key'),
        CONVERT(NVARCHAR(250),{{ formIndividual.data.dateAddDOB ? formIndividual.data?.dateAddDOB : null}}),
        1,
        HASHBYTES('SHA2_256', CONVERT(VARBINARY,@ContactID)))

  	WHERE ID=@ContactID;


--Add street address
INSERT INTO [dbo].[CRM_Contacts_Address]
           (
            [Contact_ID]
           ,[Address_Type_ID]
           ,[Address]
           ,[Address1]
           ,[Address2]
           ,[Suburb]
           ,[State]
           ,[Postcode]
           ,[Country]
           ,[Is_Primary_Address]
           ,[Is_Same_As_Street_Address]
           ,[Street_AddressID]
           ,[AddressStreetPlaceID]
           ,[Date_Created]
           ,[Is_Visible])

	OUTPUT INSERTED.ID INTO  @StreetAddressTBL(ID2)  

     VALUES
           (
         (SELECT ID1 FROM @ContactIndividualTBL)
           ,'2C33C047-1AA0-EF11-95CF-00505688CFF2'  --street addresstype
           ,{{  [
               txtAddStreetAddress1.value,
               txtAddStreetAddress2.value,
               txtAddStreetSuburb.value,
               txtAddStreetState.value,
               txtAddStreetPostcode.value,
               txtAddStreetCountry.value
              ].filter(part => part).join(', ') }}
           ,{{ txtAddStreetAddress1.value }}
           ,{{ txtAddStreetAddress2.value }}
           ,{{ txtAddStreetSuburb.value }}
           ,{{ txtAddStreetState.value }}
           ,{{ txtAddStreetPostcode.value }}
           ,{{ txtAddStreetCountry.value }}
           ,1
           ,1
           ,NULL
           ,{{ txtAddStreetPlaceID.value }}
           ,GETDATE()
           ,1
		   )


--Add postal address
INSERT INTO [dbo].[CRM_Contacts_Address]
           (
            [Contact_ID]
           ,[Address_Type_ID]
           ,[Address]
           ,[Address1]
           ,[Address2]
           ,[Suburb]
           ,[State]
           ,[Postcode]
           ,[Country]
           ,[Is_Primary_Address]
           ,[Is_Same_As_Street_Address]
           ,[Street_AddressID]
           ,[AddressStreetPlaceID]
           ,[Date_Created]
           ,[Is_Visible])

		OUTPUT INSERTED.ID INTO   @PostalAddressTBL(ID3)

     VALUES
           (
              (SELECT ID1 FROM @ContactIndividualTBL)
           ,'2D33C047-1AA0-EF11-95CF-00505688CFF2'  --postal addresstype
           ,{{  [
               txtAddPostalAddress1.value,
               txtAddPostalAddress2.value,
               txtAddPostalSuburb.value,
               txtAddPostalState.value,
               txtAddPostalPostcode.value,
               txtAddPostalCountry.value
              ].filter(part => part).join(', ') }}
           ,{{ txtAddPostalAddress1.value }}
           ,{{ txtAddPostalAddress2.value }}
           ,{{ txtAddPostalSuburb.value }}
           ,{{ txtAddPostalState.value }}
           ,{{ txtAddPostalPostcode.value }}
           ,{{ txtAddPostalCountry.value }}
           ,0
           ,{{ checkSameAsStreetAddress.value }}
           ,(SELECT ID2 FROM @StreetAddressTBL)
           ,{{ txtAddPostalPlaceID.value }}
           ,GETDATE()
           ,1
		   )

--update dbo.CRM_Contacts_Individual  with  street and postal address ids
UPDATE dbo.CRM_Contacts_Individual 
SET Address_ID = (SELECT ID2 FROM @StreetAddressTBL),
	 Postal_Address_ID = (SELECT ID3 FROM @PostalAddressTBL)
WHERE ID = (SELECT ID1 FROM @ContactIndividualTBL)


CLOSE SYMMETRIC KEY TFN_Key;
CLOSE SYMMETRIC KEY ABN_Key;

CLOSE SYMMETRIC KEY DOB_Key;

COMMIT TRANSACTION;

SELECT i1.ID1, i2.ID2, i3.ID3
  FROM @ContactIndividualTBL i1 CROSS JOIN @StreetAddressTBL i2 CROSS JOIN @PostalAddressTBL i3;

END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;

DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    RAISERROR (@ErrorMessage, 16, 1); -- Force Retool to treat it

END CATCH
