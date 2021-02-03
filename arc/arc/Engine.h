//
//  Engine.h
//  arc
//
//  Created by Павел Чернышев on 03.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Engine : NSObject
- (instancetype) initWithModel:(NSString *)model;

@property (nonatomic, strong) NSString *model;
@end

NS_ASSUME_NONNULL_END
