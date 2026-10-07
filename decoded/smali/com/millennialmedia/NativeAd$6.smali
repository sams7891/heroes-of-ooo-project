.class Lcom/millennialmedia/NativeAd$6;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/NativeAd;

.field final synthetic val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

.field final synthetic val$componentName:Lcom/millennialmedia/NativeAd$ComponentName;

.field final synthetic val$index:I

.field final synthetic val$reporter:Lcom/millennialmedia/internal/AdPlacementReporter;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/NativeAd;

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$6;->this$0:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$6;->val$reporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    iput-object p3, p0, Lcom/millennialmedia/NativeAd$6;->val$componentName:Lcom/millennialmedia/NativeAd$ComponentName;

    iput p4, p0, Lcom/millennialmedia/NativeAd$6;->val$index:I

    iput-object p5, p0, Lcom/millennialmedia/NativeAd$6;->val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1262
    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ad clicked"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v3, p0, Lcom/millennialmedia/NativeAd$6;->val$reporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    invoke-static {v3}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1267
    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/NativeAd$6;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v3}, Lcom/millennialmedia/NativeAd;->access$1400(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onAdClicked"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1268
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/millennialmedia/NativeAd$6;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v3}, Lcom/millennialmedia/NativeAd;->access$1400(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/NativeAd$6;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v3}, Lcom/millennialmedia/NativeAd;->access$1500(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/NativeAd$NativeListener;

    move-result-object v1

    .line 1275
    .local v1, "localNativeListener":Lcom/millennialmedia/NativeAd$NativeListener;
    if-eqz v1, :cond_0

    .line 1276
    new-instance v3, Lcom/millennialmedia/NativeAd$6$1;

    invoke-direct {v3, p0, v1}, Lcom/millennialmedia/NativeAd$6$1;-><init>(Lcom/millennialmedia/NativeAd$6;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 1285
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/NativeAd$6;->val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    iget-object v3, v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1286
    new-instance v3, Lcom/millennialmedia/NativeAd$6$2;

    invoke-direct {v3, p0}, Lcom/millennialmedia/NativeAd$6$2;-><init>(Lcom/millennialmedia/NativeAd$6;)V

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1297
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/NativeAd$6;->val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    iget-object v3, v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1298
    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to execute click action, url is null"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    :cond_2
    :goto_1
    return-void

    .line 1303
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/millennialmedia/NativeAd$6;->val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    iget-object v3, v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1306
    iget-object v3, p0, Lcom/millennialmedia/NativeAd$6;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v3}, Lcom/millennialmedia/NativeAd;->access$1600(Lcom/millennialmedia/NativeAd;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/millennialmedia/internal/utils/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1307
    iget-object v3, p0, Lcom/millennialmedia/NativeAd$6;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v3}, Lcom/millennialmedia/NativeAd;->access$1700(Lcom/millennialmedia/NativeAd;)V

    goto :goto_1

    .line 1269
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "localNativeListener":Lcom/millennialmedia/NativeAd$NativeListener;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
