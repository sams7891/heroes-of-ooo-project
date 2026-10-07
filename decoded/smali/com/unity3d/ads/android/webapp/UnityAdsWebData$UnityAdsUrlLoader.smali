.class Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;
.super Landroid/os/AsyncTask;
.source "UnityAdsWebData.java"


# instance fields
.field private _baseUrl:Ljava/lang/String;

.field private _binput:Ljava/io/BufferedInputStream;

.field private _connection:Ljava/net/HttpURLConnection;

.field private _done:Ljava/lang/Boolean;

.field private _downloadLength:I

.field private _finalUrl:Ljava/lang/String;

.field private _httpMethod:Ljava/lang/String;

.field private _input:Ljava/io/InputStream;

.field private _postBody:Ljava/lang/String;

.field private _queryParams:Ljava/lang/String;

.field private _requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

.field private _retries:I

.field private _url:Ljava/net/URL;

.field private _urlData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 901
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 885
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    .line 886
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    .line 887
    iput v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_downloadLength:I

    .line 888
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    .line 889
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    .line 890
    const-string v0, ""

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_urlData:Ljava/lang/String;

    .line 891
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    .line 892
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 893
    iput v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_retries:I

    .line 894
    const-string v0, "GET"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 895
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    .line 896
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 897
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_done:Ljava/lang/Boolean;

    .line 898
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    .line 903
    :try_start_0
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 904
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 906
    const-string v0, "GET"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 910
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_0
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    .line 917
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 918
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$408()I

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total urlLoaders created: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$400()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 920
    iput-object p4, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    .line 921
    iput p5, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_retries:I

    .line 922
    return-void

    .line 912
    :catch_0
    move-exception v0

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems with url! Error-message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cancelInMainThread()V
    .locals 1

    .prologue
    .line 979
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsCancelUrlLoaderRunner;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 980
    return-void
.end method

.method private closeAndFlushConnection()V
    .locals 3

    .prologue
    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1099
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :cond_1
    :goto_0
    return-void

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems closing streams: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 966
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    .line 967
    iput v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_downloadLength:I

    .line 968
    const-string v0, ""

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_urlData:Ljava/lang/String;

    .line 969
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    .line 970
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 971
    iput v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_retries:I

    .line 972
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 973
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    .line 974
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 975
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    .line 976
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 884
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 985
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 986
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    .line 992
    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 993
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 994
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 996
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :goto_1
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1002
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    :try_start_1
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1015
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1016
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    :goto_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1030
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    .line 1032
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_input:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1040
    const-wide/16 v0, 0x0

    .line 1041
    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    iput v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_downloadLength:I

    .line 1044
    :try_start_3
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$508()I

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Total urlLoaders that have started running: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reading data from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Content-length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_downloadLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1048
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1051
    :cond_2
    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 1052
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 1053
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1055
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    if-eqz v3, :cond_2

    .line 1069
    :cond_3
    :goto_3
    return-object v6

    .line 989
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems opening connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1007
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->cancelInMainThread()V

    goto :goto_3

    .line 998
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1018
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1022
    :catch_1
    move-exception v0

    .line 1023
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Problems writing post-data: %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->cancelInMainThread()V

    goto :goto_3

    .line 1034
    :catch_2
    move-exception v0

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems opening stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->cancelInMainThread()V

    goto :goto_3

    .line 1059
    :cond_7
    :try_start_7
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_urlData:Ljava/lang/String;

    .line 1060
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Read total of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 1062
    :catch_3
    move-exception v0

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems loading url! Error-message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1064
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->cancelInMainThread()V

    goto/16 :goto_3
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_urlData:Ljava/lang/String;

    return-object v0
.end method

.method public getHTTPMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_requestType:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_retries:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 1074
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_done:Ljava/lang/Boolean;

    .line 1075
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->closeAndFlushConnection()V

    .line 1076
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$600(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    .line 1077
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 884
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_done:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_done:Ljava/lang/Boolean;

    .line 1083
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->closeAndFlushConnection()V

    .line 1084
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$700(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    .line 1087
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1088
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1092
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1093
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 884
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setPostBody(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 956
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_finalUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->_postBody:Ljava/lang/String;

    .line 963
    return-void

    .line 957
    :catch_0
    move-exception v0

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error when creating adding query parameters to URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
