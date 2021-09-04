
# Brand

OpenCannabis brand specification payload.

## Structure

`Brand`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | [`Name`](/doc/models/name.md) | Required | Naming information for a brand. |
| `media` | [`Array<BrandAsset>`](/doc/models/brand-asset.md) | Optional | Media/known assets for a brand. |
| `theme` | [`Theme`](/doc/models/theme.md) | Optional | Theme information for a brand. |
| `slug` | `String` | Optional | Slug assigned to this brand. |
| `link` | `String` | Optional | Full URL for this brand. |

## Example (as JSON)

```json
{
  "name": {
    "primary": "Cookies",
    "display": "Cookies"
  }
}
```

