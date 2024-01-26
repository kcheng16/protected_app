<MobileApp>
  <Include src="./src/detailsScreen.rsx" />
  <Include src="./src/screen1.rsx" />
  <Include src="./src/screen2.rsx" />
  <TabScreen
    id="tabscreen"
    items={[
      {
        screen: "screen1",
        icon: "bold/interface-text-formatting-list-bullets",
      },
      { screen: "screen2", icon: "bold/interface-user-single" },
    ]}
  />
</MobileApp>
