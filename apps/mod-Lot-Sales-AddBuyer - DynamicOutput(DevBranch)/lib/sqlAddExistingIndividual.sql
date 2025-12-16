OPEN SYMMETRIC KEY TFN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

OPEN SYMMETRIC KEY ABN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

DECLARE @ContactIndividualLotTBL TABLE (ID UNIQUEIDENTIFIER);
INSERT INTO [dbo].Lot_Matter_Individual_Contacts
(
    
    Lot_ID,
    Contact_Type_ID,
    Contact_Individual_ID,
    Is_Has_FIRB_Received,
    Date_FIRB_Received,
    Is_Self_Representing,
    Is_Acting_onBehalf_of_Trust,
    TrustName,


    Street_Address_ID,
    Postal_Address_ID,
    
    Lot_Sale_ID,
    Date_Created
)
  OUTPUT inserted.[ID] into @ContactIndividualLotTBL
VALUES
(   
    {{ urlparams.hash.ID }}
    ,{{ varBuyerContactType.value }}
   ,{{ sqlGetSelectedIndividual.data?.ContactID[0] }}
    ,{{ sqlGetSelectedIndividual.data?.Is_ForeignEntity[0]=='No'?null:ddlAddIndividualFIRBReceived.value }}
,{{ sqlGetSelectedIndividual.data?.Is_ForeignEntity[0]=='No'? null :(ddlAddIndividualFIRBReceived.value==false?null: dateAddIndividualFIRBReceived.value) }}
    ,{{ ddlAddIndividualSelfRepresenting.value }}
   ,{{ ddlAddIndividualActingBehalfOfTrust.value }}
   ,{{ddlAddIndividualActingBehalfOfTrust.selectedItem?.value===true? txtAddIndividualTrustName.value:null }}

 
    ,{{  sqlGetSelectedIndividual.data?.StreetAddressID[0]}}
   , {{ sqlGetSelectedIndividual.data?.PostalAddressID[0] }}
    
      ,{{ addedSaleId.value }}
    ,{{ new Date() }}
    )
DECLARE @ContactID UNIQUEIDENTIFIER = (SELECT TOP 1 ID FROM @ContactIndividualLotTBL);

UPDATE dbo.Lot_Matter_Individual_Contacts
SET
TrustABN=ENCRYPTBYKEY(
        KEY_GUID('ABN_Key'),
        CONVERT(NVARCHAR(250),{{ddlAddIndividualActingBehalfOfTrust.selectedItem?.value===true? txtAddIndividualTrustABN.value:null}}),
        1,
        HASHBYTES('SHA2_256', CONVERT(VARBINARY,@ContactID))),

  
 TrustTFN=ENCRYPTBYKEY(
        KEY_GUID('TFN_Key'),
        CONVERT(NVARCHAR(250),{{ ddlAddIndividualActingBehalfOfTrust.selectedItem?.value===true?txtAddIndividualTrustTFN.value:null }}),
        1,
        HASHBYTES('SHA2_256', CONVERT(VARBINARY,@ContactID)))

  	WHERE ID=@ContactID;

CLOSE SYMMETRIC KEY TFN_Key;
CLOSE SYMMETRIC KEY ABN_Key;