# Brands

```ruby
brands_controller = client.brands
```

## Class Name

`BrandsController`

## Methods

* [List Brands](/doc/controllers/brands.md#list-brands)
* [Get Brand](/doc/controllers/brands.md#get-brand)


# List Brands

Retrieve a list of Cookies family brands.

```ruby
def list_brands
```

## Server

`Server::DEFAULT`

## Response Type

[`BrandList`](/doc/models/brand-list.md)

## Example Usage

```ruby
result = brands_controller.list_brands()
```


# Get Brand

Retrieve a single Cookies brand by its ID.

```ruby
def get_brand(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | ID of the brand to fetch. |

## Server

`Server::DEFAULT`

## Response Type

[`BrandSpec`](/doc/models/brand-spec.md)

## Example Usage

```ruby
id = 'id0'

result = brands_controller.get_brand(id)
```

