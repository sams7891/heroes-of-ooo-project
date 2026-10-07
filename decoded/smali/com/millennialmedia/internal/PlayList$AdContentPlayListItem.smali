.class public Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;
.super Lcom/millennialmedia/internal/PlayList$PlayListItem;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/PlayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdContentPlayListItem"
.end annotation


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/PlayList$PlayListItem;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "value is required"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iput-object p2, p0, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;->value:Ljava/lang/String;

    .line 153
    return-void
.end method
