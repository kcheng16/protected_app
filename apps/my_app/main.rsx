<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Text id="text1" value="## shortlink added" verticalAlign="center" />
    <JSONExplorer id="jsonExplorer1" value="{{query1.data}}" />
  </Frame>
</App>
