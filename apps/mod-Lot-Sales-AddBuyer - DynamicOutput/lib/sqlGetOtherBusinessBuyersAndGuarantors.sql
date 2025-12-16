SELECT DISTINCT CB.CompanyName,
  CB.ID as BusinessID,
  CB.ABN
  FROM [dbo].[CRM_Contacts_Business] CB
  LEFT JOIN [dbo].[CRM_Contacts_Address] CA ON CA.Contact_ID = CB.ID AND CA.Is_Primary_Address = 1 AND CA.Address_Type_ID = '2C33C047-1AA0-EF11-95CF-00505688CFF2'
  WHERE CB.ID!='C911C9A3-B5ED-EF11-95D3-00505688CFF2'
order by CB.CompanyName