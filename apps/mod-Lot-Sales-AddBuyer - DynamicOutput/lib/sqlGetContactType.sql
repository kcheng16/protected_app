
/*Don't need this query for this module, as it only gets the ID for Buyer contact type. We can hardcode te value wherever it is used
ID for Buyer: 789655CA-1DA0-EF11-95CF-00505688CFF2

Places where used:
sqlGetOtherBuyersAndGuarantors.query, sqlAddExistingIndividual.changeset, sqlAddIndividual.query, sqlAddExistingBusiness.changeset,

All these below hidden fields not applicable for this modeul:
dateBusinessFIRBReceived.hidden, ddlBusinessSelfRepresenting.hidden, ddlBusinessActingBehalfOfTrust.hidden, txtBusinessTrustlName.hidden, txtBusinessTrustABN.hidden, txtBusinessTrustTFN.hidden, ddlBusinessFIRBReceived.hidden, dateAddDOB.hidden, 
txtAddTFN.hidden,
ddlAddIndividualSelfRepresenting.hidden, dateAddIndividualFIRBReceived.hidden, ddlAddIndividualFIRBReceived.hidden, ddlAddForeignEntity.hidden
*/

SELECT ID, 
       Contact_Type
FROM [dbo].[MD_Config_ContactType]
WHERE [Contact_Type] = {{ ContactType.value}}