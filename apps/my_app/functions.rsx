<GlobalFunctions>
  <RESTQuery
    id="query1"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="json"
    resourceDisplayName="my_resource"
    resourceName="60f11f15-e009-4920-94d0-daab76f27d19"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowRunId={null}
  />
</GlobalFunctions>
