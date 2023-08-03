//
//  FoodDeliveryModuleHeader.m
//  RNDynamicIsland
//
//  Created by Amit Khatkar on 21/04/23.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(FoodDelivery, NSObject)

RCT_EXTERN_METHOD(startActivity)
RCT_EXTERN_METHOD(endActivity)
RCT_EXTERN_METHOD(updateActivity: (NSString *) name)

@end
