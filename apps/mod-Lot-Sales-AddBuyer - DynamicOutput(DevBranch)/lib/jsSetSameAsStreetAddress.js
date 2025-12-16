if (checkSameAsStreetAddress.value)
{

  txtAddPostalAddress.setValue(txtAddStreetAddress.value);
  txtAddPostalAddress1.setValue(txtAddStreetAddress1.value);
  txtAddPostalAddress2.setValue(txtAddStreetAddress2.value);
  txtAddPostalSuburb.setValue(txtAddStreetSuburb.value);
  txtAddPostalState.setValue(txtAddStreetState.value);
  txtAddPostalPostcode.setValue(txtAddStreetPostcode.value);
  txtAddPostalCountry.setValue(txtAddStreetCountry.value);

  txtAddPostalAddress.setDisabled(true);
  txtAddPostalAddress1.setDisabled(true);
  txtAddPostalAddress2.setDisabled(true);
  txtAddPostalSuburb.setDisabled(true);
  txtAddPostalState.setDisabled(true);
  txtAddPostalPostcode.setDisabled(true);
  txtAddPostalCountry.setDisabled(true);
  containerPostalSearch.setHidden(true);
   txtAddPostalPlaceID.setValue(txtAddStreetPlaceID.value);
}
else
{
  txtAddPostalAddress.setDisabled(false);
 // txtAddPostalAddress.resetValue(true);
  txtAddPostalAddress1.setDisabled(false);
  txtAddPostalAddress2.setDisabled(false);
  txtAddPostalSuburb.setDisabled(false);
  txtAddPostalState.setDisabled(false);
  txtAddPostalPostcode.setDisabled(false);
  txtAddPostalCountry.setDisabled(false);
  //containerPostalSearch.setHidden(false)

}