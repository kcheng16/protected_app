Select distinct CI.GivenName + ' ' + CI.Surname AS Name
FROM [dbo].[Lot_Matter_Individual_Contacts] LI
INNER JOIN [dbo].[CRM_Contacts_Individual] CI ON LI.Contact_Individual_ID = CI.ID
WHERE LI.Contact_Type_ID = '789655CA-1DA0-EF11-95CF-00505688CFF2'
AND CI.Is_Active = 1 
AND LI.Lot_ID <> {{ urlparams.hash.ID }}