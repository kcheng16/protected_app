<App>
  <Include src="./functions.rsx" />
  <UrlFragments
    id="$urlFragments"
    value={{
      ordered: [
        { id: "{{ idSearchTransformer.value }}" },
        { uuid: "{{ uuidSearchTransformer.value }}" },
        { shipment_id: "{{ shipmentIdSearchTransformer.value }}" },
        { listing_id: "{{ listingIdSearchTransformer.value }}" },
        { buyer: "{{ buyerSearchTransformer.value }}" },
        { seller: "{{ sellerSearchTransformer.value }}" },
        { tracking_code: "{{ trackingCodeSearchTransformer.value }}" },
      ],
    }}
  />
  <Include src="./src/searchUserModal.rsx" />
  <Frame
    id="$main"
    enableFullBleed={true}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Container
      id="main_vertical_stack"
      _direction="vertical"
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      overflowType="hidden"
      padding="0"
      showBody={true}
    >
      <View id="00030" viewKey="View 1">
        <Include src="./src/input_horizontal_stack.rsx" />
        <TableLegacy
          id="tableRecords"
          _columns={[
            "id",
            "uuid",
            "shipment_id",
            "tracking_code",
            "buyer",
            "Custom Column 1",
            "Custom Column 2",
            "created_at",
            "status",
            "subtotal_cents",
            "shipping_price_cents",
            "total_cents",
            "shipping_address",
            "listing_id",
            "Custom Column 3",
            "style",
            "currency",
            "currency_symbol",
            "has_quality_listing",
            "tracking_url",
            "channel_reference",
            "order_item",
            "seller",
            "sales_channel",
          ]}
          _columnSummaryTypes={{
            ordered: [
              { "Custom Column 2": "" },
              { id: "" },
              { tracking_code: "" },
              { listing_id: "" },
              { shipment_id: "" },
              { user: "" },
              { "Custom Column 1": "" },
              { buyer: "" },
            ],
          }}
          _columnSummaryValues={{
            ordered: [
              { "Custom Column 2": "" },
              { id: "" },
              { tracking_code: "" },
              { listing_id: "" },
              { shipment_id: "" },
              { user: "" },
              { "Custom Column 1": "" },
              { buyer: "" },
            ],
          }}
          _columnVisibility={{
            ordered: [
              { classifier_values: false },
              { items: true },
              { listings_activated: false },
              { license: true },
              { shipping_profile_id: false },
              { brand_name: true },
              { weight_scale: false },
              { shipping_address: true },
              { shipping_price_cents: true },
              { order_item: false },
              { credit_cents: true },
              { release_date: false },
              { width: true },
              { length: true },
              { exclusivity: false },
              { height: true },
              { tracking_url: false },
              { upc: true },
              { is_quick_add_product: false },
              { created_at: true },
              { name: true },
              { slug: false },
              { user: true },
              { sales: true },
              { category_name: true },
              { franchise_name: true },
              { packing_depth: false },
              { sales_channel: true },
              { subtotal_cents: true },
              { packing_width: false },
              { total_cents: true },
              { dimension_scale: true },
              { style: true },
              { master_product: false },
              { is_released: false },
              { market_price_cents: true },
              { shipping_profile_name: true },
              { status: true },
              { brand_id: false },
              { buyer: true },
              { packing_scale: false },
              { item_number: false },
              { "Custom Column 1": true },
              { "Custom Column 2": true },
              { updated_at: false },
              { thirty_day_sale_count: false },
              { shipping_profile: true },
              { images: true },
              { tags: false },
              { total_page_views: false },
              { is_chase: false },
              { product_profile: true },
              { listing_price_cents: true },
              { product_profile_type_id: false },
              { product_profiles: true },
              { id: true },
              { image: true },
              { whitelist_approval: false },
              { uuid: true },
              { email: true },
              { category_id: false },
              { box_number: true },
              { franchise_id: false },
              { sku: false },
              { is_multipack: false },
              { packing_height: false },
              { category: true },
              { pricing_sources: false },
              { children: false },
              { seller: false },
              { weight_amount: false },
            ],
          }}
          _compatibilityMode={false}
          _unfilteredSelectedIndex=""
          actionButtons={[
            {
              ordered: [
                { actionButtonText: "Open" },
                { actionButtonType: "openInternalUrl" },
                { actionButtonQuery: "" },
                {
                  actionButtonInternalUrlPath:
                    "d4ee58e0-ca19-11f0-8de6-87c38a8b8b13",
                },
                {
                  actionButtonInternalUrlQuery:
                    '"[{\\"key\\":\\"id\\",\\"value\\":\\"{{currentRow.id}}\\"}]"',
                },
                { actionButtonUrl: "" },
                { actionButtonNewWindow: true },
                { actionButtonDisabled: "" },
              ],
            },
          ]}
          applyDynamicSettingsToColumnOrder={false}
          calculatedColumns={[
            "Custom Column 1",
            "Custom Column 2",
            "Custom Column 3",
          ]}
          columnAlignment={{
            ordered: [
              { shipment_id: "left" },
              { items: "left" },
              { shipping_price_cents: "right" },
              { created_at: "right" },
              { user: "left" },
              { subtotal_cents: "right" },
              { total_cents: "right" },
              { market_price_cents: "right" },
              { buyer: "left" },
              { tracking_code: "left" },
              { listing_id: "left" },
              { "Custom Column 1": "left" },
              { "Custom Column 2": "left" },
              { images: "center" },
              { "Custom Column 4": "left" },
              { listing_price_cents: "right" },
              { "Custom Column 5": "left" },
              { id: "left" },
              { image: "center" },
            ],
          }}
          columnAllowOverflow={{
            ordered: [{ images: false }, { category_name: false }],
          }}
          columnColors={{
            classifier_values: "",
            shipment_id: "",
            items: "",
            listings_activated: "",
            license: "",
            shipping_profile_id: "",
            brand_name: "",
            weight_scale: "",
            shipping_address: "",
            shipping_price_cents: "",
            order_item: "",
            credit_cents: "",
            release_date: "",
            currency_symbol: "",
            width: "",
            length: "",
            exclusivity: "",
            height: "",
            tracking_url: "",
            upc: "",
            is_quick_add_product: "",
            created_at: "",
            name: "",
            slug: "",
            user: "",
            category_name: "",
            franchise_name: "",
            packing_depth: "",
            channel_reference: "",
            sales_channel: "",
            subtotal_cents: "",
            packing_width: "",
            total_cents: "",
            currency: "",
            dimension_scale: "",
            style: "",
            master_product: "",
            is_released: "",
            market_price_cents: "",
            shipping_profile_name: "",
            status: "",
            brand_id: "",
            buyer: "",
            packing_scale: "",
            item_number: "",
            tracking_code: "",
            listing_id: "",
            "Custom Column 1": "",
            "Custom Column 2": "",
            updated_at: "",
            thirty_day_sale_count: "",
            shipping_profile: "",
            "Custom Column 3": "",
            images: "",
            tags: "",
            total_page_views: "",
            is_chase: "",
            product_profile: "",
            listing_price_cents: "",
            product_profile_type_id: "",
            product_profiles: "",
            id: "",
            image: "",
            whitelist_approval: "",
            uuid: "",
            category_id: "",
            box_number: "",
            franchise_id: "",
            sku: "",
            is_multipack: "",
            packing_height: "",
            category: "",
            pricing_sources: "",
            children: "",
            seller: "",
            has_quality_listing: "",
            weight_amount: "",
          }}
          columnEditable={{
            ordered: [
              { "Custom Column 2": false },
              { "Custom Column 3": false },
              { "Custom Column 6": false },
              { listing_id: false },
              { tracking_url: true },
              { id: false },
            ],
          }}
          columnFormats={{
            ordered: [
              { images: "HtmlDataCell" },
              { listing_price_cents: "CurrencyDataCell" },
              { market_price_cents: "CurrencyDataCell" },
              { items: "default" },
              { shipping_price_cents: "CurrencyDataCell" },
              { subtotal_cents: "CurrencyDataCell" },
              { total_cents: "CurrencyDataCell" },
              { created_at: "DateTimeDataCell" },
              { "Custom Column 2": "HtmlDataCell" },
              { id: "TextDataCell" },
              { "Custom Column 4": "button" },
              { "Custom Column 5": "button" },
              { tracking_code: "HtmlDataCell" },
              { listing_id: "HtmlDataCell" },
              { shipment_id: "HtmlDataCell" },
              { user: "HtmlDataCell" },
              { "Custom Column 1": "HtmlDataCell" },
              { buyer: "HtmlDataCell" },
            ],
          }}
          columnHeaderNames={{
            ordered: [
              { shipment_id: "Shipment ID" },
              { items: "Items" },
              { shipping_profile_id: "Shipping Profile #" },
              { brand_name: "Brand" },
              { shipping_address: "Ships To" },
              { shipping_price_cents: "Shipping Price" },
              { currency_symbol: "Currency Symbol" },
              { created_at: "Created At" },
              { name: "Name" },
              { user: "Buyer" },
              { category_name: "Category" },
              { franchise_name: "Franchise" },
              { subtotal_cents: "Subtotal" },
              { total_cents: "Total" },
              { currency: "Currency" },
              { style: "Style" },
              { shipping_profile_name: "Shipping Profile" },
              { status: "Status" },
              { brand_id: "Brand #" },
              { buyer: "Buyer" },
              { tracking_code: "Tracking Code" },
              { listing_id: "Listing ID" },
              { "Custom Column 1": "Seller" },
              { "Custom Column 2": "Seller Early Payout" },
              { "Custom Column 3": "Item categories" },
              { "Custom Column 4": "View Buyer" },
              { "Custom Column 5": "View Seller" },
              { id: "Order ID" },
              { image: "Image" },
              { uuid: "UUID" },
              { category_id: "Category #" },
              { franchise_id: "Franchise #" },
              { has_quality_listing: "Has Quality Listing" },
            ],
          }}
          columnMappers={{
            shipment_id:
              '<a href="/app/orders-show-v2?id={{currentRow.id}}" target="_blank">{{ currentRow.shipment_id }}</a>',
            items:
              "{{ self.map(x => x.name + ' - ' + x.status).join('<br>') }}",
            shipping_address: "{{ self.postal_code + ' - ' + self.state }}",
            shipping_price_cents:
              '{{ self / (["JPY"].includes(currentRow.currency) ? 1 : 100)}}',
            created_at: "{{moment.utc(self)}}",
            user: '<a href="/app/users-show-v2?id={{currentRow.user.id}}" target="_blank">\n  {{currentRow.user.username}} ({{currentRow.user.email}})\n</a>',
            category_name: "",
            subtotal_cents:
              '{{ self / (["JPY"].includes(currentRow.currency) ? 1 : 100)}}',
            total_cents:
              '{{ self / (["JPY"].includes(currentRow.currency) ? 1 : 100)}}',
            buyer:
              '<a href="/app/users-show-v2?id={{currentRow.buyer.id}}" target="_blank">\n\n{{ (currentRow.shipping_address.country_code == \'AU\') ? "🇦🇺" : ""}}\n{{ (currentRow.shipping_address.country_code == \'CA\') ? "🇨🇦" : ""}}\n\n{{ (currentRow.shipping_address.country_code == \'DE\') ? "🇩🇪" : ""}}\n\n{{ (currentRow.shipping_address.country_code == \'FR\') ? "🇫🇷" : ""}}\n\n{{ (currentRow.shipping_address.country_code == \'JP\') ? "🇯🇵" : ""}}\n  {{(currentRow.shipping_address.country_code == \'UK\') ? "🇬🇧 ":"" }}\n  {{(currentRow.shipping_address.country_code == \'GB\') ? "🇬🇧 ":"" }}\n  {{currentRow.buyer.username}} ({{currentRow.buyer.email}})\n</a>',
            tracking_code:
              '<a href={{ currentRow.tracking_url }} target="_blank">{{ currentRow.tracking_code }}</a>',
            listing_id:
              '<a href="/apps/bc2b6754-3c53-11ee-8e6c-072d7b87776a?id={{currentRow.listing_id}}" target="_blank">{{ currentRow.listing_id }}</a>',
            "Custom Column 1":
              '<a href="/app/users-show-v2?id={{currentRow.seller.id}}" target="_blank">\n  {{(currentRow.seller.home_address.country_code == \'CA\') ? "🇨🇦 ":"" }}\n  {{(currentRow.seller.home_address.country_code == \'UK\') ? "🇬🇧 ":"" }}\n  {{(currentRow.seller.home_address.country_code == \'GB\') ? "🇬🇧 ":"" }}\n  {{currentRow.seller.username}} ({{currentRow.seller.email}})\n</a>',
            "Custom Column 2":
              '{{ currentRow.seller.seller_early_payout_enabled ? "<a href=\\"/app/users-show-v2/early_payout?id=" + currentRow.seller.id + "\\"" +" target=\\"_blank\\"" +">" + "Enabled" + "</a>": "—" }}',
            "Custom Column 3": "{{currentRow.order_item.category}}",
            images:
              '<img src="https://images.squarespace-cdn.com/content/v1/5ea86127f8b4bd18db0b1ece/1611939345925-U0J5Q4WO6DXWHMZEF339/ke17ZwdGBToddI8pDm48kJ9GquxhJXTwBW_AC_BJDZZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Udej6hy84WiZ2toYuicYTTV8SZEulph19OG9lJJReQvHm4bjm9DAHF2kOsIZRJKXnA/Screen+Shot+2021-01-29+at+11.55.34+AM.png" width="50" height="50" />',
            "Custom Column 4": "View Buyer",
            "Custom Column 5": "View Seller",
            id: "",
            image:
              '<div style="margin: 5px;">\n\t<img style="max-width: 100%; max-height: 100px;" alt="" src="{{getImageUrl(currentRow.image.bucket, currentRow.image.key, 100)}}" />\n</div>',
            "Custom Column 6": "",
          }}
          columnMappersRenderAsHTML={{
            ordered: [{ images: true }, { image: true }, { listing_id: true }],
          }}
          columns={[
            "id",
            "uuid",
            "style",
            "user",
            "Custom Column 1",
            "Custom Column 2",
            "shipping_address",
            "items",
            "status",
            "subtotal_cents",
            "shipping_price_cents",
            "total_cents",
            "created_at",
          ]}
          columnTypeProperties={{
            ordered: [
              { "Custom Column 2": { ordered: [] } },
              { images: { ordered: [] } },
              {
                listing_price_cents: {
                  ordered: [
                    { showSeparators: true },
                    { currency: "USD" },
                    { padDecimal: true },
                  ],
                },
              },
              {
                market_price_cents: {
                  ordered: [
                    { showSeparators: true },
                    { currency: "USD" },
                    { padDecimal: true },
                  ],
                },
              },
              {
                shipping_price_cents: {
                  ordered: [
                    { showSeparators: true },
                    { currency: "{{ currentRow.currency }}" },
                    { padDecimal: true },
                  ],
                },
              },
              {
                subtotal_cents: {
                  ordered: [
                    { showSeparators: true },
                    { currency: "{{ currentRow.currency }}" },
                    { padDecimal: true },
                    { decimalPlaces: "" },
                  ],
                },
              },
              {
                total_cents: {
                  ordered: [
                    { showSeparators: true },
                    { currency: "{{ currentRow.currency }}" },
                    { padDecimal: true },
                  ],
                },
              },
              {
                created_at: {
                  ordered: [
                    { manageTimeZone: true },
                    { dateFormat: "MMM d, yyyy" },
                    { valueTimeZone: "00:00" },
                    { displayTimeZone: "local" },
                  ],
                },
              },
              { id: { ordered: [] } },
              { tracking_code: { ordered: [] } },
              { listing_id: { ordered: [] } },
              { shipment_id: { ordered: [] } },
              { user: { ordered: [] } },
              { "Custom Column 1": { ordered: [] } },
              { buyer: { ordered: [] } },
            ],
          }}
          columnTypeSpecificExtras={{
            ordered: [
              {
                "Custom Column 4": {
                  ordered: [
                    { buttonType: "internal-url" },
                    { internalUrlPath: "745ca30c-cae5-11f0-9e21-2b0d951bd721" },
                    { newWindow: true },
                    {
                      internalUrlQuery:
                        '"[{\\"key\\":\\"id\\",\\"value\\":\\"{{ currentRow.user.id }}\\"}]"',
                    },
                  ],
                },
              },
              {
                "Custom Column 5": {
                  ordered: [
                    { buttonType: "internal-url" },
                    { internalUrlPath: "745ca30c-cae5-11f0-9e21-2b0d951bd721" },
                    {
                      internalUrlQuery:
                        '"[{\\"key\\":\\"id\\",\\"value\\":\\"{{ currentRow.items[0].seller.id }}\\"}]"',
                    },
                    { newWindow: true },
                  ],
                },
              },
            ],
          }}
          columnVisibility={{
            ordered: [
              { classifier_values: false },
              { items: true },
              { listings_activated: false },
              { license: true },
              { shipping_profile_id: false },
              { brand_name: true },
              { weight_scale: false },
              { shipping_address: true },
              { shipping_price_cents: true },
              { credit_cents: true },
              { release_date: false },
              { width: true },
              { length: true },
              { exclusivity: false },
              { height: true },
              { upc: true },
              { is_quick_add_product: false },
              { created_at: true },
              { name: true },
              { slug: false },
              { user: true },
              { sales: true },
              { category_name: true },
              { franchise_name: true },
              { packing_depth: false },
              { sales_channel: true },
              { subtotal_cents: true },
              { packing_width: false },
              { total_cents: true },
              { dimension_scale: true },
              { style: true },
              { master_product: false },
              { is_released: false },
              { market_price_cents: true },
              { shipping_profile_name: true },
              { status: true },
              { brand_id: false },
              { packing_scale: false },
              { item_number: false },
              { "Custom Column 1": true },
              { "Custom Column 2": true },
              { updated_at: false },
              { thirty_day_sale_count: false },
              { shipping_profile: true },
              { images: true },
              { tags: false },
              { total_page_views: false },
              { is_chase: false },
              { product_profile: true },
              { listing_price_cents: true },
              { product_profile_type_id: false },
              { product_profiles: true },
              { id: true },
              { image: true },
              { whitelist_approval: false },
              { uuid: true },
              { email: true },
              { category_id: false },
              { box_number: true },
              { franchise_id: false },
              { sku: false },
              { is_multipack: false },
              { packing_height: false },
              { category: true },
              { pricing_sources: false },
              { children: false },
              { seller: true },
              { weight_amount: false },
            ],
          }}
          columnWidths={[
            { object: { id: "__retool__action_list", value: 103 } },
            { object: { id: "id", value: 106 } },
            { object: { id: "uuid", value: 224 } },
            { object: { id: "style", value: 127 } },
            { object: { id: "shipping_address", value: 148 } },
            { object: { id: "created_at", value: 176 } },
            { object: { id: "items", value: 328 } },
            { object: { id: "Custom Column 1", value: 281 } },
            { object: { id: "user", value: 291 } },
            { object: { id: "Custom Column 4", value: 117 } },
            { object: { id: "Custom Column 5", value: 113 } },
            { object: { id: "tracking_code", value: 140 } },
            { object: { id: "shipment_id", value: 103 } },
            { object: { id: "Custom Column 2", value: 149 } },
            { object: { id: "shipping_price_cents", value: 110 } },
            { object: { id: "Custom Column 3", value: 118 } },
            { object: { id: "buyer", value: 256 } },
          ]}
          customButtonName=""
          data="{{ queryRecordsTransformer.value }}"
          defaultSortByColumn="created_at"
          defaultSortDescending={true}
          disableSorting={{
            ordered: [
              { brand_name: true },
              { currency_symbol: true },
              { category_name: true },
              { franchise_name: true },
              { currency: true },
              { shipping_profile_name: true },
              { tracking_code: true },
              { "Custom Column 2": true },
              { "Custom Column 3": true },
              { image: true },
              { has_quality_listing: true },
            ],
          }}
          dynamicColumnSettings=""
          events={[
            {
              ordered: [
                { event: "saveChanges" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "queryRefundsDashboardSheet" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
                { id: "0daba3ad" },
              ],
            },
          ]}
          heightType="auto"
          margin="0"
          pageSize={15}
          serverPaginated={true}
          showColumnBorders={true}
          sortByRawValue={{
            ordered: [{ images: true }, { category_name: true }],
          }}
          sortMappedValue={{
            ordered: [{ images: false }, { category_name: false }],
          }}
          totalRowCount="{{queryRecords.data.total}}"
        />
      </View>
    </Container>
  </Frame>
</App>
