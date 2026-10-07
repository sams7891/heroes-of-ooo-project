.class final Lcom/inmobi/rendering/RenderView$a;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/inmobi/rendering/RenderView;


# direct methods
.method private constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView$a;->b:Lcom/inmobi/rendering/RenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inmobi/rendering/RenderView;Lcom/inmobi/rendering/RenderView$1;)V
    .locals 0

    .prologue
    .line 1807
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView$a;-><init>(Lcom/inmobi/rendering/RenderView;)V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 3

    .prologue
    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastEvent(\'micIntensityChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1819
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$a;->b:Lcom/inmobi/rendering/RenderView;

    iget-object v2, p0, Lcom/inmobi/rendering/RenderView$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView$a;->a:Ljava/lang/String;

    .line 1813
    return-void
.end method
