<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
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
              526.25, 525.8, 531.45, 531.2, 533.05, 532, 541.05, 543.2, 539.45,
              552.8, 545.25, 550.8, 559.45, 555.2, 563.05, 563, 561.05, 577.2,
              572.45, 586.8, 589.25, 586.8, 587.45, 583.2, 587.05, 613, 594.05,
              620.2, 603.45, 636.8,
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
              99.75, 94.2, 96.55, 96.8, 94.95, 99, 95.95, 101.8, 105.55, 98.2,
              84.75, 86.2, 87.55, 83.8, 95.95, 96, 88.95, 70.8, 79.55, 71.2,
              90.75, 92.2, 68.55, 55.8, 56.95, 74, 69.95, 65.8, 67.55, 42.2,
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
              22.25, 26.8, 25.45, 27.2, 33.05, 35, 35.05, 40.2, 49.45, 43.8,
              44.25, 56.8, 55.45, 67.2, 61.05, 58, 70.05, 78.2, 78.45, 91.8,
              94.25, 77.8, 90.45, 86.2, 114.05, 98, 118.05, 101.2, 127.45,
              125.8,
            ],
          }}
          yDataMode="manual"
          zData={null}
          zDataMode="manual"
        />
      </Chart>
    </ModuleContainerWidget>
  </Frame>
</App>
