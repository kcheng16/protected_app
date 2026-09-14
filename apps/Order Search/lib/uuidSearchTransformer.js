const value = {{textInputUUIDs}}.value?.trim();
const values = [
  ...new Set(
    value
      .split(/[\s;,]/)
      .map((s) => s.trim())
      .filter((s) => s.length == 22)
  ),
];

return values.length > 0 ? values : undefined;
