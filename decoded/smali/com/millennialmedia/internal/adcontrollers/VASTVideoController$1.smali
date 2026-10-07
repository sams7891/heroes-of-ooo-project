.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

.field final synthetic val$adContent:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Ljava/lang/String;Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$adContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    iput-object p4, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$adContent:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$000(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$100(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v2

    if-nez v2, :cond_0

    .line 83
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VAST content did not produce a valid InLineAd instance."

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 86
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    .line 156
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$100(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v2

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->impressions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InLineAd must contain at least one Impression URL."

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 95
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VAST XML Parsing error."

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 148
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    goto :goto_0

    .line 100
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 102
    .local v1, "wrapperAd":Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;
    iget-object v3, v1, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->impressions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WrapperAd must contain at least one Impression URL."

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 106
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 150
    .end local v1    # "wrapperAd":Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VAST XML I/O error."

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 154
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    goto/16 :goto_0

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v2, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;)V

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
