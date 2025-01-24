<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={false}
    style={{ ordered: [{ canvas: "#ffffffff" }] }}
    type="main"
  >
    <Include src="./src/tabbedContainer.rsx" />
  </Frame>
</App>
