DECLARE @ContactID UNIQUEIDENTIFIER;
SET @ContactID = {{ ListBusinessContacts.selectedItem?.ID }};

OPEN SYMMETRIC KEY DOB_Key
    DECRYPTION BY CERTIFICATE Cert_Protect_Keys;

UPDATE [dbo].[CRM_Contacts_Individual]
SET
  [DOB] = ENCRYPTBYKEY(
    KEY_GUID('DOB_Key'),
    CONVERT(NVARCHAR(250), {{ dateContactDOB.value }}),
    1, HASHBYTES('SHA2_256', CONVERT(VARBINARY,ID)))
WHERE ID= @ContactID

CLOSE SYMMETRIC KEY DOB_Key