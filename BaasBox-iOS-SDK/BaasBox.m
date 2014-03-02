//
//  Baasbox.m
//
//  Created by Cesare Rocchi on 11/22/13.
//  Copyright (c) 2013 Cesare Rocchi. All rights reserved.
//

#import "BaasBox.h"

@implementation BaasBox

+ (void) setBaseURL:(NSString *)URL appCode:(NSString *)code {

    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:URL forKey:BASE_URL_KEY];
    [userDefaults setObject:code forKey:APP_CODE_KEY];
    [userDefaults synchronize];
    
}

+ (NSString *) baseURL {

    return (NSString *) [[NSBundle mainBundle] objectForInfoDictionaryKey:BASE_URL_KEY];
    
}

+ (NSString *) appCode {
    
    return (NSString *) [[NSBundle mainBundle] objectForInfoDictionaryKey:APP_CODE_KEY];
    
}

+ (NSString *) errorDomain {
    return @"com.baasbox";
}

@end
