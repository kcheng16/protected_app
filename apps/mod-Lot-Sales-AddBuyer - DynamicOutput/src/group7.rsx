<Container
  id="group7"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
>
  <View id="6ace6" viewKey="View 1">
    <Text
      id="label_BusinessStreetAddress"
      margin="5px 0px"
      value="**Street address**"
      verticalAlign="center"
    />
    <Text
      id="label_BusinessPostalAddress"
      margin="5px 0px"
      value="**Postal address**"
      verticalAlign="center"
    />
    <Checkbox
      id="checkSameAsStreetAddress"
      label="Same as street address"
      labelWidth="100"
      value="0"
    >
      <Event
        enabled="{{ checkSameAsStreetAddress.value == true }}"
        event="change"
        method="setDisabled"
        params={{ ordered: [] }}
        pluginId="containerPostalSearch"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ checkSameAsStreetAddress.value == false }}"
        event="change"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="containerPostalSearch"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="jsSetSameAsStreetAddress"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <TextInput
      id="txtAddStreetAddress"
      label=""
      labelPosition="top"
      labelWrap={true}
      placeholder="Search address"
    >
      <Event
        event="change"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="containerStreetSearch"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="qryGetStreetAddress"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="blur"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="containerStreetSearch"
        type="widget"
        waitMs="500"
        waitType="debounce"
      />
      <Event
        enabled="{{ checkSameAsStreetAddress.value }}"
        event="change"
        method="setValue"
        params={{ ordered: [{ value: "{{ self.value }}" }] }}
        pluginId="txtAddPostalAddress"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="txtAddPostalAddress"
      label=""
      labelPosition="top"
      labelWrap={true}
      placeholder="Search address"
    >
      <Event
        event="change"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="containerPostalSearch"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="qryGetPostalAddress"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
  </View>
</Container>
