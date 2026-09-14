<GlobalFunctions>
  <Function
    id="buyerSearchTransformer"
    funcBody={include("./lib/buyerSearchTransformer.js", "string")}
    runBehavior="debounced"
  />
  <RESTQuery
    id="findUser"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={
      'users?filter={{JSON.stringify({q: userSearchString.value})}}&page_number={{usersTable.pagination.offset}}&page_size={{usersTable.pagination.pageSize}}&sort_direction={{usersTable.sortedColumn ? usersTable.sortedDesc ? "DESC" : "ASC" : "DESC"}}&sort_by={{usersTable.sortedColumn || "id"}}'
    }
    queryDisabled="{{ userSearchString.value.length < 3  }}"
    queryFailureConditions="[]"
    resourceDisplayName="Internal API"
    resourceName="81e380e4-c94e-42de-9100-f4f5797607bd"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="idSearchTransformer"
    funcBody={include("./lib/idSearchTransformer.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="listingIdSearchTransformer"
    funcBody={include("./lib/listingIdSearchTransformer.js", "string")}
    runBehavior="debounced"
  />
  <RESTQuery
    id="queryRecords"
    cookies="[]"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers="[]"
    isMultiplayerEdited={false}
    playgroundQuerySaveId={0}
    query={
      'orders?filter={{ searchFilterTransformer.value }}&page_number={{tableRecords.selectedPageIndex}}&page_size={{tableRecords.pageSize}}&sort_by={{queryRecordsSortByInput.value || "id"}}&sort_direction={{tableRecords.sortedColumn ? tableRecords.sortedDesc ? "DESC" : "ASC" : "DESC"}}'
    }
    queryThrottleTime="1000"
    resourceDisplayName="Internal API"
    resourceName="81e380e4-c94e-42de-9100-f4f5797607bd"
    showSuccessConfetti={false}
    showSuccessToaster={false}
    transformer=""
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="queryRecordsSortByInput"
    funcBody={include("./lib/queryRecordsSortByInput.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="queryRecordsTransformer"
    funcBody={include("./lib/queryRecordsTransformer.js", "string")}
    runBehavior="debounced"
  />
  <GoogleSheetsQuery
    id="queryRefundsDashboardSheet"
    cacheKeyTtl="600"
    enableCaching={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceDisplayName="Google Sheets Connector"
    resourceName="2fdedabc-d28f-416f-9a5d-5bc25a021299"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    sheetName="RefundLog"
    sheetRange="Refund Log!O:S"
    showSuccessToaster={false}
    spreadsheetId="17n75_rMHo2DvK7n_FQPnKk98vYJiT1gyqNOaqRfTwNA"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    useSheetRange={true}
    valueFormatting="unformatted"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="searchFilterTransformer"
    funcBody={include("./lib/searchFilterTransformer.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="sellerSearchTransformer"
    funcBody={include("./lib/sellerSearchTransformer.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="shipmentIdSearchTransformer"
    funcBody={include("./lib/shipmentIdSearchTransformer.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="totalCentsSearchTransformer"
    funcBody={include("./lib/totalCentsSearchTransformer.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="trackingCodeSearchTransformer"
    funcBody={include("./lib/trackingCodeSearchTransformer.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="uuidSearchTransformer"
    funcBody={include("./lib/uuidSearchTransformer.js", "string")}
    runBehavior="debounced"
  />
  <State id="usernameSearchTarget" />
</GlobalFunctions>
