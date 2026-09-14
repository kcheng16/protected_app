<ModalFrame
  id="searchUserModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  margin="4px 8px"
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Text id="modalTitle1" value="#### Search Users" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="562a093e"
        enabled=""
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="searchUserModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextInput
      id="userSearchString"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      formDataKey=""
      label="username
"
      marginType="normal"
      placeholder="Enter value"
      showClear={true}
    />
    <Table
      id="usersTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ findUser.data.data}}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount=""
      nextAfterCursor="{{  _ }}"
      overflowType="pagination"
      primaryKeyColumnId="27eab"
      serverPaginated={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      templatePageSize="8"
      toolbarPosition="bottom"
    >
      <Column
        id="27eab"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={145}
      />
      <Column
        id="29027"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="username"
        label="Username"
        placeholder="Enter value"
        position="center"
        size={204}
      />
      <Column
        id="bc55f"
        alignment="left"
        format="string"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        placeholder="Enter value"
        position="center"
        size={323}
        summaryAggregationMode="none"
      />
      <Column
        id="4fa92"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="display_name"
        label="Display name"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="4a6ce"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="first_name"
        label="First name"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="d1780"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="last_name"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="68d53"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="onboarding_country_code"
        label="Onboarding country code"
        placeholder="Select option"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="87a41"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="seller_early_payout_enabled"
        label="Seller early payout enabled"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="9beca"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="active"
        label="Active"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="b578c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="active_ts_actions_count"
        label="Active ts actions count"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="67d01"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="can_go_live"
        label="Can go live"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="69abd"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="978a9"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="home_address"
        label="Home address"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="58fb9"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="identity_verified"
        label="Identity verified"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="c8ce5"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="is_seller_application_approved"
        label="Is seller application approved"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="484ce"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="locale"
        label="Locale"
        placeholder="Select option"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="14504"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="payout_account_reference"
        label="Payout account reference"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="58685"
        alignment="left"
        format="phoneNumber"
        formatOptions={{
          showFormatting: true,
          showCountryCallingCode: true,
          restrictToCountry: false,
        }}
        groupAggregationMode="none"
        hidden="true"
        key="phone_number"
        label="Phone number"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="0914a"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="seller_approved"
        label="Seller approved"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="a92e3"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="vacation_mode"
        label="Vacation mode"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          id="9d6713a0"
          event="clickToolbar"
          method="exportData"
          pluginId="usersTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="a201a691"
          event="clickToolbar"
          method="refresh"
          pluginId="usersTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        id="5a6b544f"
        enabled={'{{  usernameSearchTarget.value === "buyer" }}'}
        event="clickRow"
        method="setValue"
        params={{ map: { value: "{{usersTable.selectedRow.username}}" } }}
        pluginId="textinputBuyer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="b33c9f1a"
        event="clickRow"
        method="hide"
        params={{}}
        pluginId="searchUserModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="1243bd39"
        enabled={'{{  usernameSearchTarget.value === "seller" }}'}
        event="clickRow"
        method="setValue"
        params={{ map: { value: "{{  currentRow.username }}" } }}
        pluginId="textinputSeller"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </Body>
  <Event
    id="32f32135"
    event="show"
    method="reset"
    params={{}}
    pluginId="findUser"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    id="aea30bc7"
    event="show"
    method="clearValue"
    params={{}}
    pluginId="userSearchString"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    id="9a47ee86"
    event="show"
    method="focus"
    params={{}}
    pluginId="userSearchString"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
