
# Getting Started with Cookies API

## Introduction

Main Cookies application API, which provides endpoints for developers working with Cookies. Fetch canonical records relating to brands, stores, and strains.

## Building

The generated code depends on a few Ruby gems. The references to these gems are added in the gemspec file. The easiest way to resolve the dependencies, build the gem and install it is through Rake:

1. Install Rake if not already installed: `gem install rake`
2. Install Bundler if not already installed: `gem install bundler`
3. From terminal/cmd navigate to the root directory of the SDK.
4. Invoke: `rake install`

Alternatively, you can build and install the gem manually:

1. From terminal/cmd navigate to the root directory of the SDK.
2. Run the build command: `gem build cookies_api.gemspec`
3. Run the install command: `gem install cookies_api-1.0.0.gem`

![Installing Gem](https://apidocs.io/illustration/ruby?workspaceFolder=CookiesApi&gemVer=1.0.0&gemName=cookies_api&step=buildSDK)

## Installation

The following section explains how to use the cookies_api ruby gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting `File -> Close Project`. Next, click on `Create New Project` to create a new project from scratch.

![Create a new project in RubyMine - Step 1](https://apidocs.io/illustration/ruby?workspaceFolder=CookiesApi&step=createNewProject0)

Next, provide `TestApp` as the project name, choose `Rails Application` as the project type, and click `OK`.

![Create a new Rails Application in RubyMine - Step 2](https://apidocs.io/illustration/ruby?workspaceFolder=CookiesApi&step=createNewProject1)

In the next dialog make sure that the correct Ruby SDK is being used (>= 2.5.0 and < 3.0.0) and click `OK`.

![Create a new Rails Application in RubyMine - Step 3](https://apidocs.io/illustration/ruby?workspaceFolder=CookiesApi&step=createNewProject2)

### 2. Add reference of the gem

In order to use the Tester gem in the new project we must add a gem reference. Locate the `Gemfile` in the Project Explorer window under the `TestApp` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: `gem 'cookies_api', '1.0.0'`

![Add new reference to the Gemfile](https://apidocs.io/illustration/ruby?workspaceFolder=CookiesApi&gemVer=1.0.0&gemName=cookies_api&step=addReference)

### 3. Adding a new Rails Controller

Once the `TestApp` project is created, a folder named `controllers` will be visible in the *Project Explorer* under the following path: `TestApp > app > controllers`. Right click on this folder and select `New -> Run Rails Generator...`.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?workspaceFolder=CookiesApi&gemVer=1.0.0&gemName=cookies_api&step=addCode0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the `controller` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=CookiesApi&step=addCode1)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide `Hello` and include an action named `Index` and click `OK`.

![Add a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=CookiesApi&gemVer=1.0.0&gemName=cookies_api&step=addCode2)

A new controller class named `HelloController` will be created in a file named `hello_controller.rb` containing a method named `Index`. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?workspaceFolder=CookiesApi&gemName=cookies_api&step=addCode3)

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `x_apikey` | `String` | Consumer API key issued by Cookies. |
| `apikey` | `String` | Consumer API key issued by Cookies. |
| `environment` | Environment | The API environment. <br> **Default: `Environment.SANDBOX`** |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |

The API client can be initialized as follows:

```ruby
client = CookiesApi::Client.new(
  x_apikey: 'x-apikey',
  apikey: 'apikey',
  environment: Environment::SANDBOX,
)
```

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| production | Production data and hosting environment. |
| sandbox | **Default** Testing and development environment. |

## Authorization

This API uses `Custom Query Parameter`.

## List of APIs

* [Stores](/doc/controllers/stores.md)
* [Strains](/doc/controllers/strains.md)
* [Brands](/doc/controllers/brands.md)

## Classes Documentation

* [Utility Classes](/doc/utility-classes.md)
* [HttpResponse](/doc/http-response.md)
* [HttpRequest](/doc/http-request.md)

