
# Address

Specifies a street address.

## Structure

`Address`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `region_code` | `String` | Required | ISO country code (3-character). |
| `postal_code` | `String` | Required | Regional postal code or zip code. |
| `administrative_area` | `String` | Required | State or province, as a two-letter ISO or national code. |
| `locality` | `String` | Required | City, village, or municipality name. |
| `address_lines` | `Array<String>` | Required | Lines for the address itself. |

## Example (as JSON)

```json
{
  "regionCode": "USA",
  "postalCode": "95340",
  "administrativeArea": "CA",
  "locality": "Merced",
  "addressLines": [
    "811 West Main Street"
  ]
}
```

