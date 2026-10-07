.class public Lcom/millennialmedia/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private coppa:Ljava/lang/Boolean;

.field private mediator:Ljava/lang/String;

.field private siteId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create AppInfo instance, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public getCoppa()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/millennialmedia/AppInfo;->coppa:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMediator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/millennialmedia/AppInfo;->mediator:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/AppInfo;->siteId:Ljava/lang/String;

    return-object v0
.end method

.method public setCoppa(Z)Lcom/millennialmedia/AppInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/AppInfo;->coppa:Ljava/lang/Boolean;

    .line 84
    return-object p0
.end method

.method public setMediator(Ljava/lang/String;)Lcom/millennialmedia/AppInfo;
    .locals 0
    .param p1, "mediator"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/millennialmedia/AppInfo;->mediator:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public setSiteId(Ljava/lang/String;)Lcom/millennialmedia/AppInfo;
    .locals 0
    .param p1, "siteId"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/millennialmedia/AppInfo;->siteId:Ljava/lang/String;

    .line 36
    return-object p0
.end method
