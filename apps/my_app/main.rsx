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
    <JSONExplorer id="jsonExplorer1" value="{{query1.data}}" />
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      src="https://picsum.photos/id/1025/800/600"
    />
  </Frame>
</App>
