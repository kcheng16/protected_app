<Screen
  id="defaultPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Chart
      id="mixedChart1"
      barGap={0.4}
      barMode="group"
      chartType="mixed"
      legendPosition="none"
      selectedPoints="[]"
      showSecondYAxis={true}
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisLineWidth={1}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      xAxisTitleStandoff={20}
      yAxis2Grid={true}
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxis2TitleStandoff={20}
      yAxisGrid={true}
      yAxisLineWidth={1}
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
      yAxisTickFormatMode="gui"
      yAxisTitleStandoff={20}
    >
      <Series
        id="0"
        aggregationType="none"
        colorArray={{ array: [null] }}
        colorArrayDropDown={{ array: [null] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }} "
        lineDash="solid"
        lineShape="spline"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Line"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="line"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData={{
          array: [
            1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
            20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
          ],
        }}
        xDataMode="manual"
        yAxis="y2"
        yData={{
          array: [
            526.25, 526.8, 530.45, 529.2, 532.05, 532, 543.05, 543.2, 545.45,
            550.8, 548.25, 546.8, 563.45, 553.2, 564.05, 574, 564.05, 572.2,
            574.45, 586.8, 596.25, 574.8, 594.45, 583.2, 615.05, 620, 605.05,
            618.2, 604.45, 606.8,
          ],
        }}
        yDataMode="manual"
        zData={null}
        zDataMode="manual"
      />
      <Series
        id="1"
        aggregationType="none"
        colorArray={{ array: ["{{ theme.danger }}"] }}
        colorArrayDropDown={{ array: ["{{ theme.danger }}"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.danger }}"
        markerSize={4}
        markerSymbol="circle"
        name="Scatter"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="scatter"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData={{
          array: [
            1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
            20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
          ],
        }}
        xDataMode="manual"
        yAxis="y"
        yData={{
          array: [
            103.75, 94.2, 103.55, 93.8, 102.95, 91, 94.95, 93.8, 88.55, 93.2,
            103.75, 97.2, 80.55, 99.8, 88.95, 82, 83.95, 76.8, 90.55, 86.2,
            74.75, 96.2, 79.55, 93.8, 87.95, 84, 49.95, 75.8, 75.55, 63.2,
          ],
        }}
        yDataMode="manual"
        zData={null}
        zDataMode="manual"
      />
      <Series
        id="2"
        aggregationType="none"
        colorArray={{ array: ["#rgba(126, 132, 250, 0.3)"] }}
        colorArrayDropDown={{ array: ["#rgba(126, 132, 250, 0.3)"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="#rgba(126, 132, 250, 0.3)"
        markerSize={6}
        markerSymbol="circle"
        name="Bar"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData={{
          array: [
            1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
            20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
          ],
        }}
        xDataMode="manual"
        yAxis="y"
        yData={{
          array: [
            25.25, 25.8, 30.45, 32.2, 31.05, 37, 43.05, 38.2, 49.45, 46.8,
            46.25, 59.8, 56.45, 62.2, 58.05, 61, 79.05, 65.2, 76.45, 76.8,
            73.25, 94.8, 99.45, 109.2, 95.05, 108, 103.05, 96.2, 123.45, 103.8,
          ],
        }}
        yDataMode="manual"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
  </Frame>
</Screen>
