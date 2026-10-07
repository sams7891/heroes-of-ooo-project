.class public final Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
.super Ljava/lang/Object;
.source "MraidMediaProcessor.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$4;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$b;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/rendering/RenderView;

.field private c:Lcom/inmobi/rendering/mraid/g;

.field private d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

.field private e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

.field private f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$b;

.field private g:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

.field private h:Lcom/inmobi/rendering/mraid/f;

.field private i:Lcom/inmobi/rendering/mraid/b;

.field private j:Z

.field private k:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/rendering/mraid/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    .line 303
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    .line 304
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    .line 305
    new-instance v0, Lcom/inmobi/rendering/mraid/f;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/f;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    .line 306
    new-instance v0, Lcom/inmobi/rendering/mraid/b;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Lcom/inmobi/rendering/mraid/b;

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Z

    .line 308
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/mraid/g;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Lcom/inmobi/rendering/mraid/g;)Lcom/inmobi/rendering/mraid/g;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireDeviceVolumeChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 870
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireDeviceMuteChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 812
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 813
    :cond_1
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ID ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "); no playback URL for this ID"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO_VIDEO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    if-ne v0, p4, :cond_2

    const-string v0, "playVideo"

    :goto_0
    invoke-virtual {v2, p1, v3, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 842
    :goto_1
    return v0

    .line 813
    :cond_2
    const-string v0, "playAudio"

    goto :goto_0

    .line 817
    :cond_3
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 818
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v3, "Cannot create media player - limit on number of media players reached"

    sget-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO_VIDEO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    if-ne v0, p4, :cond_4

    const-string v0, "playVideo"

    :goto_2
    invoke-virtual {v2, p1, v3, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 819
    goto :goto_1

    .line 818
    :cond_4
    const-string v0, "playAudio"

    goto :goto_2

    .line 822
    :cond_5
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/g;

    .line 823
    if-nez v0, :cond_8

    .line 824
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    invoke-virtual {v2}, Lcom/inmobi/rendering/mraid/f;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 825
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v4, "Only a single instance of full-screen media playback is allowed. Releasing the current active player ..."

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2, v1}, Lcom/inmobi/rendering/mraid/g;->a(Z)V

    .line 830
    :cond_6
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v3, "Creating a new media player instance!"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance v1, Lcom/inmobi/rendering/mraid/g;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    invoke-direct {v1, p5, v2}, Lcom/inmobi/rendering/mraid/g;-><init>(Landroid/content/Context;Lcom/inmobi/rendering/RenderView;)V

    iput-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    .line 837
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 838
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->d:Lcom/inmobi/rendering/mraid/b;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/f;Lcom/inmobi/rendering/mraid/b;)V

    .line 839
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v0, v0, Lcom/inmobi/rendering/mraid/g;->d:Lcom/inmobi/rendering/mraid/b;

    iput-object v0, v1, Lcom/inmobi/rendering/mraid/g;->d:Lcom/inmobi/rendering/mraid/b;

    .line 842
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 833
    :cond_8
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reusing media player ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") from the pool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    goto :goto_3
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 882
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireHeadphonePluggedEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 735
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iget-object v2, v2, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iget-object v3, v0, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)Z

    move-result v0

    .line 782
    :cond_1
    :goto_0
    return v0

    .line 738
    :cond_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reusing media player ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v4, v4, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") from the pool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iget-object v2, v2, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->g:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 741
    :cond_3
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v4, v4, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$4;->a:[I

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v2, v2, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v2}, Lcom/inmobi/rendering/mraid/g$d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 744
    :pswitch_0
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1}, Lcom/inmobi/rendering/mraid/g;->start()V

    .line 745
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k()V

    goto :goto_0

    .line 749
    :pswitch_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-boolean v1, v1, Lcom/inmobi/rendering/mraid/g;->h:Z

    if-eqz v1, :cond_4

    .line 750
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1}, Lcom/inmobi/rendering/mraid/g;->start()V

    .line 755
    :goto_1
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k()V

    goto/16 :goto_0

    .line 752
    :cond_4
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/rendering/mraid/f;->d:Z

    .line 753
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iput-object v2, v1, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    goto :goto_1

    .line 759
    :pswitch_2
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iget-boolean v1, v1, Lcom/inmobi/rendering/mraid/f;->f:Z

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1}, Lcom/inmobi/rendering/mraid/g;->start()V

    .line 761
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k()V

    goto/16 :goto_0

    .line 766
    :pswitch_3
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k()V

    goto/16 :goto_0

    .line 775
    :cond_5
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Lcom/inmobi/rendering/mraid/b;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/f;Lcom/inmobi/rendering/mraid/b;)V

    .line 776
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1}, Lcom/inmobi/rendering/mraid/g;->g()V

    goto/16 :goto_0

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic c(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;
    .locals 5

    .prologue
    .line 846
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking for media player with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    if-eqz v0, :cond_2

    .line 849
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 850
    :cond_0
    const-string v0, "anonymous"

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning media render view with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    .line 866
    :goto_0
    return-object v0

    .line 854
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v2, "Cannot find ID to look up the media render view"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const/4 v0, 0x0

    goto :goto_0

    .line 860
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/g;

    .line 861
    if-eqz v0, :cond_3

    .line 862
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning media render view with ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_3
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v3, "No media render view found!"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const v4, -0x1869f

    .line 786
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->f()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 788
    if-eqz v0, :cond_1

    .line 790
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 791
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 793
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Lcom/inmobi/rendering/mraid/b;

    iget v1, v1, Lcom/inmobi/rendering/mraid/b;->c:I

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Lcom/inmobi/rendering/mraid/b;

    iget v3, v3, Lcom/inmobi/rendering/mraid/b;->d:I

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 794
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 796
    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Lcom/inmobi/rendering/mraid/b;

    iget v3, v3, Lcom/inmobi/rendering/mraid/b;->a:I

    if-eq v4, v3, :cond_0

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Lcom/inmobi/rendering/mraid/b;

    iget v3, v3, Lcom/inmobi/rendering/mraid/b;->b:I

    if-ne v4, v3, :cond_2

    .line 797
    :cond_0
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 798
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 804
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    :cond_1
    return-void

    .line 800
    :cond_2
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Lcom/inmobi/rendering/mraid/b;

    iget v1, v1, Lcom/inmobi/rendering/mraid/b;->a:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 801
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Lcom/inmobi/rendering/mraid/b;

    iget v1, v1, Lcom/inmobi/rendering/mraid/b;->b:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/inmobi/rendering/mraid/b;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Lcom/inmobi/rendering/mraid/b;

    .line 321
    return-void
.end method

.method public a(Lcom/inmobi/rendering/mraid/f;)V
    .locals 1

    .prologue
    .line 315
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Z

    .line 317
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 684
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    .line 686
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 689
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 456
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 457
    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "pauseMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_0
    return-void

    .line 462
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->b:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_3

    .line 464
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_3

    .line 466
    :cond_1
    iget-boolean v1, v0, Lcom/inmobi/rendering/mraid/g;->h:Z

    if-nez v1, :cond_2

    .line 467
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/inmobi/rendering/mraid/f;->d:Z

    .line 468
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iput-object v1, v0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "pauseMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->pause()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 481
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 482
    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "seekMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :goto_0
    return-void

    .line 487
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "seekMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_2
    mul-int/lit16 v1, p3, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)V
    .locals 9

    .prologue
    const v8, 0x1020002

    const/4 v7, 0x3

    const/4 v6, -0x1

    .line 325
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    .line 330
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Lcom/inmobi/rendering/mraid/b;

    .line 332
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/inmobi/rendering/RenderView;->setAdActiveFlag(Z)V

    .line 333
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media player state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v5, v5, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/f;Lcom/inmobi/rendering/mraid/b;)V

    .line 347
    :goto_1
    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO_VIDEO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    if-ne v2, p3, :cond_2

    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "mp4"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "avi"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "m4v"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 348
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v7}, Lcom/inmobi/rendering/mraid/g;->c(I)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/g;->g:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/f;Lcom/inmobi/rendering/mraid/b;)V

    goto :goto_1

    .line 352
    :cond_2
    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    if-ne v2, p3, :cond_3

    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "mp3"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 353
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v7}, Lcom/inmobi/rendering/mraid/g;->c(I)V

    goto/16 :goto_0

    .line 357
    :cond_3
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v2, v3, :cond_4

    .line 360
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->b()V

    goto/16 :goto_0

    .line 364
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/f;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 365
    invoke-virtual {p4, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 366
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 367
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 368
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2, v1}, Lcom/inmobi/rendering/mraid/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 371
    new-instance v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$1;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$1;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 377
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 378
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 380
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Landroid/view/ViewGroup;)V

    .line 383
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->requestFocus()Z

    .line 384
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$2;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$2;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 418
    :goto_2
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Lcom/inmobi/rendering/mraid/g$c;)V

    .line 451
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->a()V

    goto/16 :goto_0

    .line 396
    :cond_5
    invoke-virtual {p4, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 398
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 399
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v1, Lcom/inmobi/rendering/mraid/b;->c:I

    iget v5, v1, Lcom/inmobi/rendering/mraid/b;->d:I

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 400
    iget v4, v1, Lcom/inmobi/rendering/mraid/b;->a:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 401
    iget v4, v1, Lcom/inmobi/rendering/mraid/b;->b:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 402
    iget v4, v1, Lcom/inmobi/rendering/mraid/b;->c:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 403
    iget v1, v1, Lcom/inmobi/rendering/mraid/b;->d:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 405
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 406
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 407
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 408
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 409
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 410
    iget-object v4, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v4, v1}, Lcom/inmobi/rendering/mraid/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/mraid/g;->a(Landroid/view/ViewGroup;)V

    .line 413
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 414
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->clearFocus()V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 586
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 587
    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "closeMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :goto_0
    return-void

    .line 592
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "closeMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_2
    invoke-virtual {v0, p3}, Lcom/inmobi/rendering/mraid/g;->a(Z)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Z

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 654
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/g;

    .line 656
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 657
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/rendering/mraid/g;->a(Z)V

    goto :goto_0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    .line 662
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 699
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$b;

    if-nez v0, :cond_0

    .line 700
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 701
    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$b;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$b;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$b;

    .line 702
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 704
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 499
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 500
    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "muteMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 505
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "muteMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->d()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 553
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 554
    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "setMediaVolume"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_0
    return-void

    .line 559
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "setMediaVolume"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {v0, p3}, Lcom/inmobi/rendering/mraid/g;->b(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->c()V

    .line 669
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 720
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    .line 722
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 725
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 517
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 518
    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "unMuteMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :goto_0
    return-void

    .line 523
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "unMuteMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->e()V

    goto :goto_0
.end method

.method public d()Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 535
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v1

    .line 536
    if-nez v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Invalid property ID"

    const-string v3, "isMediaMuted"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_0
    return v0

    .line 541
    :cond_0
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media player state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v3, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v3, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v3, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v2, v3, :cond_2

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Invalid player state"

    const-string v3, "isMediaMuted"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_2
    iget-boolean v0, v1, Lcom/inmobi/rendering/mraid/g;->b:Z

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 570
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v1

    .line 571
    if-nez v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Invalid property ID"

    const-string v3, "getMediaVolume"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 576
    :cond_1
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media player state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v3, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v2, v3, :cond_2

    .line 578
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Invalid player state"

    const-string v3, "getMediaVolume"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_2
    iget-boolean v2, v1, Lcom/inmobi/rendering/mraid/g;->b:Z

    if-nez v2, :cond_0

    iget v0, v1, Lcom/inmobi/rendering/mraid/g;->a:I

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 679
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 680
    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    if-eqz v0, :cond_0

    .line 693
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    .line 696
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 603
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 604
    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "hideMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :goto_0
    return-void

    .line 609
    :cond_0
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_1

    .line 610
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "hideMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_1
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 615
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v2, "Media player is already hidden"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->c()V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$b;

    if-eqz v0, :cond_0

    .line 708
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$b;

    .line 711
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 622
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 623
    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "showMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :goto_0
    return-void

    .line 628
    :cond_0
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_1

    .line 629
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "showMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/f;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 634
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Show failed. There is already a video playing"

    const-string v2, "showMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_2
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->e:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_3

    .line 639
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v2, "Media player is already showing"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_3
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->k:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    .line 645
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->b()V

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 715
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 716
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    if-eqz v0, :cond_0

    .line 729
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    .line 732
    :cond_0
    return-void
.end method
