<GlobalFunctions>
  <SqlQueryUnified
    id="sqlGetIndividualContactCategory"
    query={include("./lib/sqlGetIndividualContactCategory.sql", "string")}
    queryDisabled="{{ SN.value < 1 }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqlGetContactType"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query={include("./lib/sqlGetContactType.sql", "string")}
    queryDisabled="{{ SN.value < 1 }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqlGetContacts"
    query={include("./lib/sqlGetContacts.sql", "string")}
    queryDisabled="{{ SN.value < 1 }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqlGetSelectedBusinesses"
    isMultiplayerEdited={false}
    query={include("./lib/sqlGetSelectedBusinesses.sql", "string")}
    queryDisabled="{{ ListExistingBusinesses.value == null }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="sqlGetSelectedBusinessContacts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="sqlGetOtherBuyersAndGuarantors"
    enableTransformer={true}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/sqlGetOtherBuyersAndGuarantors.sql", "string")}
    queryDisabled="{{ addSaleTrigger.value!==1}}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqlGetOtherBusinessBuyersAndGuarantors"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include(
      "./lib/sqlGetOtherBusinessBuyersAndGuarantors.sql",
      "string"
    )}
    queryDisabled="{{ addSaleTrigger.value!==1}}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqlGetSelectedIndividual"
    isMultiplayerEdited={false}
    query={include("./lib/sqlGetSelectedIndividual.sql", "string")}
    queryDisabled="{{ ListExistingIndividuals.selectedItem == null }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="setValue"
      params={{}}
      pluginId="ListExistingBusinesses"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="sqlGetSelectedBusinessContacts"
    isMultiplayerEdited={false}
    query={include("./lib/sqlGetSelectedBusinessContacts.sql", "string")}
    queryDisabled="{{ sqlGetSelectedBusinesses.data == null }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    shouldEnableBatchQuerying={true}
    showSuccessToaster={false}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{
        map: {
          options: { onSuccess: null, onFailure: null, additionalScope: null },
        },
      }}
      pluginId="sqlGetGFFiRBDetails"
      type="datasource"
      waitMs="1000"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="sqlAddExistingIndividual"
    actionType="INSERT"
    changeset={
      '[{"key":"Is_Has_FIRB_Received","value":"{{ sqlGetSelectedIndividual.data?.Is_ForeignEntity[0]==\'No\'?null:ddlAddIndividualFIRBReceived.value }}"},{"key":"Date_FIRB_Received","value":"{{ sqlGetSelectedIndividual.data?.Is_ForeignEntity[0]==\'No\'?null:(dateAddIndividualFIRBReceived.value? dateAddIndividualFIRBReceived.value:null) }}"},{"key":"TrustName","value":"{{ddlAddIndividualActingBehalfOfTrust.value===true?txtAddIndividualTrustName.value:null }}"},{"key":"TrustABN","value":"{{ ddlAddIndividualActingBehalfOfTrust.value===true?txtAddIndividualTrustABN.value:null }}"},{"key":"TrustTFN","value":"{{ ddlAddIndividualActingBehalfOfTrust.value===true?txtAddIndividualTrustTFN.value:null }}"},{"key":"Is_Acting_onBehalf_of_Trust","value":"{{ varActingOnBehalfIndividual.value}}"},{"key":"Is_Self_Representing","value":"{{ ddlAddIndividualSelfRepresenting.value }}"},{"key":"Lot_ID","value":"{{ urlparams.hash.ID }}"},{"key":"Contact_Type_ID","value":"{{ varBuyerContactType.value }}"},{"key":"Contact_Individual_ID","value":"{{ sqlGetSelectedIndividual.data?.ContactID[0] }}"},{"key":"Lot_Sale_ID","value":"{{ addedSaleId.value }}"},{"key":"Date_Created","value":"{{ new Date() }}"},{"key":"Street_Address_ID","value":"{{ sqlGetSelectedIndividual.data?.StreetAddressID[0] }}"},{"key":"Postal_Address_ID","value":"{{ sqlGetSelectedIndividual.data?.PostalAddressID[0] }}"}]'
    }
    filterBy={
      '[{"key":"ID","value":"{{ ListExistingIndividuals.value }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/sqlAddExistingIndividual.sql", "string")}
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="dbo.Lot_Matter_Individual_Contacts"
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        map: {
          options: {
            notificationType: "success",
            title: "Success!",
            description:
              "Existing {{ ContactType.value}} details added successfully",
          },
        },
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="sqlAddIndividual"
    actionType="INSERT"
    changeset={
      '[{"key":"Title","value":"{{ ddlAddTitle.value }}"},{"key":"GivenName","value":"{{ txtAddGivenNames.value }}"},{"key":"Surname","value":"{{ txtAddSurname.value }}"},{"key":"Email","value":"{{ txtAddEmail.value }}"},{"key":"Phone","value":"{{ txtAddPhone.value }}"},{"key":"Mobile","value":"{{ txtAddMobile.value }}"},{"key":"Fax","value":"{{ txtAddFax.value }}"},{"key":"DOB","value":"{{ dateAddDOB.value ? dateAddDOB.value : null}}"},{"key":"TFN","value":"{{ txtAddTFN.value }}"},{"key":"Is_ForeignEntity","value":"{{ddlAddForeignEntity.value  }}"},{"key":"Contact_CategoryID","value":"{{ sqlGetIndividualContactCategory.data.ID[0] }}"},{"key":"Contact_ID","value":"{{ sqlGetBusinessContactIDForIndividuals.data.BusinessContactID[0] }}"},{"key":"Is_Active","value":"true"}]'
    }
    filterBy={
      '[{"key":"ID","value":"{{ ListExistingIndividuals.value }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/sqlAddIndividual.sql", "string")}
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="dbo.CRM_Contacts_Individual"
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        map: {
          options: {
            notificationType: "success",
            title: "Success",
            description: "{{ ContactType.value }} added successfully",
          },
        },
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="sqlAddLotSale"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{ map: { value: "{{ sqlAddIndividual.data?.ID1 }}" } }}
      pluginId="addedIndividualID"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{ map: { value: "{{ sqlAddIndividual.data?.ID2 }}" } }}
      pluginId="addedStreetAddressID"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{ map: { value: "{{ sqlAddIndividual.data?.ID3 }}" } }}
      pluginId="addedPostalAddressID"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setDisabled"
      params={{ map: { disabled: false } }}
      pluginId="buttonIndividualSave"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="showNotification"
      params={{
        map: {
          options: {
            notificationType: "error",
            title: "Error adding, please check address",
          },
        },
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="setDisabled"
      params={{ map: { disabled: false } }}
      pluginId="buttonIndividualSave"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="sqlAddExistingBusiness"
    actionType="INSERT"
    changeset={
      '[{"key":"Is_Has_FIRB_Received","value":"{{sqlGetSelectedBusinesses.data?.Is_ForeignEntity[0]==\'No\'?null:( ddlBusinessFIRBReceived.value ? ddlBusinessFIRBReceived.value : null)}}"},{"key":"Date_FIRB_Received","value":"{{sqlGetSelectedBusinesses.data?.Is_ForeignEntity[0]==\'No\'?null:( dateBusinessFIRBReceived.value ? dateBusinessFIRBReceived.value : null) }}"},{"key":"TrustName","value":"{{ddlBusinessActingBehalfOfTrust.value===true ?(txtBusinessTrustlName.value ? txtBusinessTrustlName.value :null):null }}"},{"key":"TrustABN","value":"{{ddlBusinessActingBehalfOfTrust.value===true ?( txtBusinessTrustABN.value ? txtBusinessTrustABN.value : null ):null}}"},{"key":"TrustTFN","value":"{{ddlBusinessActingBehalfOfTrust.value===true ?( txtBusinessTrustTFN.value ? txtBusinessTrustTFN.value : null):null}}"},{"key":"Is_Acting_onBehalf_of_Trust","value":"{{ varActingOnBehalfBusiness.value }}"},{"key":"Is_Self_Representing","value":"{{ ddlBusinessSelfRepresenting.value }}"},{"key":"Reference","value":"{{ txtBusinessReference.value ? txtBusinessReference.value : null }}"},{"key":"Lot_ID","value":"{{ urlparams.hash.ID }}"},{"key":"Contact_Type_ID","value":"{{ varBuyerContactType.value }}"},{"key":"Contact_Business_ID","value":"{{ ListExistingBusinesses.selectedItem?.BusinessID }}"},{"key":"Contacts_Street_Address_ID","value":"{{ selectBusinessStreetAddress.selectedItem?.ID }}"},{"key":"Contacts_Postal_Address_ID","value":"{{ txtBusinessPostalAddressID.value}}"},{"key":"Contacts_Business_Individual_ID","value":"{{ ListBusinessContacts.selectedItem?.ID }}"},{"key":"Lot_Sale_ID","value":"{{ addedSaleId.value }}"},{"key":"Date_Created","value":"{{ new Date() }}"}]'
    }
    enableTransformer={true}
    filterBy={
      '[{"key":"ID","value":"{{ ListExistingIndividuals.value }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/sqlAddExistingBusiness.sql", "string")}
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="dbo.Lot_Matter_Business_Contacts"
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        map: {
          options: {
            notificationType: "success",
            title: "Success!",
            description:
              "Existing {{ ContactType.value}} details added successfully",
          },
        },
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="sqlGetBusiness"
    isMultiplayerEdited={false}
    query={include("./lib/sqlGetBusiness.sql", "string")}
    queryDisabled="{{ ListExistingBusinesses.value == null }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqletIndividualForSelectedBusiness"
    isMultiplayerEdited={false}
    query={include("./lib/sqletIndividualForSelectedBusiness.sql", "string")}
    queryDisabled="{{ ListExistingBusinesses.selectedItem < 1 }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqlGetBusinessContactIDForIndividuals"
    query={include("./lib/sqlGetBusinessContactIDForIndividuals.sql", "string")}
    queryDisabled="{{ SN.value < 1 }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqlClearAddBuyerFormListener"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query={include("./lib/sqlClearAddBuyerFormListener.sql", "string")}
    queryDisabled="{{ addSaleTrigger.value!==1 }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    warningCodes={[]}
    watchedParams={["ClearFormTrigger.value"]}
  >
    <Event
      event="success"
      method="clear"
      params={{}}
      pluginId="formIndividual"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clear"
      params={{}}
      pluginId="formBusiness"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{ tabsType.value== 'Individual'}}"
      event="success"
      method="setValue"
      params={{ map: { value: "{{ SelfRepresentedOrNot.value }}" } }}
      pluginId="ddlAddIndividualSelfRepresenting"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{ tabsType.value== 'Business'}}"
      event="success"
      method="setValue"
      params={{ map: { value: "{{ SelfRepresentedOrNot.value }}" } }}
      pluginId="ddlBusinessSelfRepresenting"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="sqlClearAddGuarantorFormListener"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query={include("./lib/sqlClearAddGuarantorFormListener.sql", "string")}
    queryDisabled="{{ addSaleTrigger.value!==1 }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    warningCodes={[]}
    watchedParams={["ClearFormTrigger.value"]}
  >
    <Event
      event="success"
      method="clear"
      params={{ ordered: [] }}
      pluginId="formIndividual"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clear"
      params={{ ordered: [] }}
      pluginId="formBusiness"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="sqlGetStreetAddressType"
    isMultiplayerEdited={false}
    query={include("./lib/sqlGetStreetAddressType.sql", "string")}
    queryDisabled="{{ SN.value < 1 }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqlGetPostalAddressType"
    isMultiplayerEdited={false}
    query={include("./lib/sqlGetPostalAddressType.sql", "string")}
    queryDisabled="{{ SN.value < 1 }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqlGetStreetAddress"
    isMultiplayerEdited={false}
    query={include("./lib/sqlGetStreetAddress.sql", "string")}
    queryDisabled="{{ ListExistingBusinesses.value == null }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="sqlGetPostalAddress"
    isMultiplayerEdited={false}
    query={include("./lib/sqlGetPostalAddress.sql", "string")}
    queryDisabled="{{ ListExistingBusinesses.value == null }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <OpenAPIQuery
    id="qryGetStreetAddress"
    method="get"
    operationId="autocomplete"
    parameterDynamicStates={
      '{"input":false,"sessiontoken":false,"components":false,"strictbounds":false,"offset":false,"origin":false,"location":false,"locationbias":false,"locationrestriction":false,"radius":false,"types":false,"language":false,"region":false}'
    }
    parameterMetadata=""
    parameters={
      '{"components":"{{ \'country:au\' }}","input":"{{ txtAddStreetAddress.value }}"}'
    }
    path="/maps/api/place/autocomplete/json"
    queryDisabled="{{ txtAddStreetAddress.value == '' }}"
    requestBodyMetadata=""
    resourceName="bb36080a-0ca9-4862-9eb9-b07db4d195a1"
    runWhenModelUpdates={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="qryGetStreetPostcode"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </OpenAPIQuery>
  <OpenAPIQuery
    id="qryGetPostalAddress"
    isMultiplayerEdited={false}
    method="get"
    operationId="autocomplete"
    parameterDynamicStates={
      '{"input":false,"sessiontoken":false,"components":false,"strictbounds":false,"offset":false,"origin":false,"location":false,"locationbias":false,"locationrestriction":false,"radius":false,"types":false,"language":false,"region":false}'
    }
    parameterMetadata=""
    parameters={
      '{"components":"{{ \'country:au\' }}","input":"{{ txtAddPostalAddress.value }}"}'
    }
    path="/maps/api/place/autocomplete/json"
    queryDisabled="{{ txtAddPostalAddress.value == '' }}"
    requestBodyMetadata=""
    resourceName="bb36080a-0ca9-4862-9eb9-b07db4d195a1"
    runWhenModelUpdates={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="qryGetPostalPostcode"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </OpenAPIQuery>
  <RESTQuery
    id="qryGetStreetPostcode"
    isMultiplayerEdited={false}
    query="https://maps.googleapis.com/maps/api/place/details/json?place_id={{ txtAddStreetPlaceID.value }}&key={{ retoolContext.configVars.GoogleAdressApiKey }}"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{ qryGetStreetPostcode.data.result.address_components[6].short_name}}",
          },
        ],
      }}
      pluginId="txtAddStreetPostcode"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="qryGetPostalPostcode"
    query="https://maps.googleapis.com/maps/api/place/details/json?place_id={{ txtAddPostalPlaceID.value }}&key={{ retoolContext.configVars.GoogleAdressApiKey }}"
    resourceName="REST-WithoutResource"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{ qryGetPostalPostcode.data?.result?.address_components[6]?.short_name }}",
          },
        ],
      }}
      pluginId="txtAddPostalPostcode"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <JavascriptQuery
    id="jsSetSameAsStreetAddress"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/jsSetSameAsStreetAddress.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <State id="varContactType" value="{{ ContactType.value }}" />
  <State
    id="varBuyerContactType"
    value="789655CA-1DA0-EF11-95CF-00505688CFF2"
  />
  <State
    id="varGuarantorContactType"
    value="EED6A6D1-1DA0-EF11-95CF-00505688CFF2"
  />
  <State id="varContactIndividualID" />
  <State id="varStreetPostcode" />
  <State id="varCloseTrigger" />
  <State
    id="varIndividualContactCategory"
    value="ED187F34-18A0-EF11-95CF-00505688CFF2"
  />
  <State
    id="varStreetAddressType"
    value="2C33C047-1AA0-EF11-95CF-00505688CFF2"
  />
  <State
    id="varPostalAddressType"
    value="2D33C047-1AA0-EF11-95CF-00505688CFF2"
  />
  <JavascriptQuery
    id="jsSetReadOnly"
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="sqlGetGFFiRBDetails"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/sqlGetGFFiRBDetails.sql", "string")}
    queryDisabled="{{  addSaleTrigger.value!==1}}"
    queryThrottleTime="1000"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    runWhenPageLoadsDelay="1200"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <State id="addedSaleId" />
  <SqlQueryUnified
    id="sqlAddLotSale"
    isMultiplayerEdited={false}
    query={include("./lib/sqlAddLotSale.sql", "string")}
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    successMessage="Sale is added successfully!"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="setValue"
      params={{ map: { value: "{{ sqlAddLotSale.data?.ID[0] }}" } }}
      pluginId="addedSaleId"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{ map: { value: "'Success'" } }}
      pluginId="varCloseTrigger"
      type="state"
      waitMs="500"
      waitType="debounce"
    />
    <Event
      enabled="{{ tabsType.value == 'Individual' && radioBuyerGuarantor.value == 'Existing' }}"
      event="success"
      method="trigger"
      params={{}}
      pluginId="sqlAddExistingIndividual"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{ tabsType.value == 'Individual' && radioBuyerGuarantor.value == 'New' }}"
      event="success"
      method="trigger"
      params={{}}
      pluginId="sqlAddIndividualContact"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="sqlTabSwicher"
    query={include("./lib/sqlTabSwicher.sql", "string")}
    queryDisabled="{{ addSaleTrigger.value!==1 }}"
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    warningCodes={[]}
    watchedParams={["tabsType.value"]}
  >
    <Event
      event="success"
      method="run"
      params={{
        ordered: [
          {
            src: "if (tabsType.value === 'Business') {  formBusiness.setHidden(false); \n radioBuyerGuarantor.setHidden(true);         formIndividual.setHidden(true);\n  } else if (tabsType.value === 'Individual') {\n    formIndividual.setHidden(false);\n    formBusiness.setHidden(true);\n    radioBuyerGuarantor.setHidden(false);\n}\t",
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="sqlGetGFFiRBDetails"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <JavascriptQuery
    id="NeelamNotes"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/NeelamNotes.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <State id="varActingOnBehalfIndividual" />
  <State id="varActingOnBehalfBusiness" />
  <SqlQueryUnified
    id="sqlAddIndividualContact"
    isMultiplayerEdited={false}
    query={include("./lib/sqlAddIndividualContact.sql", "string")}
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer=""
    warningCodes={[]}
  />
  <State id="addedIndividualID" />
  <State id="addedStreetAddressID" />
  <State id="addedPostalAddressID" />
  <SqlQueryUnified
    id="sqlUpdateIndividualDOB"
    query={include("./lib/sqlUpdateIndividualDOB.sql", "string")}
    resourceName="6efa15f0-b654-4ee4-bc91-022712b21b48"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
</GlobalFunctions>
