<App>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Text id="text1" value="# This is my new module" verticalAlign="center" />
      <PlotlyChart
        id="chart1"
        dataseries={{
          ordered: [
            {
              0: {
                ordered: [
                  { label: "sales" },
                  {
                    datasource:
                      '{{formatDataAsObject([{\n  "region" : "East",\n  "sales": 3700,\n  "spend": 4000\n}, {\n  "region" : "West",\n  "sales": 6000,\n  "spend": 3895\n}, {\n  "region" : "South",\n  "sales": 4500,\n  "spend": 5500\n}, {\n  "region" : "Central",\n  "sales": 5230,\n  "spend": 4200\n}])[\'sales\']}}',
                  },
                  { chartType: null },
                  { aggregationType: "sum" },
                  { color: "#033663" },
                  { colors: { ordered: [] } },
                  { visible: true },
                  {
                    hovertemplate:
                      "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                  },
                ],
              },
            },
            {
              1: {
                ordered: [
                  { label: "spend" },
                  {
                    datasource:
                      '{{formatDataAsObject([{\n  "region" : "East",\n  "sales": 3700,\n  "spend": 4000\n}, {\n  "region" : "West",\n  "sales": 6000,\n  "spend": 3895\n}, {\n  "region" : "South",\n  "sales": 4500,\n  "spend": 5500\n}, {\n  "region" : "Central",\n  "sales": 5230,\n  "spend": 4200\n}])[\'spend\']}}',
                  },
                  { chartType: null },
                  { aggregationType: "sum" },
                  { color: "#247BC7" },
                  { colors: { ordered: [] } },
                  { visible: true },
                  {
                    hovertemplate:
                      "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                  },
                ],
              },
            },
          ],
        }}
        datasourceDataType="array"
        datasourceInputMode="javascript"
        datasourceJS={
          '[{\n  "region" : "East",\n  "sales": 3700,\n  "spend": 4000\n}, {\n  "region" : "West",\n  "sales": 6000,\n  "spend": 3895\n}, {\n  "region" : "South",\n  "sales": 4500,\n  "spend": 5500\n}, {\n  "region" : "Central",\n  "sales": 5230,\n  "spend": 4200\n}]'
        }
        skipDatasourceUpdate={true}
        xAxis={
          '{{formatDataAsObject([{\n  "region" : "East",\n  "sales": 3700,\n  "spend": 4000\n}, {\n  "region" : "West",\n  "sales": 6000,\n  "spend": 3895\n}, {\n  "region" : "South",\n  "sales": 4500,\n  "spend": 5500\n}, {\n  "region" : "Central",\n  "sales": 5230,\n  "spend": 4200\n}]).region}}'
        }
        xAxisDropdown="region"
      />
    </ModuleContainerWidget>
  </Frame>
</App>
