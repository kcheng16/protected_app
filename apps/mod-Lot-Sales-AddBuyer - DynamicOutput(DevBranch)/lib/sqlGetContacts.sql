/*This query is not used anywhere. hence made it manual. It is not trigerreed anywhere. Just kept it for future references)*/
SELECT IC.[ID]
      ,IC.[Lot_ID]
      ,IC.[Contact_Type_ID]
	  ,CT.Contact_Type
      ,IC.[Contact_Individual_ID]
      ,IC.[Is_Has_FIRB_Received]
      ,IC.[Date_FIRB_Received]
      ,IC.[Is_Self_Representing]
      ,IC.[Is_Acting_onBehalf_of_Trust]
      ,IC.[TrustName]
      ,IC.[TrustABN]
      ,IC.[TrustTFN]
      ,IC.[Reference]
  FROM [dbo].[Lot_Matter_Individual_Contacts] IC
  LEFT JOIN [dbo].[MD_Config_ContactType] CT ON IC.Contact_Type_ID = CT.ID
