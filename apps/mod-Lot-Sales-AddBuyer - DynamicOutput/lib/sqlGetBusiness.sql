/*This query is not used anywhere. Making it manual and not trigerring it anywhere
Places where it was referenced:
sqlGetOtherBusinessBuyersAndGuarantors.events, ListExistingBusinesses.events
*/
SELECT DISTINCT
	CB.ID AS BusinessID,
	CB.CompanyName,
	CB.ACN,
    CB.ABN,
	CB.Phone,
	CB.Email,
    CB.TFN,
    CB.Website,
    CB.Fax,
	CA.Address,
	CA.ID AS AddressID
  FROM [dbo].[CRM_Contacts_Business] CB
  LEFT JOIN [dbo].[CRM_Contacts_Address] CA ON CA.Contact_ID = CB.ID AND CA.Is_Primary_Address = 1
WHERE CB.ID = {{ ListExistingBusinesses.value }}