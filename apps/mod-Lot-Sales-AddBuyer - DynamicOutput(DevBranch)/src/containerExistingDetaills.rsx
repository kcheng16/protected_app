<Container
  id="containerExistingDetaills"
  disabled="false"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{ radioBuyerGuarantor.value == 'New'}}"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <View id="98c00" viewKey="View 1">
    <TextInput
      id="txtName"
      disabled=""
      label="Name"
      placeholder="Enter value"
      readOnly="true"
      style={{ ordered: [{ border: "canvas" }] }}
      value="{{ sqlGetSelectedIndividual.data?.Name[0] }}"
    />
    <TextInput
      id="txtPhone"
      disabled=""
      label="Phone"
      pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
      patternType="regex"
      placeholder="N/A"
      readOnly="true"
      style={{ ordered: [{ border: "canvas" }] }}
      value="{{ sqlGetSelectedIndividual.data?.Phone[0] || 'N/A'}}"
    />
    <TextInput
      id="txtMobile"
      disabled=""
      label="Mobile"
      pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
      patternType="regex"
      placeholder="N/A"
      readOnly="true"
      style={{ ordered: [{ border: "canvas" }] }}
      value="{{ sqlGetSelectedIndividual.data?.Mobile[0] || 'N/A' }}"
    />
    <TextInput
      id="txtFax"
      disabled=""
      label="Fax"
      pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
      patternType="regex"
      placeholder="N/A"
      readOnly="true"
      style={{ ordered: [{ border: "canvas" }] }}
      value="{{ sqlGetSelectedIndividual.data?.Fax[0] || 'N/A'}}"
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
      id="txtEmail"
      disabled=""
      label="Email"
      labelWrap={true}
      placeholder="N/A"
      readOnly="true"
      style={{ ordered: [{ border: "canvas" }] }}
      value="{{ sqlGetSelectedIndividual.data?.Email[0] || 'N/A'}}"
    />
    <Date
      id="dateDOB"
      dateFormat="d/MM/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled=""
      hidden="{{ ContactType.value == 'Guarantor' }}"
      iconBefore="bold/interface-calendar"
      label="Date of birth"
      labelWrap={true}
      readOnly="true"
      style={{ ordered: [{ border: "canvas" }] }}
      value="{{ sqlGetSelectedIndividual.data?.DOB[0] || 'N/A' }}"
    />
    <TextInput
      id="txtTFN"
      disabled=""
      hidden="{{ ContactType.value == 'Guarantor' }}"
      label="TFN"
      pattern="\b\d{8,9}\b"
      patternType="regex"
      placeholder="N/A"
      readOnly="true"
      style={{ ordered: [{ border: "canvas" }] }}
      value="{{ sqlGetSelectedIndividual.data?.TFN[0] || 'N/A'}}"
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
      id="txtForeignEntity"
      label="Foreign entity?"
      labelWrap={true}
      placeholder="N/A"
      readOnly="true"
      style={{ ordered: [{ border: "canvas" }] }}
      value="{{ sqlGetSelectedIndividual.data?.Is_ForeignEntity[0] || 'N/A'}}"
    />
  </View>
</Container>
