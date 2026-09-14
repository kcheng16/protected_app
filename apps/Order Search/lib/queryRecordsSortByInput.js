// In certain cases, the column name differs from the expected sort key

const sortedColumn = {{ tableRecords.sortedColumn }};

switch (sortedColumn) {
  case "buyer":
    return "buyer_username";
  case "Custom Column 1":
    return "seller_username";
  default:
    return sortedColumn;
}