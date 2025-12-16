INSERT INTO dbo.Lot_Sale 
  (    
       LOT_ID 
      ,Lot_SalesStatus_ID
      ,Created_By
      ,Date_Created
      ,SerialNumber
      ,Is_Self_Representing
  )
OUTPUT inserted.[ID]
VALUES 
  (
  {{ Lot_ID.value }},
  {{ Lot_Salestatus_ID.value }},
  {{ current_user.fullName }},
  {{ new Date() }},
  {{ SN.value }},
  {{ SelfRepresentedOrNot.value}}
  )