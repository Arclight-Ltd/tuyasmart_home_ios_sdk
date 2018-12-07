//
//  TYAddDeviceUtils.m
//  TuyaSmartHomeKit_Example
//
//  Created by Kennaki Kai on 2018/12/3.
//  Copyright © 2018 xuchengcheng. All rights reserved.
//

#import "TYAddDeviceUtils.h"

TYAddDeviceUtils * sharedAddDeviceUtils() {
    return [TYAddDeviceUtils sharedInstance];
}

@implementation TYAddDeviceUtils
+ (instancetype)sharedInstance {
    
    static TYAddDeviceUtils *sharedUtils = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!sharedUtils) {
            sharedUtils = [self new];
        }
    });
    return sharedUtils;
}

- (UILabel *)keyLabel {
    UILabel *label = [UILabel new];
    label.font = [UIFont systemFontOfSize:16];
    return label;
}

- (UITextField *)textField {
    UITextField *field = [UITextField new];
    field.layer.borderColor = UIColor.blackColor.CGColor;
    field.layer.borderWidth = 1;
    
    return field;
}

- (void)alertMessage:(NSString *)message {
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:message
                                                     message:nil
                                                    delegate:nil
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil];
    [alert show];
}
@end
