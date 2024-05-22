<App>
  <Include src="./functions.rsx" />
  <Table
    id="table1"
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ query1.data }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    enableSaveActions={true}
    primaryKeyColumnId="0cc77"
    showBorder={true}
    showFooter={true}
    showHeader={true}
    toolbarPosition="bottom"
  >
    <Column
      id="0cc77"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="id"
      label="ID"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="049d1"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      key="user"
      label="User"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="0ee6d"
      alignment="left"
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      key="role"
      label="Role"
      placeholder="Select option"
      position="center"
      size={100}
      summaryAggregationMode="none"
      valueOverride="{{ _.startCase(item) }}"
    />
    <Column
      id="cf55a"
      alignment="left"
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      key="enabled"
      label="Enabled"
      placeholder="Select option"
      position="center"
      size={100}
      summaryAggregationMode="none"
      valueOverride="{{ _.startCase(item) }}"
    />
    <Column
      id="5967a"
      alignment="left"
      format="datetime"
      groupAggregationMode="none"
      key="created_at"
      label="Created at"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="b3c7a"
      alignment="left"
      cellTooltipMode="overflow"
      format="tags"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      key="teams"
      label="Teams"
      placeholder="Select options"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="18bab"
      alignment="left"
      format="link"
      formatOptions={{ showUnderline: "hover" }}
      groupAggregationMode="none"
      key="website"
      label="Website"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="94c8b"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      key="bio"
      label="Bio"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
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
        event="clickToolbar"
        method="exportData"
        pluginId="table1"
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
        event="clickToolbar"
        method="refresh"
        pluginId="table1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToolbarButton>
  </Table>
</App>
