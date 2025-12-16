OPEN SYMMETRIC KEY TFN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

OPEN SYMMETRIC KEY ABN_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

DECLARE @ContactBusinessTBL TABLE (ID UNIQUEIDENTIFIER);
DECLARE @TRUSTABN NVARCHAR(50);
DECLARE @TRUSTTFN NVARCHAR(50);

SET @TRUSTABN={{  varContactType.value==='Buyer'?(ddlBusinessActingBehalfOfTrust.value===true?(txtBusinessTrustABN.value ? txtBusinessTrustABN.value : null):null):null}};

SET @TRUSTTFN={{  varContactType.value==='Buyer'?(ddlBusinessActingBehalfOfTrust.value===true?(txtBusinessTrustTFN.value ? txtBusinessTrustTFN.value : null):null):null}};
  
INSERT INTO [dbo].[Lot_Matter_Business_Contacts]
           (
           [Lot_ID]
           ,[Contact_Type_ID]
           ,[Contact_Business_ID]
           ,[Contact_Role_ID]
           ,[Reference]
           ,[Is_Has_FIRB_Received]
           ,[Date_FIRB_Received]
           ,[Is_Self_Representing]
           ,[Is_Acting_onBehalf_of_Trust]
           ,[TrustName]
                     ,[Contacts_Street_Address_ID]
           ,[Contacts_Postal_Address_ID]
           ,[Contacts_Business_Individual_ID]
           
           ,[Lot_Sale_ID]
           ,[Date_Created])
    OUTPUT inserted.[ID] into @ContactBusinessTBL
     VALUES
           (
          {{ urlparams.hash.ID }}
           ,{{ varBuyerContactType.value }}
           ,{{ sqlGetSelectedBusinessContacts.data?.Contact_ID[ListBusinessContacts.selectedIndex] }}
           ,{{  varContactType.value==='Other'?select_Role.value:null }}           
,{{  varContactType.value==='Buyer'?null:(textInput_Reference.value ? textInput_Reference.value : null) }}
           ,{{ varContactType.value==='Buyer'?(sqlGetSelectedBusinesses.data?.Is_ForeignEntity[0]=='No'?null: ddlBusinessFIRBReceived.value):null }}
           ,{{ varContactType.value==='Buyer'?(sqlGetSelectedBusinesses.data?.Is_ForeignEntity[0]=='No'?null : (ddlBusinessFIRBReceived.value==false?null: dateBusinessFIRBReceived.value)):null }}  
,{{  varContactType.value==='Buyer'?(ddlBusinessSelfRepresenting.value):null }}
           ,{{  varContactType.value==='Buyer'?(varActingOnBehalfBusiness.value ):null}}
           ,{{ varContactType.value==='Buyer'?(ddlBusinessActingBehalfOfTrust.value===true?(txtBusinessTrustlName.value ? txtBusinessTrustlName.value :null):null):null }}
                    ,{{ selectBusinessStreetAddress.selectedItem?.ID  }}
           ,{{ txtBusinessPostalAddressID.value }}
           ,{{ ListBusinessContacts.selectedItem?.ID }}
                    , {{ addedSaleId.value }}
           ,{{ new Date() }})

DECLARE @ContactID UNIQUEIDENTIFIER = (SELECT TOP 1 ID FROM @ContactBusinessTBL);

UPDATE dbo.Lot_Matter_Business_Contacts
SET
TrustABN=ENCRYPTBYKEY(
        KEY_GUID('ABN_Key'),
        CONVERT(NVARCHAR(250),@TRUSTABN),
        1,
        HASHBYTES('SHA2_256', CONVERT(VARBINARY,@ContactID))),

  
 TrustTFN=ENCRYPTBYKEY(
        KEY_GUID('TFN_Key'),
        CONVERT(NVARCHAR(250),@TRUSTTFN),
        1,
        HASHBYTES('SHA2_256', CONVERT(VARBINARY,@ContactID)))

  	WHERE ID=@ContactID;

CLOSE SYMMETRIC KEY TFN_Key;
CLOSE SYMMETRIC KEY ABN_Key;