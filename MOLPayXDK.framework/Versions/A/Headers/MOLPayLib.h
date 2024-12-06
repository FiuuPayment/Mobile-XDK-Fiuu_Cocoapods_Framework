//  Copyright © 2016 MOLPay. All rights reserved.

#import <UIKit/UIKit.h>

@protocol MOLPayLibDelegate <NSObject>
@required
- (void)transactionResult: (NSDictionary *)result;
- (void)onFinishedDeepLink;
@end

@interface MOLPayLib : UIViewController

@property (nonatomic, strong) id <MOLPayLibDelegate> delegate;
@property (nonatomic, strong) NSDictionary *molpayPaymentDetail;
@property (nonatomic, assign) BOOL isNewVersion;

// Public API
- (id)initWithDelegate:(id<MOLPayLibDelegate>)delegate andPaymentDetails:(NSDictionary *)paymentDetails;
- (id)initWithDelegate:(id<MOLPayLibDelegate>)delegate andPaymentDetails:(NSDictionary *)paymentDetails andFrame:(CGRect)frame;
- (void)closemolpay;

// Deprecated
// - (void)transactionRequest;

@end
