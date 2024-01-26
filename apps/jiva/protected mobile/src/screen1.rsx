<Screen id="screen1" title="Screen 1">
  <CollectionView
    id="collectionView1"
    _paginatedData={
      '[{\n"id": 1,\n"name": "Hanson Deck",\n"email": "hanson@deck.com",\n"sales": 37,\n"image": "https://picsum.photos/id/453/800/800"\n}, {\n"id": 2,\n"name": "Sue Shei",\n"email": "sueshei@example.com",\n"sales": 550,\n"image": "https://picsum.photos/id/1011/800/800"\n}, {\n"id": 3,\n"name": "Jason Response",\n"email": "jason@response.com",\n"sales": 55,\n"image": "https://picsum.photos/id/22/800/800"\n}, {\n"id": 4,\n"name": "Cher Actor",\n"email": "cher@example.com",\n"sales": 424,\n"image": "https://picsum.photos/id/823/800/800"\n}, {\n"id": 5,\n"name": "Erica Widget",\n"email": "erica@widget.org",\n"sales": 243,\n"image": "https://picsum.photos/id/1005/800/800"\n}]'
    }
    bodyByIndex="{{item.sales}}"
    data={
      '[{\n"id": 1,\n"name": "Hanson Deck",\n"email": "hanson@deck.com",\n"sales": 37,\n"image": "https://picsum.photos/id/453/800/800"\n}, {\n"id": 2,\n"name": "Sue Shei",\n"email": "sueshei@example.com",\n"sales": 550,\n"image": "https://picsum.photos/id/1011/800/800"\n}, {\n"id": 3,\n"name": "Jason Response",\n"email": "jason@response.com",\n"sales": 55,\n"image": "https://picsum.photos/id/22/800/800"\n}, {\n"id": 4,\n"name": "Cher Actor",\n"email": "cher@example.com",\n"sales": 424,\n"image": "https://picsum.photos/id/823/800/800"\n}, {\n"id": 5,\n"name": "Erica Widget",\n"email": "erica@widget.org",\n"sales": 243,\n"image": "https://picsum.photos/id/1005/800/800"\n}]'
    }
    prefixIconByIndex="bold/interface-user-single"
    prefixIconColorByIndex=""
    prefixImageFitByIndex="cover"
    prefixImageShapeByIndex="square"
    prefixImageSizeByIndex="1 to 1"
    prefixImageSourceByIndex="{{item.image}}"
    prefixTypeByIndex="image"
    showSeparator={true}
    subtitleByIndex="{{item.email}}"
    subtitleLengthByIndex={2}
    suffixIconByIndex="bold/interface-arrows-button-right"
    suffixTextByIndex="text"
    suffixTypeByIndex="none"
    suffixValueByIndex="false"
    titleByIndex="{{item.name}}"
  >
    <Event
      event="press"
      method="navigateTo"
      params={{ map: { screenPluginId: "detailsScreen" } }}
      type="navigator"
    />
  </CollectionView>
</Screen>
