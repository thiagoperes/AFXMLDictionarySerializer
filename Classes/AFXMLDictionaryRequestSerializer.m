//
//  AFXMLDictionaryRequestSerializer.m
//  AFXMLDictionarySerializer
//
//  Created by Thiago Peres on 09/10/13.
//  Copyright (c) 2013 Ideais Mobile. All rights reserved.
//

#import "AFXMLDictionaryRequestSerializer.h"
#import <XMLDictionary/XMLDictionary.h>

@implementation AFXMLDictionaryRequestSerializer

#pragma mark - AFURLRequestSerialization

+ (instancetype)serializer
{
    return [[self alloc] init];
}

- (NSURLRequest *)requestBySerializingRequest:(NSURLRequest *)request
                               withParameters:(NSDictionary *)parameters
                                        error:(NSError *__autoreleasing *)error
{
    NSParameterAssert(request);
    
    if ([self.HTTPMethodsEncodingParametersInURI containsObject:[[request HTTPMethod] uppercaseString]]) {
        return [super requestBySerializingRequest:request withParameters:parameters error:error];
    }
    
    NSMutableURLRequest *mutableRequest = [request mutableCopy];
    
    [self.HTTPRequestHeaders enumerateKeysAndObjectsUsingBlock:^(id field, id value, BOOL * __unused stop) {
        [mutableRequest setValue:value forHTTPHeaderField:field];
    }];
    
    if (!parameters) {
        return mutableRequest;
    }
    
    NSString *charset = (__bridge NSString *)CFStringConvertEncodingToIANACharSetName(CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    
    [mutableRequest setValue:[NSString stringWithFormat:@"application/xml; charset=%@", charset] forHTTPHeaderField:@"Content-Type"];
    [mutableRequest setHTTPBody:[[parameters XMLString] dataUsingEncoding:NSUTF8StringEncoding]];
    
    return mutableRequest;
}

@end
