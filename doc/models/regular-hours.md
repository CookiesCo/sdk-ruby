
# Regular Hours

Describes regular store hours.

## Structure

`RegularHours`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `day` | `Array<String>` | Required | Days which a given regular hours rule applies to. |
| `hours` | [`Array<HoursRange>`](/doc/models/hours-range.md) | Required | Hours to apply on the specified days. |

## Example (as JSON)

```json
{
  "day": [
    "MONDAY",
    "TUESDAY",
    "WEDNESDAY",
    "THURSDAY",
    "FRIDAY",
    "SATURDAY",
    "SUNDAY"
  ],
  "hours": [
    {
      "begin": {
        "hours": 9
      },
      "end": {
        "hours": 21
      },
      "status": "OPEN",
      "active": true
    }
  ]
}
```

