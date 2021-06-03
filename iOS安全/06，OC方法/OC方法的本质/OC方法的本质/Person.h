//
//  Person.h
//  OC方法的本质
//
//  Created by bel on 2021/6/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property(nonatomic, copy) NSString *name;

+(instancetype)person;
@end

NS_ASSUME_NONNULL_END
