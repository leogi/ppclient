//
//  PPHttpRequest.m
//  PPClient
//
//  Created by Nghia Le Van on 2013/02/16.
//  Copyright (c) 2013年 Nghia Le Van. All rights reserved.
//

#import "PPHttpRequest.h"

@implementation PPHttpRequest
@synthesize delegate;
@synthesize receivedData;
@synthesize cookie;
@synthesize endpoint;
@synthesize requestMethod;
@synthesize requestStringData;
@synthesize fileData;

- (id)initWithDelegate: (id) dlg{
    if ( self = [super init] ){
        [self setDelegate: dlg];
        return self;
    }else{
        return nil;
    }
}

- (id) initWithDelegate:(id)dlg forEndPoint:(NSString *)url forMethod:(NSString *)method forRequestData:(NSMutableString *)data{
    if ( self = [super init]) {
        [self setDelegate:dlg];
        [self setEndpoint:url];
        [self setRequestMethod:method];
        [self setRequestStringData:data];
        [self setFileData:nil];
        return self;
    }else{
        return nil;
    }
}

- (id)initWithDelegateForUpload:(id)dlg forEndPoint:(NSString *)url forMethod:(NSString *)method forRequestData:(NSMutableData *)data{
    if ( self = [super init]) {
        [self setDelegate:dlg];
        [self setEndpoint:url];
        [self setRequestMethod:method];
        [self setFileData:data];
        [self setRequestStringData:nil];
        return self;
    }else{
        return nil;
    }
}

- (void)connectForStringParams{
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString: endpoint]];
    [request setHTTPMethod: self.requestMethod];
    [request setValue:@"application/json" forHTTPHeaderField: @"Accept"];
    if (self.requestMethod == POST || self.requestMethod == PUT){
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
    }
    // [request setValue:@"http://localhost:3000/api/v1/sessions" forHTTPHeaderField:@"Referer"];
    if (self.cookie != nil){
        [request setAllHTTPHeaderFields:[NSHTTPCookie requestHeaderFieldsWithCookies: self.cookie]];
    }
    
    if (requestStringData != nil) {
        [request setValue:[NSString stringWithFormat:@"%d", [requestStringData length]] forHTTPHeaderField:@"Content-length"];
        [request setHTTPBody: [requestStringData dataUsingEncoding:NSUTF8StringEncoding]];
    }else{
        [request setValue:[NSString stringWithFormat:@"%d", [fileData length]] forHTTPHeaderField:@"Content-length"];
        [request setHTTPBody:fileData];
    }
   
    
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate: self];
    if (connection){
        receivedData = [NSMutableData data];
    }else{
        NSLog(@"%@", @"Connection failed");
    }
}

- (void)connectForDataParams{
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString: endpoint]];
    [request setHTTPMethod: self.requestMethod];
    [request setValue:@"application/json" forHTTPHeaderField: @"Accept"];
    NSString *boundary = @"0xKhTmLbOuNdArY";
    [request setValue:[NSString stringWithFormat:@"multipart/form-data; boundary=%@",boundary] forHTTPHeaderField:@"Content-type"];
 
    // [request setValue:@"http://localhost:3000/api/v1/sessions" forHTTPHeaderField:@"Referer"];
    if (self.cookie != nil){
        [request setAllHTTPHeaderFields:[NSHTTPCookie requestHeaderFieldsWithCookies: self.cookie]];
    }
    
    [request setHTTPBody:fileData];
    
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate: self];
    if (connection){
        receivedData = [NSMutableData data];
    }else{
        NSLog(@"%@", @"Connection failed");
    }

}
- (void) handleReceivedData: (NSMutableData*) data{
    [delegate requestCallback: data];
}

- (void) handleConnectionError: (NSError*) error{
    [delegate errorCallback: error];
}

- (void) connection:(NSURLConnection *)connection didReceiveResponse:(NSHTTPURLResponse *)response{
    [receivedData setLength:0];
    self.cookie = [NSHTTPCookie cookiesWithResponseHeaderFields:[response allHeaderFields]
                                                         forURL: [NSURL URLWithString:@""]];
    NSLog(@"%@", self.cookie);
}

- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [receivedData appendData:data];
}

- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    [self handleConnectionError:error];
    
    NSString *errorMessage = [error localizedDescription];
    NSLog(@"Connection failed! - %@ - %@ ", errorMessage, [[error userInfo] objectForKey: NSURLErrorFailingURLErrorKey]);
}

- (void) connectionDidFinishLoading:(NSURLConnection *)connection{
    [self handleReceivedData:receivedData];
    
    NSString *result = [[NSString alloc] initWithData:receivedData encoding: NSUTF8StringEncoding];
    NSLog(@"%@", result);
}
                                                           
@end
