<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="971385df-e530-4890-a622-c244d4781f91"
>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Wizard
      id="wizard1"
      currentStep="CmRDVl0ub"
      initialStep="CmRDVl0ub"
      steps={{ ordered: [{ CmRDVl0ub: { name: "Step 1", navButtons: [] } }] }}
    >
      <Container
        id="container1"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        padding="12px"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="containerTitle1"
            value="#### Container 1"
            verticalAlign="center"
          />
        </Header>
        <View id="00030" viewKey="View 1">
          <Container
            id="stack1"
            _flexWrap={true}
            _gap="0px"
            _type="stack"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            padding="12px"
            showBody={true}
          >
            <View id="00030" viewKey="View 1">
              <Tabs id="tabs1" itemMode="static" value="{{ self.values[0] }}">
                <Option id="00030" value="Tab 1" />
                <Option id="00031" value="Tab 2" />
                <Option id="00032" value="Tab 3" />
              </Tabs>
              <Button id="button1" text="Button" />
            </View>
          </Container>
        </View>
      </Container>
    </Wizard>
  </Frame>
</Screen>
