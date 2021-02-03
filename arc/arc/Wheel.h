//
//  Wheel.h
//  arc
//
//  Created by Павел Чернышев on 03.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Wheel : NSObject

- (instancetype) initWithNumber:(NSNumber *)number;
@property (nonatomic, strong) NSNumber *number;
@end

NS_ASSUME_NONNULL_END
