.class Lcom/millennialmedia/NativeAd$5;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd;->fireClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/NativeAd;

.field final synthetic val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/NativeAd;

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$5;->this$0:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$5;->val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1217
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$5;->val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

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

    .line 1218
    .local v0, "clickTrackerUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    goto :goto_0

    .line 1220
    .end local v0    # "clickTrackerUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method
