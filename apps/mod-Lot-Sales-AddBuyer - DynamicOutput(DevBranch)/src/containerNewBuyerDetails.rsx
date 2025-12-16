<Container
  id="containerNewBuyerDetails"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{ ContactType.value == 'Guarantor' }}"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <Header>
    <Text
      id="containerTitle3"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="98c00" viewKey="View 1">
    <Container
      id="group1"
      _flexWrap={true}
      _gap="0px"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="805be" viewKey="View 1">
        <Select
          id="ddlAddIndividualActingBehalfOfTrust"
          data=""
          emptyMessage="No options"
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
          <Event
            enabled="{{ self.value }}"
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "true" }] }}
            pluginId="anyChangesOnIndividualPage"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <TextInput
          id="txtAddIndividualTrustName"
          hidden="{{ ddlAddIndividualActingBehalfOfTrust.value!==true }}"
          label="Trust name"
          labelWrap={true}
          placeholder="Enter value"
          required="{{ ddlAddIndividualActingBehalfOfTrust.selectedItem?.value }}"
        >
          <Event
            enabled="{{ self.value }}"
            event="blur"
            method="run"
            params={{
              ordered: [
                {
                  src: "txtAddIndividualTrustName.setValue(txtAddIndividualTrustName.value.trim());",
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
          id="txtAddIndividualTrustABN"
          hidden="{{ ddlAddIndividualActingBehalfOfTrust.value!==true }}"
          label="Trust ABN"
          pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
          patternType="regex"
          placeholder="Enter value"
          required="{{ ddlAddIndividualActingBehalfOfTrust.selectedItem?.value }}"
        >
          <Event
            enabled="{{ self.value }}"
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: "txtAddIndividualTrustABN.setValue(txtAddIndividualTrustABN.value.replace(/\\s+/g, ''));",
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
          id="txtAddIndividualTrustTFN"
          hidden="{{ ddlAddIndividualActingBehalfOfTrust.value!==true }}"
          label="Trust TFN"
          pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
          patternType="regex"
          placeholder="Enter value"
          required="{{ ddlAddIndividualActingBehalfOfTrust.selectedItem?.value }}"
        >
          <Event
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: "txtAddIndividualTrustTFN.setValue(txtAddIndividualTrustTFN.value.replace(/\\s+/g, ''));",
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
    <Select
      id="ddlAddIndividualSelfRepresenting"
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
      <Event
        enabled="{{ self.value }}"
        event="change"
        method="setValue"
        params={{ ordered: [{ value: "true" }] }}
        pluginId="anyChangesOnIndividualPage"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="ddlAddIndividualFIRBReceived"
      data=""
      emptyMessage="No options"
      hidden="{{ 
    (radioBuyerGuarantor.value === 'Existing' && txtForeignEntity.value === 'No') ||
    (radioBuyerGuarantor.value === 'New' && (!ddlAddForeignEntity.value))

}}
"
      itemMode="static"
      label="Has FIRB been received?"
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{sqlGetGFFiRBDetails.data?.Is_Blanket_FIRB_Approval[0]
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
      id="dateAddIndividualFIRBReceived"
      dateFormat="d/MM/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="false"
      hidden="{{ 

    (radioBuyerGuarantor.value === 'Existing' && txtForeignEntity.value === 'No') ||
    (radioBuyerGuarantor.value === 'New' && (!ddlAddForeignEntity.value))
  
}}
"
      iconBefore="bold/interface-calendar"
      label="Date FIRB received"
      labelWrap={true}
      required="{{ ddlAddIndividualFIRBReceived.value }}"
      value="{{ sqlGetGFFiRBDetails.data?.Date_Blanket_FIRB[0] }}"
    />
  </View>
</Container>
