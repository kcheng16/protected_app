//This is just a text file that highlights the changes that Neelam has done during performance improvement for future references:

//4 queries seem to be unused:
//sqlGetContacts
//sqlGetContactType: Hardcoded value for Buyer
//sqlGetPostalAddressType
//sqlGetBusiness

//Refresh button in business contact section was not having any interaction: added an nteraction to call sqlGetOtherBusinessBuyersAndGuarantors query, also changed type of button to Default.


//Queries are now run manual, sequentially after identifying the order in which they need to be run

//Hide txtBuysinessStreetAddress with || true condition
//Default value for Actingonbehalf ofTrust was {{  sqlGetSelectedBusinesses.data?.Is_Acting_onBehalf_of_Trust[0]}} is now removed. as it is supposed to bee filled by user. Same for Trust name, Trust ABN, Trust TFN. But for FIRB, it flows down from general level if exists.

//sqlGetSelectedIndividualwas being called on business search bar. removed that event as it only concerns businesses

//changed a few things
//sqlGetSelectedBusiness was trigerred after AddexistingBusiness query same for Individual. removed that since it seems unnecessary

