# SwiftyJSON-X

Enclose SwiftyJSON which implement: 
 
- **JSON->Model** : Transform JsonString or Dictionary/Array etc to Model, for more information [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON)

- **Model->JSON** : Transform Model which impements protocol [JSONConvertibleMappable](https://github.com/ApterKing/SwiftyJSON-X/blob/master/Pod/Classes/JSONMappable.swift)

[**中文文档**](http://www.jianshu.com/p/5a564585e0ea)

## Installation

You can use cocoapod utility to import it to your Project

``` swift
pod 'SwiftyJSON-X'
```

**Or** : Use it with [Moya](https://github.com/Moya/Moya)

``` swift
pod 'SwiftyJSON-X/Moya'
```

**Or** : Use it with [RxSwift](https://github.com/ReactiveX/RxSwift)

``` swift
pod 'SwiftyJSON-X/RxSwift'
```

## Usage

### Model define

``` swift
class HttpBin: JSONMappable {
    var args: [String: Any]
    var headers: HttpBinHeaders
    var origin: String
    var url: String

    required init(json: JSON) {
        args = json["args"].dictionaryValue
        headers = HttpBinHeaders(json: json["headers"])
        origin = json["origin"].stringValue
        url = json["url"].stringValue
    }
}
```

### Transform Model to JSON or JSONString

``` swift
let httpBin = HttpBin(json: jsonData)

let JSON = httpBin.mapJSON()    // transform to SwiftyJSON
let JSONString = httpBin.mapString()   // transform to json String
```

You will get Result like this:

``` json
{
  "headers" : {
    "acceptEncoding" : "gzip;q=1.0, compress;q=0.5",
    "acceptLanguage" : "en;q=1.0",
    "connection" : "close",
    "accept" : "*\/*",
    "host" : "httpbin.org"
  },
  "origin" : "118.113.69.83",
  "args" : {

  },
  "url" : "https:\/\/httpbin.org\/get"
}
```

### Ignore and Replace Property when transfrom to JSON/JSONString

``` swift
class HttpBin: JSONMappable {
    var args: [String: Any]
    var headers: HttpBinHeaders
    var origin: String
    var url: String

    required init(json: JSON) {
        args = json["args"].dictionaryValue
        headers = HttpBinHeaders(json: json["headers"])
        origin = json["origin"].stringValue
        url = json["url"].stringValue
    }
    
    /// Set the ignore Property's Names
    public var ignoreProperties: [String]? {
	return ["args"]
    }

    /// Set the replace Properties
    /// [originName: newName]
    public var replacedProperties: [String : String]? {
    	return ["origin": "newOrigin"]
    }
}

```

You will get Result like this:

```  json
{
  "newOrigin" : "118.113.69.83",
  "url" : "https:\/\/httpbin.org\/get",
  "headers" : {
    "acceptEncoding" : "gzip;q=1.0, compress;q=0.5",
    "acceptLanguage" : "en;q=1.0",
    "connection" : "close",
    "accept" : "*\/*",
    "host" : "httpbin.org"
  }
}
```

## Author

ApterKing, wangccong@foxmail.com

## License

SwiftyJSON-X is available under the MIT license. See the LICENSE file for more info.
