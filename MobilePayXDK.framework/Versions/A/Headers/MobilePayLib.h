//  Copyright © 2016 MobilePay. All rights reserved.

#import <UIKit/UIKit.h>

@protocol MobilePayLibDelegate <NSObject>
@required
- (void)transactionResult: (NSDictionary *)result;
- (void)onFinishedDeepLink;
@end

@interface MobilePayLib : UIViewController

@property (nonatomic, strong) id <MobilePayLibDelegate> delegate;
@property (nonatomic, strong) NSDictionary *mobilepayPaymentDetail;
@property (nonatomic, assign) BOOL isNewVersion;

// Public API
- (id)initWithDelegate:(id<MobilePayLibDelegate>)delegate andPaymentDetails:(NSDictionary *)paymentDetails;
- (id)initWithDelegate:(id<MobilePayLibDelegate>)delegate andPaymentDetails:(NSDictionary *)paymentDetails andFrame:(CGRect)frame;
- (void)closemobilepay;

// Deprecated
// - (void)transactionRequest;

@end
