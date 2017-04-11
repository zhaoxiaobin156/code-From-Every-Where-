

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"
//#import "SVProgressHUD.h"

@interface Dialog : NSObject<MBProgressHUDDelegate> {
	MBProgressHUD *HUD;
    
	long long expectedLength;
	long long currentLength;
}

+ (Dialog *)Instance;



//类似于Android一个显示框效果
+ (void)toast:(UIViewController *)controller withMessage:(NSString *) message;
+ (void)toast:(NSString *)message delay:(float)time;
//+ (void)simpleToast:(NSString *)message;
//+ (void)hideSimpleToast;



+ (void)toast:(NSString *)message withPosition:(float)position;

//显示在屏幕中间
+ (void)toastCenter:(NSString *)message;
//自定义view提示
+ (void)CustoastCenter:(NSString *)message;

//带进度条
+ (void)progressToast:(NSString *)message;


//带遮罩效果的进度条
- (void)gradient:(UIViewController *)controller seletor:(SEL)method;

//显示遮罩
- (void)showProgress:(UIViewController *)controller;

//关闭遮罩
- (void)hideProgress;

//带说明的进度条
- (void)progressWithLabel:(UIViewController *)controller seletor:(SEL)method;

//显示带说明的进度条
- (void)showProgress:(UIViewController *)controller withLabel:(NSString *)labelText;
- (void)showCenterProgressWithLabel:(NSString *)labelText;

@end


/*   使用
 *  [[Dialog Instance] showCenterProgressWithLabel:@"请稍候"];
 *  [[Dialog Instance] hideProgress];
 *  [Dialog simpleToast:@"连接超时，请稍后再试"];

 */