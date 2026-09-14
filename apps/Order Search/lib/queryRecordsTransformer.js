// Format data here to simplify the displayed values and customize column ids for API interaction

const data = {{ queryRecords.data?.data }};
if (!Array.isArray(data)) {
  return null;
}

const transformedData = data.map((record) => {
  return {
    channel_reference: record.channel_reference,
    created_at: record.created_at,
    currency: record.currency,
    currency_symbol: record.currency_symbol,
    has_quality_listing: record.has_quality_listing,
    id: record.id,
    order_item: record.items[0],
    seller: record.items[0].seller,
    listing_id: record.listing_id,
    sales_channel: record.sales_channel,
    shipment_id: record.shipment_id,
    shipping_address: record.shipping_address,
    shipping_price_cents: record.shipping_price_cents,
    status: record.status,
    style: record.style,
    subtotal_cents: record.subtotal_cents,
    total_cents: record.total_cents,
    tracking_code: record.tracking_code,
    tracking_url: record.tracking_url,
    buyer: record.user,
    uuid: record.uuid,
  };
});

return transformedData;