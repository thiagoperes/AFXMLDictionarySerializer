AFNetworkingXMLDictionary
=========================
Support for converting XML to NSDictionary in AFNetworking 2.0.

## Installation

### Via Cocoapods:

```bash
pod 'AKLocationManager'
```

## Sample Usage

```objective-c
NSURL *URL = [NSURL URLWithString:@"http://maps.googleapis.com/maps/api/directions/xml?origin=Toronto&destination=Montreal&sensor=false"];
NSURLRequest *request = [NSURLRequest requestWithURL:URL];
AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
operation.responseSerializer = [AFXMLDictionaryResponseSerializer serializer];
[operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
	NSLog(@"%@", responseObject);
} failure:nil];

[operation start];
```
## License

AKLocationManager is licensed under the MIT License:

  Copyright (c) 2012 Thiago Peres (http://www.appkraft.net/)

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
