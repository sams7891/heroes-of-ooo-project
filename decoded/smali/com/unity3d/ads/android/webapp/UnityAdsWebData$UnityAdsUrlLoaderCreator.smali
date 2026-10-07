.class Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private _postBody:Ljava/lang/String;

.field private _queryParams:Ljava/lang/String;

.field private _requestMethod:Ljava/lang/String;

.field private _requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

.field private _retries:I

.field private _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_url:Ljava/lang/String;

    .line 836
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_queryParams:Ljava/lang/String;

    .line 837
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestMethod:Ljava/lang/String;

    .line 838
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    .line 839
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_retries:I

    .line 840
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_postBody:Ljava/lang/String;

    .line 843
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_url:Ljava/lang/String;

    .line 844
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_queryParams:Ljava/lang/String;

    .line 845
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestMethod:Ljava/lang/String;

    .line 846
    iput-object p4, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    .line 847
    iput p5, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_retries:I

    .line 848
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 855
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_queryParams:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestMethod:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    iget v5, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_retries:I

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 858
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_postBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_postBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->setPostBody(Ljava/lang/String;)V

    .line 862
    :cond_0
    iget v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_retries:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 863
    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$200(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    .line 865
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$300()V

    .line 866
    return-void
.end method

.method public setPostBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->_postBody:Ljava/lang/String;

    .line 852
    return-void
.end method
