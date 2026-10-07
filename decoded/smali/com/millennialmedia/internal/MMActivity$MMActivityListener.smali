.class public abstract Lcom/millennialmedia/internal/MMActivity$MMActivityListener;
.super Ljava/lang/Object;
.source "MMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MMActivityListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0
    .param p1, "mmActivity"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    .line 137
    return-void
.end method

.method public onDestroy(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0
    .param p1, "mmActivity"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    .line 152
    return-void
.end method

.method public onLaunchFailed()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0
    .param p1, "mmActivity"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    .line 147
    return-void
.end method

.method public onResume(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0
    .param p1, "mmActivity"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    .line 142
    return-void
.end method
