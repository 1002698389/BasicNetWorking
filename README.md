# BasicNetWorking
> 目前市场上很大部分APP 使用AFNetworking,MBProgressHUD,进行网络请求，所以本Demo对二者进行了二次封装，提高代码的质量，可维护性。

![Simulator Screen Shot 2017年9月6日 下午6.27.27.png](http://upload-images.jianshu.io/upload_images/3601550-d033a0fe0fcc943f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

![Simulator Screen Shot 2017年9月6日 下午6.28.02.png](http://upload-images.jianshu.io/upload_images/3601550-fbe3f31f76094d77.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

![Simulator Screen Shot 2017年9月6日 下午6.28.05.png](http://upload-images.jianshu.io/upload_images/3601550-b2aa77e0d790505a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

![Simulator Screen Shot 2017年9月6日 下午6.28.08.png](http://upload-images.jianshu.io/upload_images/3601550-b536281239a07c50.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

#### 使用
```
/**
 GET数据请求

 @param urlString  URL
 @param parameters 参数
 @param success    成功回调
 @param failure    失败回调
 */
+ (void)GET:(NSString *)urlString parameters:(id)parameters success:(void (^) (id responseObject))success failure:(void (^) (NSError *error))failure;

/**
 POST数据请求

 @param urlString  URL
 @param parameters 参数
 @param success    成功回调
 @param failure    失败回调
 */
+ (void)POST:(NSString *)urlString parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^) (NSError *error))failure;

/**
 单张图片或者多张图片上传

 @param urlString URL
 @param parameters 参数
 @param imageArray 图片数组 @[UIImage]
 @param imageKeys 上传图片对应的 key
 @param successs 成功回调
 @param failure 失败回调
 */
+ (void)uploadMorePost:(NSString *)urlString parameters:(id)parameters UploadImage:(NSArray *)imageArray ImageKey:(NSArray *)imageKeys success:(void (^)(id responseObject))successs failure:(void (^)(NSError *error))failure;

/**
 实时监测网络变化

 @param netStatus 当前网络状态
 */
+ (void)ReachabilityStatus:(void (^)(id string))netStatus;
```
