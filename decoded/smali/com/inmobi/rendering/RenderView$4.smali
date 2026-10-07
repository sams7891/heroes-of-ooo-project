.class Lcom/inmobi/rendering/RenderView$4;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Lcom/inmobi/rendering/InMobiAdActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/RenderView;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1220
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/RenderView;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdScreenDisplayed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->INLINE:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->b(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderingProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1223
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 1227
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView;Z)Z

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->d(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->d(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$b;->e(Lcom/inmobi/rendering/RenderView;)V

    .line 1232
    :cond_1
    return-void

    .line 1225
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 1236
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/RenderView;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdScreenDismissed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->INLINE:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->b(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderingProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1238
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 1239
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 1247
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->d(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->d(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$b;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 1250
    :cond_1
    return-void

    .line 1243
    :cond_2
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->e(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$4;->a:Lcom/inmobi/rendering/RenderView;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->HIDDEN:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    goto :goto_0
.end method
