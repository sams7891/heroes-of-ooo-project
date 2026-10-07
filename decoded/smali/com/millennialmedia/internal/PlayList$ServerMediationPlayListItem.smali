.class public Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;
.super Lcom/millennialmedia/internal/PlayList$PlayListItem;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/PlayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerMediationPlayListItem"
.end annotation


# instance fields
.field public postBody:Ljava/lang/String;

.field public postContentType:Ljava/lang/String;

.field final url:Ljava/lang/String;

.field public validateRegex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/PlayList$PlayListItem;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "url is required"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput-object p2, p0, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->url:Ljava/lang/String;

    .line 115
    return-void
.end method
