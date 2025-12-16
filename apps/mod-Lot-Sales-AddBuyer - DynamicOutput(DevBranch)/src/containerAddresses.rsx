<Container
  id="containerAddresses"
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
      id="containerTitle6"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="49ce7" viewKey="View 1">
    <Include src="./group7.rsx" />
    <Container
      id="containerStreetSearch"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="true"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="8483a" viewKey="View 1">
        <Table
          id="tableStreetSearchResults"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ qryGetStreetAddress.data.predictions }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="ba6a3"
          rowHeight="small"
          showBorder={true}
          toolbarPosition="bottom"
        >
          <Column
            id="ba6a3"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            key="description"
            label="Description"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a017e"
            alignment="left"
            cellTooltipMode="overflow"
            format="tags"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="matched_substrings"
            label="Matched substrings"
            placeholder="Select options"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="d749f"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="place_id"
            label="Place ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="1ae7b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="reference"
            label="Reference"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="9ac22"
            alignment="left"
            format="json"
            groupAggregationMode="none"
            hidden="true"
            key="structured_formatting"
            label="Structured formatting"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="434ea"
            alignment="left"
            cellTooltipMode="overflow"
            format="tags"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="terms"
            label="Terms"
            placeholder="Select options"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a0f80"
            alignment="left"
            cellTooltipMode="overflow"
            format="tags"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="types"
            label="Types"
            placeholder="Select options"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Event
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ tableStreetSearchResults.selectedRow.description }}",
                },
              ],
            }}
            pluginId="txtAddStreetAddress"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetStreetAddress.data.predictions[tableStreetSearchResults.selectedDataIndex].structured_formatting.main_text }}",
                },
              ],
            }}
            pluginId="txtAddStreetAddress1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="setHidden"
            params={{ ordered: [] }}
            pluginId="containerStreetSearch"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetStreetAddress.data.predictions[tableStreetSearchResults.selectedDataIndex].structured_formatting.secondary_text }}",
                },
              ],
            }}
            pluginId="txtAddStreetAddress2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetStreetAddress.data.predictions[tableStreetSearchResults.selectedDataIndex].terms[2].value }}",
                },
              ],
            }}
            pluginId="txtAddStreetSuburb"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetStreetAddress.data.predictions[tableStreetSearchResults.selectedDataIndex].terms[3].value }}",
                },
              ],
            }}
            pluginId="txtAddStreetState"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetStreetAddress.data.predictions[tableStreetSearchResults.selectedDataIndex].place_id }}",
                },
              ],
            }}
            pluginId="txtAddStreetPlaceID"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetStreetAddress.data.predictions[tableStreetSearchResults.selectedDataIndex].terms[4].value }}",
                },
              ],
            }}
            pluginId="txtAddStreetCountry"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetStreetPostcode.data.result.address_components[6].short_name }}",
                },
              ],
            }}
            pluginId="txtAddStreetPostcode"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="jsSetSameAsStreetAddress"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Container
      id="containerPostalSearch"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="1"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="8483a" viewKey="View 1">
        <Table
          id="tablePostalSearchResults"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ qryGetPostalAddress.data.predictions }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="d749f"
          rowHeight="small"
          showBorder={true}
          toolbarPosition="bottom"
        >
          <Column
            id="ba6a3"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            hidden="false"
            key="description"
            label="Description"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a017e"
            alignment="left"
            cellTooltipMode="overflow"
            format="tags"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="matched_substrings"
            label="Matched substrings"
            placeholder="Select options"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="d749f"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="place_id"
            label="Place ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="1ae7b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="reference"
            label="Reference"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="9ac22"
            alignment="left"
            format="json"
            groupAggregationMode="none"
            hidden="true"
            key="structured_formatting"
            label="Structured formatting"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="434ea"
            alignment="left"
            cellTooltipMode="overflow"
            format="tags"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="terms"
            label="Terms"
            placeholder="Select options"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a0f80"
            alignment="left"
            cellTooltipMode="overflow"
            format="tags"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="types"
            label="Types"
            placeholder="Select options"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Event
            enabled=""
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ \n\n  tablePostalSearchResults.selectedRow.description\n\n}}",
                },
              ],
            }}
            pluginId="txtAddPostalAddress"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ tablePostalSearchResults.selectedRow.structured_formatting.main_text }}",
                },
              ],
            }}
            pluginId="txtAddPostalAddress1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetPostalAddress.data.predictions[tablePostalSearchResults.selectedDataIndex].structured_formatting.secondary_text }}",
                },
              ],
            }}
            pluginId="txtAddPostalAddress2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetPostalAddress.data.predictions[tablePostalSearchResults.selectedDataIndex].terms[2].value }}",
                },
              ],
            }}
            pluginId="txtAddPostalSuburb"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetPostalAddress.data.predictions[tablePostalSearchResults.selectedDataIndex].terms[3].value }}",
                },
              ],
            }}
            pluginId="txtAddPostalState"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetPostalAddress.data.predictions[tablePostalSearchResults.selectedDataIndex].place_id}}",
                },
              ],
            }}
            pluginId="txtAddPostalPlaceID"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetPostalAddress.data.predictions[tablePostalSearchResults.selectedDataIndex].terms[4].value }}",
                },
              ],
            }}
            pluginId="txtAddPostalCountry"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ qryGetPostalPostcode.data.result.address_components[6].short_name }}",
                },
              ],
            }}
            pluginId="txtAddPostalPostcode"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickRow"
            method="setHidden"
            params={{ ordered: [] }}
            pluginId="containerPostalSearch"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <TextInput
      id="txtAddStreetAddress1"
      disabled=""
      label="Address 1"
      labelWidth="16"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
    >
      <Event
        enabled="{{ checkSameAsStreetAddress.value }}"
        event="change"
        method="setValue"
        params={{ ordered: [{ value: "{{ self.value }}" }] }}
        pluginId="txtAddPostalAddress1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="txtAddPostalAddress1"
      disabled=""
      label="Address 1"
      labelWidth="16"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
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
      id="txtAddStreetAddress2"
      disabled=""
      label="Address 2"
      labelWidth="16"
      labelWrap={true}
      placeholder="Enter value"
    >
      <Event
        enabled="{{ checkSameAsStreetAddress.value }}"
        event="change"
        method="setValue"
        params={{ ordered: [{ value: "{{ self.value}}" }] }}
        pluginId="txtAddPostalAddress2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="txtAddPostalAddress2"
      disabled=""
      label="Address 2"
      labelWidth="16"
      labelWrap={true}
      placeholder="Enter value"
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
      id="txtAddStreetSuburb"
      disabled=""
      label="Suburb"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
    >
      <Event
        enabled="{{ checkSameAsStreetAddress.value }}"
        event="change"
        method="setValue"
        params={{ ordered: [{ value: "{{ self.value }}" }] }}
        pluginId="txtAddPostalSuburb"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="txtAddStreetState"
      disabled=""
      label="State"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
    >
      <Event
        enabled="{{ checkSameAsStreetAddress.value }}"
        event="change"
        method="setValue"
        params={{ ordered: [{ value: "{{  self.value}}" }] }}
        pluginId="txtAddPostalState"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="txtAddPostalSuburb"
      disabled=""
      label="Suburb"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="txtAddPostalState"
      disabled=""
      label="State"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="txtAddStreetPostcode"
      disabled=""
      label="Postcode"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
    >
      <Event
        enabled="{{ checkSameAsStreetAddress.value }}"
        event="change"
        method="setValue"
        params={{ ordered: [{ value: "{{  self.value}}" }] }}
        pluginId="txtAddPostalPostcode"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="txtAddStreetCountry"
      disabled=""
      label="Country"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
    >
      <Event
        enabled="{{ checkSameAsStreetAddress.value }}"
        event="change"
        method="setValue"
        params={{ ordered: [{ value: "{{ self.value }}" }] }}
        pluginId="txtAddPostalCountry"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="txtAddPostalPostcode"
      disabled=""
      label="Postcode"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="txtAddPostalCountry"
      disabled=""
      label="Country"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="txtContactIndividualID"
      hidden="true"
      label="txtContactIndividualID"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="txtAddPostalPlaceID"
      hidden="1"
      label=""
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="txtAddStreetPlaceID"
      hidden="true"
      label=""
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="txtPostalAddressID"
      hidden="true"
      label=""
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="txtStreetAddressID"
      hidden="true"
      label=""
      labelPosition="top"
      placeholder="Enter value"
    />
  </View>
</Container>
