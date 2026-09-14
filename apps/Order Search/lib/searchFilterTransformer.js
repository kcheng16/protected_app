return JSON.stringify({
  uuids: {{ uuidSearchTransformer.value }},
  ids: {{ idSearchTransformer.value }},
  shipment_id: {{ shipmentIdSearchTransformer.value }},
  listing_id: {{ listingIdSearchTransformer.value }},
  buyer_identifiers: {{ buyerSearchTransformer.value }},
  seller_identifiers: {{ sellerSearchTransformer.value }},
  tracking_code: {{ trackingCodeSearchTransformer.value }},
  total_cents: {{ totalCentsSearchTransformer.value }}
});