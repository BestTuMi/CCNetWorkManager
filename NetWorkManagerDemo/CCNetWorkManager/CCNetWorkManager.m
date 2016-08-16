//
//  CCNetWorkManager.m
//  CCNetWorkManager
//
//  Created by jack on 16/8/16.
//  Copyright © 2016年 jack. All rights reserved.
//

#import "CCNetWorkManager.h"
#import "CCNetWorkHandler.h"
#import "CCNetWorkDefine.h"
#import "AFNetworking.h"
#import "CCUploadModel.h"

@implementation CCNetWorkManager

+ (instancetype)sharedInstance
{
    static CCNetWorkManager *manager;
    static dispatch_once_t oneceToken;
    dispatch_once(&oneceToken, ^{
        manager = [[CCNetWorkManager alloc]init];
    });
    return manager;
}

//Get
+ (void)GETRequestWithUrl:(NSString *)url
                   params:(NSDictionary *)params
                  success:(CCReuqestSuccessBlock)successBlock
                  failure:(CCReuqestFailureBlock)failureBlock
                 progress:(CCProgressBlock)progress
{
    [[CCNetWorkHandler shardInstance]requestUrl:url requestType:CCGetRequest params:params success:successBlock failure:failureBlock];
}

//Post
+ (void)POSTRequestWithUrl:(NSString *)url
                    params:(NSDictionary *)params
                   success:(CCReuqestSuccessBlock)successBlock
                   failure:(CCReuqestFailureBlock)failureBlock
                  progress:(CCProgressBlock)progress
{
    [[CCNetWorkHandler shardInstance]requestUrl:url requestType:CCPostRequest params:params success:successBlock failure:failureBlock];
}

//Upload
+ (void)UpLoadFileWithUrl:(NSString *)url
                   params:(NSDictionary *)params
            progressBlock:(CCProgressBlock)progressBlock
             successBlock:(CCReuqestSuccessBlock)successBlock
             failureBlock:(CCReuqestFailureBlock)failureBlock
              upLoadModel:(CCUploadModel *)upLoadModel
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFileData:upLoadModel.data name:upLoadModel.name fileName:upLoadModel.fileName mimeType:upLoadModel.mimeType];
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        if (progressBlock) {
            progressBlock(uploadProgress);
        }
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (successBlock) {
            successBlock(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failureBlock) {
            failureBlock(error);
        }
    }];
}
@end
