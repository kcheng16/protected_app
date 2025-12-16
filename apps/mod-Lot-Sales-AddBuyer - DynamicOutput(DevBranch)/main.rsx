<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <GlobalWidgetProp id="addSaleTrigger" value="1" />
  <GlobalWidgetProp id="BuyerType" />
  <GlobalWidgetProp id="ClearFormTrigger" />
  <GlobalWidgetOutput
    id="closeModalTrigger"
    description="Close add contact modal"
    value="{{ varCloseTrigger.value }}"
  />
  <GlobalWidgetProp id="ContactType" defaultValue="Buyer" />
  <GlobalWidgetOutput
    id="createdSaleID"
    value="{{ addedSaleId.value===null?null: addedSaleId.value }}"
  />
  <GlobalWidgetProp id="ExistingBuyerOrNew" />
  <GlobalWidgetProp id="inputSaleID" />
  <GlobalWidgetProp id="Lot_ID" />
  <GlobalWidgetProp id="Lot_Salestatus_ID" />
  <GlobalWidgetProp id="SelfRepresentedOrNot" value="true" />
  <GlobalWidgetProp id="SN" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      addSaleTrigger="1"
      backgroundColor="white"
      BuyerType=""
      ClearFormTrigger=""
      ContactType=""
      ExistingBuyerOrNew=""
      inputSaleID=""
      isGlobalWidgetContainer={true}
      Lot_ID=""
      Lot_Salestatus_ID=""
      SelfRepresentedOrNot="true"
      SN=""
    >
      <Form
        id="formAddContactBuyer"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        hidden=""
        initialData="{{ sqlGetSelectedIndividual.data.Name[0] }}"
        padding="12px"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showBorder={false}
        style={{ ordered: [{ headerBackground: "secondary" }] }}
      >
        <Tabs
          id="tabsType"
          hidden="true"
          itemMode="static"
          margin="8px 8px 8px 24px"
          style={{
            ordered: [{ pillBorderRadius: "8px" }, { fontSize: "h5Font" }],
          }}
          targetContainerId="containerMain"
          value="{{ BuyerType.value }}"
        >
          <Option id="7d95f" value="Individual" />
          <Option id="575e6" value="Business" />
          <Event
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: "if (tabsType.value === 'Business') {  formBusiness.setHidden(false); \n radioBuyerGuarantor.setHidden(true);         formIndividual.setHidden(true);\n  } else if (tabsType.value === 'Individual') {\n    formIndividual.setHidden(false);\n    formBusiness.setHidden(true);\n    radioBuyerGuarantor.setHidden(false);\n}\t\n\n\n\n",
                },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Tabs>
        <TextInput
          id="txtInputContactType"
          hidden="true"
          label=""
          labelPosition="top"
          placeholder="Enter value"
          value="{{ ContactType.value }}"
        >
          <Event
            event="change"
            method="clear"
            params={{ ordered: [] }}
            pluginId="formIndividual"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="change"
            method="clear"
            params={{ ordered: [] }}
            pluginId="formBusiness"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </TextInput>
        <RadioGroup
          id="radioBuyerGuarantor"
          hidden="{{tabsType.value=='Business'?true:false}}"
          itemMode="static"
          label=""
          labelPosition="top"
          margin="4px 22px"
          value="{{ ExistingBuyerOrNew.value?ExistingBuyerOrNew.value:self.values[0]}}"
        >
          <Option
            id="01d9e"
            label="Search existing {{ ContactType.value.toLowerCase() }}s"
            value="Existing"
          />
          <Option
            id="85121"
            label="Add new {{ ContactType.value.toLowerCase() }}"
            value="New"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'New' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [] }}
            pluginId="ListExistingIndividuals"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'Existing' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="ListExistingIndividuals"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'Existing' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="containerExistingDetaills"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'New' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: true }] }}
            pluginId="containerExistingDetaills"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'Existing' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: true }] }}
            pluginId="containerNewDetaills"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'New' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="containerNewDetaills"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'Existing' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: true }] }}
            pluginId="containerAddresses"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'New' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="containerAddresses"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'New' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: true }] }}
            pluginId="txtStreetAddress"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'Existing' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="txtStreetAddress"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'New' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: true }] }}
            pluginId="txtPostalAddress"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'Existing' }}"
            event="change"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="txtPostalAddress"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'New' }}"
            event="change"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="ddlAddIndividualActingBehalfOfTrust"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="change"
            method="setValue"
            params={{
              ordered: [{ value: "{{ SelfRepresentedOrNot.value }}" }],
            }}
            pluginId="ddlAddIndividualSelfRepresenting"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'New' }}"
            event="change"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="txtAddIndividualTrustName"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'New' }}"
            event="change"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="txtAddIndividualTrustABN"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ radioBuyerGuarantor.value == 'New' }}"
            event="change"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="txtAddIndividualTrustTFN"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </RadioGroup>
        <Form
          id="formIndividual"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden="{{tabsType.value=='Individual'?false:true}}"
          margin="0"
          padding="0"
          requireValidation={true}
          showBody={true}
          showBorder={false}
          showFooter={true}
        >
          <Header>
            <Text
              id="formTitle9"
              value="#### Form title"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <Select
              id="ListExistingIndividuals"
              captionByIndex=""
              data="{{ sqlGetOtherBuyersAndGuarantors.data }}"
              emptyMessage="No options"
              hidden="{{ ExistingBuyerOrNew.value==='New'}}"
              iconAfter="bold/interface-search"
              label=""
              labels="{{ item.Name }}"
              margin="4px 20px"
              overlayMaxHeight={375}
              placeholder="Search existing {{  varContactType.value}}s"
              showClear={true}
              showSelectionIndicator={true}
              values="{{ item.Name }}"
            >
              <Event
                event="change"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="sqlGetSelectedIndividual"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Select>
            <Include src="./src/containerNewDetaills.rsx" />
            <Include src="./src/containerExistingDetaills.rsx" />
            <Include src="./src/containerNewBuyerDetails.rsx" />
            <Include src="./src/containerAddresses.rsx" />
            <Container
              id="group10"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="a6985" viewKey="View 1">
                <Text
                  id="labelBusinesStreetAddress2"
                  hidden="{{ radioBuyerGuarantor.value == 'New'}}"
                  style={{ ordered: [] }}
                  value="**Street address**"
                  verticalAlign="center"
                />
                <Text
                  id="labelBusinesStreetAddress3"
                  hidden="{{ radioBuyerGuarantor.value == 'New'}}"
                  style={{ ordered: [] }}
                  value="**Postal address**"
                  verticalAlign="center"
                />
                <TextInput
                  id="txtStreetAddress"
                  disabled=""
                  hidden="{{ radioBuyerGuarantor.value == 'New'}}"
                  label=""
                  labelPosition="top"
                  labelWrap={true}
                  placeholder="Enter value"
                  readOnly="true"
                  style={{ ordered: [{ border: "canvas" }] }}
                  value="{{  sqlGetSelectedIndividual.data?.StreetAddress[0] || 'N/A'}}"
                >
                  <Event
                    enabled="{{ self.value }}"
                    event="blur"
                    method="setValue"
                    params={{ ordered: [{ value: "true" }] }}
                    pluginId="anyChangesOnIndividualPage"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                </TextInput>
                <TextInput
                  id="txtPostalAddress"
                  disabled=""
                  hidden="{{ radioBuyerGuarantor.value == 'New'}}"
                  label=""
                  labelPosition="top"
                  labelWrap={true}
                  placeholder="Enter value"
                  readOnly="true"
                  style={{ ordered: [{ border: "canvas" }] }}
                  value="{{  sqlGetSelectedIndividual.data?.PostalAddress[0] || 'N/A'}}"
                >
                  <Event
                    enabled="{{ self.value }}"
                    event="blur"
                    method="setValue"
                    params={{ ordered: [{ value: "true" }] }}
                    pluginId="anyChangesOnIndividualPage"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                </TextInput>
              </View>
            </Container>
          </Body>
          <Footer>
            <Button
              id="buttonIndividualCancel"
              style={{ ordered: [{ border: "primary" }] }}
              styleVariant="outline"
              text="Cancel"
            >
              <Event
                event="click"
                method="clear"
                params={{ ordered: [] }}
                pluginId="formIndividual"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="click"
                method="setValue"
                params={{ ordered: [{ value: "'Cancel'" }] }}
                pluginId="varCloseTrigger"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="click"
                method="setValue"
                params={{ ordered: [{ value: "null" }] }}
                pluginId="addedSaleId"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
            <Button
              id="buttonIndividualSave"
              submit={true}
              submitTargetId="formIndividual"
              text="Save"
            />
          </Footer>
          <Event
            event="submit"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ ddlAddIndividualActingBehalfOfTrust.selectedItem?.value }}",
                },
              ],
            }}
            pluginId="varActingOnBehalfIndividual"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ tabsType.value == 'Individual' && radioBuyerGuarantor.value == 'New' }}"
            event="submit"
            method="trigger"
            params={{}}
            pluginId="sqlAddIndividual"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ tabsType.value == 'Individual' && radioBuyerGuarantor.value == 'Existing' }}"
            event="submit"
            method="trigger"
            params={{}}
            pluginId="sqlAddLotSale"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="setDisabled"
            params={{}}
            pluginId="buttonIndividualSave"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
        <Form
          id="formBusiness"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden="{{tabsType.value=='Business'?false:true}}"
          margin="0"
          padding="12px"
          requireValidation={true}
          showBody={true}
          showBorder={false}
          showFooter={true}
        >
          <Header>
            <Text
              id="formTitle8"
              value="#### Form title"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <Select
              id="ListExistingBusinesses"
              captionByIndex="{{ item.ABN }}"
              data="{{ sqlGetOtherBusinessBuyersAndGuarantors.data }}"
              emptyMessage="No options"
              hidden="false"
              iconAfter="bold/interface-search"
              label=""
              labels="{{ item.CompanyName }}"
              overlayMaxHeight={375}
              placeholder="Search existing businesses"
              showClear={true}
              showSelectionIndicator={true}
              values="{{ item.BusinessID}}"
            >
              <Event
                event="change"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="sqlGetPostalAddress"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="change"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="sqlGetSelectedBusinesses"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="change"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="sqlGetStreetAddress"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="change"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="sqletIndividualForSelectedBusiness"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Select>
            <Button
              id="buttonAddBusinessContact"
              style={{ ordered: [{ background: "primary" }] }}
              submitTargetId="formBusiness"
              text="Add business"
              tooltipText="Please add a new contact in a separate window then click the 'Refresh' button to see the newly added contact from the drop-down list"
            >
              <Event
                event="click"
                method="openApp"
                params={{
                  ordered: [
                    { uuid: "3ce71c3a-5a5c-11f0-baa5-672e3d1db076" },
                    { options: { ordered: [{ newTab: true }] } },
                  ],
                }}
                pluginId=""
                type="util"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
            <Button
              id="buttonRefreshBusinessContact"
              iconBefore="line/interface-arrows-round-left"
              style={{
                ordered: [
                  { background: "canvas" },
                  { border: "rgba(0, 0, 0, 0.99)" },
                  { borderRadius: "20px" },
                ],
              }}
              submitTargetId="formBusiness"
              text="Refresh"
            >
              <Event
                event="click"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="sqlGetOtherBusinessBuyersAndGuarantors"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
            <TextInput
              id="txtCompanyName"
              disabled="false"
              label="Company Name"
              labelWrap={true}
              placeholder="N/A"
              readOnly="true"
              required={true}
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.CompanyName[0] || 'N/A'}}"
            />
            <TextInput
              id="txtBusinessPhone"
              disabled=""
              label="Phone"
              pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
              patternType="regex"
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.Phone[0] || 'N/A'}}"
            />
            <TextInput
              id="txtTradingName"
              disabled=""
              label="Trading Name"
              labelWrap={true}
              placeholder="N/A"
              readOnly="true"
              required={true}
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.TradingName[0] || 'N/A'}}"
            />
            <TextInput
              id="txtBusinessMobile"
              disabled=""
              label="Mobile"
              pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
              patternType="regex"
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.Mobile[0] || 'N/A'}}"
            />
            <TextInput
              id="txtBusinessACN"
              disabled=""
              label="ACN"
              labelWrap={true}
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.ACN[0] || 'N/A' }}"
            />
            <TextInput
              id="txtBusinessFax"
              disabled=""
              label="Fax"
              pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
              patternType="regex"
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.Fax[0] || 'N/A'}}"
            />
            <TextInput
              id="txtBusinessABN"
              disabled=""
              label="ABN"
              pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
              patternType="regex"
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.ABN[0] || 'N/A'}}"
            />
            <TextInput
              id="txtBusinessEmail"
              disabled=""
              label="Email"
              labelWrap={true}
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.Email[0] || 'N/A'}}"
            />
            <TextInput
              id="txtBusinessTFN"
              disabled=""
              label="TFN"
              labelWidth="44"
              pattern="\b\d{8,9}\b"
              patternType="regex"
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.TFN[0] || 'N/A'}}"
            />
            <TextInput
              id="txtBusinessForeignEntity"
              disabled=""
              hidden="{{ ContactType.value == 'Guarantor' }}"
              label="Foreign entity?"
              labelWrap={true}
              pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
              patternType="regex"
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.Is_ForeignEntity[0]}}"
            />
            <TextInput
              id="txtBusinessWebsite"
              disabled=""
              label="Website"
              labelWrap={true}
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  sqlGetSelectedBusinesses.data?.Website[0] || 'N/A'}}"
            />
            <TextInput
              id="txtBusinessReference"
              hidden="{{ ContactType.value == 'Buyer' }}"
              label="Reference"
              placeholder="Enter value"
            />
            <Container
              id="containerBusinessBuyerDetails"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              hidden="{{ ContactType.value == 'Guarantor' }}"
              margin="0"
              overflowType="hidden"
              padding="0"
              showBody={true}
              showBorder={false}
            >
              <Header>
                <Text
                  id="containerTitle7"
                  value="#### Container title"
                  verticalAlign="center"
                />
              </Header>
              <View id="7f035" viewKey="View 1">
                <Container
                  id="group8"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                  style={{
                    ordered: [{ background: "rgba(255, 255, 255, 0)" }],
                  }}
                >
                  <View id="0aa37" viewKey="View 1">
                    <Select
                      id="ddlBusinessActingBehalfOfTrust"
                      data=""
                      emptyMessage="No options"
                      hidden=""
                      itemMode="static"
                      label="Acting on behalf of a trust?"
                      labelWrap={true}
                      overlayMaxHeight={375}
                      placeholder="Select an option"
                      showSelectionIndicator={true}
                      value=""
                      values=""
                    >
                      <Option
                        id="8c97b"
                        disabled={false}
                        hidden={false}
                        label="Yes"
                        value="true"
                      />
                      <Option
                        id="3777b"
                        disabled={false}
                        hidden={false}
                        label="No"
                        value="false"
                      />
                    </Select>
                    <TextInput
                      id="txtBusinessTrustlName"
                      hidden="{{ ddlBusinessActingBehalfOfTrust.value!==true }}"
                      label="Trust name"
                      labelWrap={true}
                      placeholder="Enter value"
                      required="{{ ddlBusinessActingBehalfOfTrust.selectedItem?.value }}"
                    >
                      <Event
                        event="blur"
                        method="run"
                        params={{
                          ordered: [
                            {
                              src: "txtBusinessTrustlName.setValue(txtBusinessTrustlName.value.trim());",
                            },
                          ],
                        }}
                        pluginId=""
                        type="script"
                        waitMs="0"
                        waitType="debounce"
                      />
                    </TextInput>
                    <TextInput
                      id="txtBusinessTrustABN"
                      hidden="{{ ddlBusinessActingBehalfOfTrust.value!==true }}"
                      label="Trust ABN"
                      pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
                      patternType="regex"
                      placeholder="Enter value"
                      required="{{ ddlBusinessActingBehalfOfTrust.selectedItem?.value }}"
                    >
                      <Event
                        event="change"
                        method="run"
                        params={{
                          ordered: [
                            {
                              src: "txtBusinessTrustABN.setValue(txtBusinessTrustABN.value.replace(/\\s+/g, ''));",
                            },
                          ],
                        }}
                        pluginId=""
                        type="script"
                        waitMs="0"
                        waitType="debounce"
                      />
                    </TextInput>
                    <TextInput
                      id="txtBusinessTrustTFN"
                      hidden="{{ ddlBusinessActingBehalfOfTrust.value!==true }}"
                      label="Trust TFN"
                      pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
                      patternType="regex"
                      placeholder="Enter value"
                      required="{{ ddlBusinessActingBehalfOfTrust.selectedItem?.value }}"
                    >
                      <Event
                        event="change"
                        method="run"
                        params={{
                          ordered: [
                            {
                              src: "txtBusinessTrustTFN.setValue(txtBusinessTrustTFN.value.replace(/\\s+/g, ''));",
                            },
                          ],
                        }}
                        pluginId=""
                        type="script"
                        waitMs="0"
                        waitType="debounce"
                      />
                    </TextInput>
                  </View>
                </Container>
                <Container
                  id="group11"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                  style={{
                    ordered: [{ background: "rgba(255, 255, 255, 0)" }],
                  }}
                >
                  <View id="a6985" viewKey="View 1">
                    <Select
                      id="ddlBusinessSelfRepresenting"
                      data=""
                      emptyMessage="No options"
                      hidden=""
                      itemMode="static"
                      label="Self-representing?"
                      labelWrap={true}
                      overlayMaxHeight={375}
                      placeholder="Select an option"
                      readOnly="true"
                      showSelectionIndicator={true}
                      value="{{ SelfRepresentedOrNot.value }}"
                      values=""
                    >
                      <Option
                        id="8c97b"
                        disabled={false}
                        hidden={false}
                        label="Yes"
                        value="true"
                      />
                      <Option
                        id="3777b"
                        disabled={false}
                        hidden={false}
                        label="No"
                        value="false"
                      />
                    </Select>
                    <Select
                      id="ddlBusinessFIRBReceived"
                      data=""
                      emptyMessage="No options"
                      hidden="{{  sqlGetSelectedBusinesses.data?.Is_ForeignEntity[0]=='No'}}"
                      itemMode="static"
                      label="Has FIRB been received?"
                      labelWrap={true}
                      overlayMaxHeight={375}
                      placeholder="Select an option"
                      showSelectionIndicator={true}
                      value="{{ 
sqlGetGFFiRBDetails.data?.Is_Blanket_FIRB_Approval[0]

 }}"
                      values=""
                    >
                      <Option
                        id="8c97b"
                        disabled={false}
                        hidden={false}
                        label="Yes"
                        value="true"
                      />
                      <Option
                        id="3777b"
                        disabled={false}
                        hidden={false}
                        label="No"
                        value="false"
                      />
                    </Select>
                    <Date
                      id="dateBusinessFIRBReceived"
                      dateFormat="d/MM/yyyy"
                      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
                      disabled="false"
                      hidden="{{  sqlGetSelectedBusinesses.data?.Is_ForeignEntity[0]=='No'}}"
                      iconBefore="bold/interface-calendar"
                      label="Date FIRB received"
                      labelWrap={true}
                      required="{{ ddlBusinessFIRBReceived.selectedItem?.value == true }}"
                      value="{{  sqlGetGFFiRBDetails.data?.Date_Blanket_FIRB[0]}}"
                    />
                  </View>
                </Container>
              </View>
            </Container>
            <Text
              id="labelBusinesStreetAddress"
              value={'**Street address <span style="color:#E74c3c;">*</span>**'}
              verticalAlign="center"
            />
            <Text
              id="labelBusinesPostalAddress"
              value="**Postal address**"
              verticalAlign="center"
            />
            <Select
              id="selectBusinessStreetAddress"
              data="{{ ListExistingBusinesses.selectedItem?sqlGetStreetAddress.data:'' }}"
              emptyMessage="No options"
              label=""
              labelPosition="top"
              labels="{{ item.Address }}"
              overlayMaxHeight={375}
              placeholder="Select address"
              required={true}
              showSelectionIndicator={true}
              values="{{ item.ID }}"
            >
              <Event
                event="change"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="sqlGetPostalAddress"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Select>
            <Text
              id="txtBusinessPostalAddressID"
              hidden="true"
              margin="9px 14px"
              value="{{ sqlGetPostalAddress.data?.ID[0] }}"
              verticalAlign="center"
            />
            <TextInput
              id="txtBusinessPostalAddress"
              label=""
              labelPosition="top"
              readOnly="true"
              required={true}
              style={{ ordered: [{ border: "rgba(255, 255, 255, 0)" }] }}
              value="{{ sqlGetPostalAddress.data?.Address[0] }}"
            />
            <Divider
              id="dividerBusiness"
              style={{ ordered: [{ color: "tertiary" }] }}
            />
            <Container
              id="group12"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="58618" viewKey="View 1">
                <Select
                  id="ListBusinessContacts"
                  captionByIndex=""
                  data="{{ formatDataAsArray(sqlGetSelectedBusinessContacts.data)?.filter(contact => contact.Address_ID===selectBusinessStreetAddress.selectedItem?.ID) }}"
                  emptyMessage="No options"
                  hidden="false"
                  iconAfter="bold/interface-search"
                  label="Contact person"
                  labelPosition="top"
                  labels="{{ item.Name }}"
                  overlayMaxHeight={375}
                  placeholder="Select individual associated with the above business"
                  required={true}
                  showClear={true}
                  showSelectionIndicator={true}
                  values="{{ item.ID }}"
                >
                  <Event
                    event="inputValueChange"
                    method="trigger"
                    params={{ ordered: [] }}
                    pluginId="sqlGetSelectedIndividual"
                    type="datasource"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Select>
                <Button
                  id="buttonAddIndividualContact"
                  style={{ ordered: [{ background: "primary" }] }}
                  submitTargetId="formBusiness"
                  text="Add individual"
                  tooltipText="Please add a new contact in a separate window then click the 'Refresh' button to see the newly added contact from the drop-down list"
                >
                  <Event
                    event="click"
                    method="openApp"
                    params={{
                      ordered: [
                        { uuid: "3ce71c3a-5a5c-11f0-baa5-672e3d1db076" },
                        {
                          options: {
                            ordered: [
                              { newTab: true },
                              {
                                hashParams: [
                                  {
                                    ordered: [
                                      { key: "BusinessName" },
                                      {
                                        value:
                                          "{{  sqlGetSelectedBusinesses.data?.CompanyName[0]\n  }}",
                                      },
                                    ],
                                  },
                                ],
                              },
                            ],
                          },
                        },
                      ],
                    }}
                    pluginId=""
                    type="util"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Button>
                <Button
                  id="buttonRefreshIndividualContact"
                  iconBefore="line/interface-arrows-round-left"
                  style={{
                    ordered: [
                      { background: "canvas" },
                      { border: "rgba(0, 0, 0, 0.99)" },
                      { borderRadius: "20px" },
                    ],
                  }}
                  submitTargetId="formBusiness"
                  text="Refresh"
                >
                  <Event
                    event="click"
                    method="trigger"
                    params={{ ordered: [] }}
                    pluginId="sqlGetSelectedBusinessContacts"
                    type="datasource"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Button>
              </View>
            </Container>
            <TextInput
              id="txtContactName"
              label="Name"
              placeholder="Enter value"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{   formatDataAsArray(sqlGetSelectedBusinessContacts.data)?.filter(contact => contact.Address_ID===selectBusinessStreetAddress.selectedItem?.ID)[ListBusinessContacts.selectedIndex]?.Name}}"
            />
            <TextInput
              id="txtContactPhone"
              label="Phone"
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  formatDataAsArray(sqlGetSelectedBusinessContacts.data)?.filter(contact => contact.Address_ID===selectBusinessStreetAddress.selectedItem?.ID)[ListBusinessContacts.selectedIndex]?.Phone}}"
            />
            <TextInput
              id="txtContactMobile"
              label="Mobile"
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  formatDataAsArray(sqlGetSelectedBusinessContacts.data)?.filter(contact => contact.Address_ID===selectBusinessStreetAddress.selectedItem?.ID)[ListBusinessContacts.selectedIndex]?.Mobile}}"
            />
            <Date
              id="dateContactDOB"
              dateFormat="d/MM/yyyy"
              datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
              iconBefore="bold/interface-calendar"
              label="Date of birth"
              readOnly=""
              required={true}
              style={{}}
              value="{{  formatDataAsArray(sqlGetSelectedBusinessContacts.data)?.filter(contact => contact.Address_ID===selectBusinessStreetAddress.selectedItem?.ID)[ListBusinessContacts.selectedIndex]?.DOB}}"
            />
            <TextInput
              id="txtContactEmail"
              label="Email"
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  formatDataAsArray(sqlGetSelectedBusinessContacts.data)?.filter(contact => contact.Address_ID===selectBusinessStreetAddress.selectedItem?.ID)[ListBusinessContacts.selectedIndex]?.Email}}"
            />
            <TextInput
              id="txtContactFax"
              label="Fax"
              placeholder="N/A"
              readOnly="true"
              style={{ ordered: [{ border: "canvas" }] }}
              value="{{  formatDataAsArray(sqlGetSelectedBusinessContacts.data)?.filter(contact => contact.Address_ID===selectBusinessStreetAddress.selectedItem?.ID)[ListBusinessContacts.selectedIndex]?.Fax}}"
            />
          </Body>
          <Footer>
            <Button
              id="buttonBusinessCancel"
              style={{ ordered: [{ border: "primary" }] }}
              styleVariant="outline"
              text="Cancel"
            >
              <Event
                event="click"
                method="clear"
                params={{ ordered: [] }}
                pluginId="formBusiness"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="click"
                method="setValue"
                params={{ ordered: [{ value: "'Cancel'" }] }}
                pluginId="varCloseTrigger"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="click"
                method="setValue"
                params={{ ordered: [{ value: "null" }] }}
                pluginId="addedSaleId"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
            <Button
              id="buttonBusinessSave"
              submitTargetId="formBusiness"
              text="Save"
            >
              <Event
                event="click"
                method="setValue"
                params={{
                  ordered: [
                    {
                      value:
                        "{{ ddlBusinessActingBehalfOfTrust.selectedItem?.value }}",
                    },
                  ],
                }}
                pluginId="varActingOnBehalfBusiness"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                enabled="{{ tabsType.value == 'Business' }}"
                event="click"
                method="trigger"
                params={{}}
                pluginId="sqlAddExistingBusiness"
                type="datasource"
                waitMs="500"
                waitType="debounce"
              />
              <Event
                event="click"
                method="trigger"
                params={{}}
                pluginId="sqlAddLotSale"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="click"
                method="trigger"
                params={{
                  map: {
                    options: {
                      object: {
                        onSuccess: null,
                        onFailure: null,
                        additionalScope: null,
                      },
                    },
                  },
                }}
                pluginId="sqlUpdateIndividualDOB"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
          </Footer>
        </Form>
      </Form>
    </ModuleContainerWidget>
  </Frame>
</App>
