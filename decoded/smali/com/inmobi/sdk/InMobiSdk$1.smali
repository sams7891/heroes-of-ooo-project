.class final Lcom/inmobi/sdk/InMobiSdk$1;
.super Ljava/lang/Object;
.source "InMobiSdk.java"

# interfaces
.implements Lcom/inmobi/commons/core/utilities/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 234
    invoke-static {p1}, Lcom/inmobi/commons/a/a;->a(Z)V

    .line 235
    if-eqz p1, :cond_0

    .line 236
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->access$000()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->access$100()V

    goto :goto_0
.end method
