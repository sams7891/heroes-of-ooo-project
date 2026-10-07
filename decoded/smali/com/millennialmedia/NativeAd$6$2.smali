.class Lcom/millennialmedia/NativeAd$6$2;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/NativeAd$6;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/NativeAd$6;

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$6$2;->this$1:Lcom/millennialmedia/NativeAd$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1290
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$6$2;->this$1:Lcom/millennialmedia/NativeAd$6;

    iget-object v1, v1, Lcom/millennialmedia/NativeAd$6;->val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    iget-object v1, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1291
    .local v0, "clickTrackerUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    goto :goto_0

    .line 1293
    .end local v0    # "clickTrackerUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method
