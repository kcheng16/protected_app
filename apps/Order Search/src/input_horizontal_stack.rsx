<Container
  id="input_horizontal_stack"
  _gap="4px"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
  style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
>
  <View id="00030" viewKey="View 1">
    <Container
      id="sellers_vertical_stack"
      _direction="vertical"
      _flexWrap={true}
      _gap="2px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
    >
      <View id="00030" viewKey="View 1">
        <TextInput
          id="textinputSeller"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          disabled=""
          formDataKey=""
          hidden={null}
          label="Seller username OR email"
          labelPosition="top"
          labelWrap={true}
          maintainSpaceWhenHidden={null}
          margin="0"
          marginType="normal"
          placeholder="mattculli"
          showClear={true}
          showInEditor={null}
        />
        <Button
          id="buttonShowSearchSellers"
          heightType="auto"
          margin="0"
          text="Search Sellers"
        >
          <Event
            id="6677dda9"
            event="click"
            method="setValue"
            params={{ map: { value: "seller" } }}
            pluginId="usernameSearchTarget"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="567455f2"
            event="click"
            method="show"
            params={{}}
            pluginId="searchUserModal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Container
      id="buyers_vertical_stack"
      _direction="vertical"
      _flexWrap={true}
      _gap="2px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
    >
      <View id="00030" viewKey="View 1">
        <TextInput
          id="textinputBuyer"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          disabled=""
          formDataKey=""
          hidden={null}
          label="Buyer username OR email"
          labelPosition="top"
          labelWrap={true}
          maintainSpaceWhenHidden={null}
          margin="0"
          marginType="normal"
          placeholder="whatnotsunny"
          showClear={true}
          showInEditor={null}
        />
        <Button
          id="buttonShowSearchBuyers"
          heightType="auto"
          margin="0"
          text="Search Buyers"
        >
          <Event
            id="8afd1f84"
            event="click"
            method="setValue"
            params={{ map: { value: "buyer" } }}
            pluginId="usernameSearchTarget"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="b9d026da"
            event="click"
            method="show"
            params={{}}
            pluginId="searchUserModal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <TextArea
      id="textInputUUIDs"
      autoResize={true}
      inputTooltip="Most delimiters supported including spaces. "
      label="UUID(s)"
      labelPosition="top"
      margin="0"
      minLines="4"
      placeholder="d6FjNS8GqzeTtXyD7T27h3, 52Srzi5nrH9yyL32cgiTSW, ..."
    />
    <TextInput
      id="textinputListingId"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      disabled=""
      formDataKey=""
      hidden={null}
      label="Listing ID"
      labelPosition="top"
      labelWrap={true}
      maintainSpaceWhenHidden={null}
      margin="0"
      marginType="normal"
      placeholder="13889182"
      showClear={true}
      showInEditor={null}
    />
    <TextInput
      id="textinputShipmentId"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      disabled=""
      formDataKey=""
      hidden={null}
      label="Shipment ID"
      labelPosition="top"
      labelWrap={true}
      maintainSpaceWhenHidden={null}
      margin="0"
      marginType="normal"
      placeholder="7045092"
      showClear={true}
      showInEditor={null}
    />
    <TextInput
      id="textinputTrackingCode"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      disabled=""
      formDataKey=""
      hidden={null}
      label="Tracking Code"
      labelPosition="top"
      labelWrap={true}
      maintainSpaceWhenHidden={null}
      margin="0"
      marginType="normal"
      placeholder="92055903056074000000476912"
      showClear={true}
      showInEditor={null}
    />
    <TextInput
      id="textInputTotalCents"
      label="Total Cents"
      labelPosition="top"
      margin="0"
      marginType="normal"
      placeholder="2000"
    />
    <TextArea
      id="textInputIDs"
      autoResize={true}
      inputTooltip="Most delimiters supported including spaces. "
      label="Order ID(s)"
      labelPosition="top"
      margin="0"
      minLines="4"
      placeholder="1579554, 1442004, ..."
    />
  </View>
</Container>
