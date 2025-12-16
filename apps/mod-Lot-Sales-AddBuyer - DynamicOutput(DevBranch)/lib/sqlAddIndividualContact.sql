OPEN SYMMETRIC KEY TFN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

OPEN SYMMETRIC KEY ABN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

DECLARE @ContactIndividualLotTBL TABLE (ID UNIQUEIDENTIFIER);

  --Add record into [dbo].[Lot_Matter_Individual_Contacts]
		   INSERT INTO [dbo].[Lot_Matter_Individual_Contacts]
           (
           [Lot_ID]
           ,[Lot_Sale_ID]  
           ,[Contact_Type_ID]
           ,[Contact_Individual_ID]
           ,[Is_Has_FIRB_Received]
           ,[Date_FIRB_Received]
           ,[Is_Self_Representing]
           ,[Is_Acting_onBehalf_of_Trust]
           ,[TrustName]
      
           ,[Street_Address_ID]
           ,[Postal_Address_ID]
           ,[ContactType_Role_ID]
           ,[Is_Same_As_Street_Address]
           ,[Date_Created]
		   )
             OUTPUT inserted.[ID] into @ContactIndividualLotTBL
     VALUES
           (
              {{ urlparams.hash.ID }},
           
            {{ addedSaleId.value }},
          {{ varBuyerContactType.value }}
           ,{{ addedIndividualID.value }}
           ,{{ ddlAddForeignEntity.selectedItem?.value==false?null:( ddlAddIndividualFIRBReceived.value) }}
           ,{{ddlAddForeignEntity.selectedItem?.value==false?null:(ddlAddIndividualFIRBReceived.value==false?null:dateAddIndividualFIRBReceived.value ) }}
           ,{{ ddlAddIndividualSelfRepresenting.value }}
           ,{{ varActingOnBehalfIndividual.value }}
           ,{{ ddlAddIndividualActingBehalfOfTrust.selectedItem?.value===true? (txtAddIndividualTrustName.value ? txtAddIndividualTrustName.value : null):null }}
    
           
           ,{{ addedStreetAddressID.value }}
           ,{{ addedPostalAddressID.value }}
           ,NULL
           ,{{ checkSameAsStreetAddress.value }}
           ,{{ new Date() }}
		   )
             
---Insert encrypted Trust details
DECLARE @ContactLotID UNIQUEIDENTIFIER = (SELECT TOP 1 ID FROM @ContactIndividualLotTBL);

UPDATE dbo.Lot_Matter_Individual_Contacts
SET
TrustABN=ENCRYPTBYKEY(
        KEY_GUID('ABN_Key'),
        CONVERT(NVARCHAR(250),{{ ddlAddIndividualActingBehalfOfTrust.selectedItem?.value===true? (txtAddIndividualTrustABN.value  ? txtAddIndividualTrustABN.value : null):null}}),
        1,
        HASHBYTES('SHA2_256', CONVERT(VARBINARY,@ContactLotID))),

  
 TrustTFN=ENCRYPTBYKEY(
        KEY_GUID('TFN_Key'),
        CONVERT(NVARCHAR(250),{{ ddlAddIndividualActingBehalfOfTrust.selectedItem?.value===true? (txtAddIndividualTrustTFN.value  ? txtAddIndividualTrustTFN.value : null):null}}),
        1,
        HASHBYTES('SHA2_256', CONVERT(VARBINARY,@ContactLotID)))

  	WHERE ID=@ContactLotID;

CLOSE SYMMETRIC KEY TFN_Key;
CLOSE SYMMETRIC KEY ABN_Key;