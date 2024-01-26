<Screen
  id="detailsScreen"
  padding={{ top: 0, bottom: 0, left: 12, right: 12 }}
  title="Details"
>
  <Image
    id="image1"
    cornerType="square"
    ratio={1}
    src="{{collectionView1.selectedItem.image}}"
  />
  <KeyValue
    id="keyValue1"
    _rowKeysFormatted={{ email: "Email:", sales: "Sales:" }}
    allowTextWrapping="true"
    data="{{ collectionView1.selectedItem }}"
    header="{{ collectionView1.selectedItem.name }}"
    rows={["id", "name", "email", "sales", "image"]}
    rowVisibility={{
      id: false,
      name: false,
      email: true,
      sales: true,
      image: false,
    }}
    showSeparator="true"
    valueWidth="75%"
  />
</Screen>
