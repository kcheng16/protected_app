SELECT *
FROM [dbo].[CRM_Contacts_Address]
WHERE Contact_ID = {{ ListExistingBusinesses.value }} 
AND Address_Type_ID='2D33C047-1AA0-EF11-95CF-00505688CFF2'
AND (Address <> '' Or Address <> null)
AND Street_AddressID= {{ selectBusinessStreetAddress.selectedItem?.ID }}