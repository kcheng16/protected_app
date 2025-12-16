<Container
  id="containerNewDetaills"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{ radioBuyerGuarantor.value == 'Existing'}}"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <Header>
    <Text
      id="containerTitle5"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="98c00" viewKey="View 1">
    <Container
      id="group3"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="805be" viewKey="View 1">
        <Container
          id="group6"
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
              id="ddlAddTitle"
              emptyMessage="No options"
              itemMode="static"
              label="Title"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
              value="{{ self.id }}"
            >
              <Option id="01239" label="Mr" value="Mr" />
              <Option id="6486d" label="Mrs" value="Mrs" />
              <Option id="b63f9" label="Ms" value="Ms" />
              <Option
                id="83c49"
                disabled={false}
                hidden={false}
                label="Miss"
                value="Miss"
              />
              <Option id="dd4f6" disabled={false} hidden={false} value="Dr" />
              <Option id="43c75" disabled={false} hidden={false} value="Prof" />
              <Option id="4158e" disabled={false} hidden={false} value="Rev" />
              <Option id="7a469" disabled={false} hidden={false} value="Hon" />
              <Option id="10942" disabled={false} hidden={false} value="Sir" />
              <Option id="4c9f1" disabled={false} hidden={false} value="Lady" />
            </Select>
            <TextInput
              id="txtAddGivenNames"
              disabled=""
              label="Given names"
              labelWrap={true}
              placeholder="Enter value"
              required={true}
            >
              <Event
                event="blur"
                method="run"
                params={{
                  ordered: [
                    {
                      src: "txtAddGivenNames.setValue(txtAddGivenNames.value.trim());",
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
              id="txtAddSurname"
              disabled=""
              label="Surname"
              labelWrap={true}
              placeholder="Enter value"
              required={true}
            >
              <Event
                event="blur"
                method="run"
                params={{
                  ordered: [
                    {
                      src: "txtAddSurname.setValue(txtAddSurname.value.trim());",
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
      </View>
    </Container>
    <Container
      id="group4"
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
        <TextInput
          id="txtAddPhone"
          disabled=""
          label="Phone"
          pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
          patternType="regex"
          placeholder="Enter value"
        >
          <Event
            enabled="{{ self.value }}"
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: "txtAddPhone.setValue(txtAddPhone.value.replace(/\\s+/g, ''));",
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
          id="txtAddMobile"
          disabled=""
          label="Mobile"
          pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
          patternType="regex"
          placeholder="Enter value"
        >
          <Event
            enabled="{{ self.value }}"
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: "txtAddMobile.setValue(txtAddMobile.value.replace(/\\s+/g, ''));",
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
          id="txtAddFax"
          disabled=""
          label="Fax"
          pattern="^(\+?\d{1,3}[-.\s]?)?(\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$"
          patternType="regex"
          placeholder="Enter value"
        >
          <Event
            enabled="{{ self.value }}"
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: "txtAddFax.setValue(txtAddFax.value.replace(/\\s+/g, ''));",
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
      id="group5"
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
        <TextInput
          id="txtAddEmail"
          disabled=""
          label="Email"
          labelWidth="12"
          labelWrap={true}
          placeholder="Enter value"
          required={true}
        >
          <Event
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: "txtAddEmail.setValue(txtAddEmail.value.replace(/\\s+/g, ''));",
                },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </TextInput>
        <Date
          id="dateAddDOB"
          dateFormat="d/MM/yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          disabled=""
          hidden=""
          iconBefore="bold/interface-calendar"
          label="Date of birth"
          labelWrap={true}
          required={true}
        />
      </View>
    </Container>
    <Container
      id="group9"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="a6985" viewKey="View 1">
        <Select
          id="ddlAddForeignEntity"
          data=""
          emptyMessage="No options"
          hidden=""
          itemMode="static"
          label="Foreign entity?"
          labelWrap={true}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
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
          id="txtAddTFN"
          disabled=""
          hidden=""
          label="TFN"
          pattern="\b\d{8,9}\b"
          patternType="regex"
          placeholder="Enter value"
        >
          <Event
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: "txtAddTFN.setValue(txtAddTFN.value.replace(/\\s+/g, ''));",
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
  </View>
</Container>
