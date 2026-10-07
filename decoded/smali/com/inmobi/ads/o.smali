.class Lcom/inmobi/ads/o;
.super Lcom/inmobi/ads/AdUnit;
.source "NativeAdUnit.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/o;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/o;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/inmobi/ads/m;

.field private g:Ljava/net/URL;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/inmobi/ads/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/inmobi/ads/AdUnit$a;)V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/o;->b:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/o;->c:Ljava/util/WeakHashMap;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/o;->i:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/o;->j:J

    .line 48
    return-void
.end method

.method private b(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;)V

    .line 229
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/ads/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recordEvent(8)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inmobi/ads/o;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recordEvent(8, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method A()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 183
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression record requested for Ad unit ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 186
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 187
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inmobi/rendering/RenderView;->a(Z)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/ads/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recordEvent(18)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/inmobi/ads/o;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/o;->g:Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 196
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/o;->g:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Z)V

    .line 199
    :cond_1
    return-void
.end method

.method B()V
    .locals 4

    .prologue
    .line 242
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    const-string v2, "Open landing page requested"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/c/e;

    const-string v2, "ads"

    const-string v3, "OpenLandingPage"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 245
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/ads/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "openLandingPage()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 249
    :cond_1
    return-void
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const-string v0, "native"

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 165
    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 170
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 171
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/inmobi/ads/o;->f:Lcom/inmobi/ads/m;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/m;->a(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/inmobi/ads/o;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/inmobi/ads/o;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/o;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 177
    iget-object v1, p0, Lcom/inmobi/ads/o;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/net/URL;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 131
    const-string v4, "customScript"

    if-eqz p3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "customUrl"

    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v1, "ads"

    const-string v2, "TrackImpression"

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    iget-object v0, p0, Lcom/inmobi/ads/o;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 136
    const/4 v1, 0x0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 141
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 143
    :cond_0
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Landroid/view/View;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/o;->a(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/inmobi/ads/o;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/inmobi/ads/o;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iput-object p2, p0, Lcom/inmobi/ads/o;->g:Ljava/net/URL;

    .line 149
    iput-object p3, p0, Lcom/inmobi/ads/o;->h:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/o;->f:Lcom/inmobi/ads/m;

    invoke-virtual {v0, p1, p0}, Lcom/inmobi/ads/m;->a(Landroid/view/View;Lcom/inmobi/ads/o;)V

    .line 151
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 162
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 131
    goto :goto_0

    :cond_3
    move v1, v2

    .line 132
    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_1

    .line 156
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    const-string v2, "Please wait for the ad to finish loading before making a call to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public a(Lcom/inmobi/ads/a;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)V

    .line 117
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/inmobi/ads/o;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->b(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 202
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    const-string v4, "Click record requested"

    invoke-static {v0, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 204
    const-string v4, "customScript"

    if-eqz p3, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "customUrl"

    if-eqz p2, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "ads"

    const-string v4, "ReportClick"

    invoke-virtual {v0, v2, v4, v3}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-ne v0, v2, :cond_5

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->d()V

    .line 211
    invoke-direct {p0, p1}, Lcom/inmobi/ads/o;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 214
    if-eqz p3, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 217
    :cond_2
    if-eqz p2, :cond_3

    .line 218
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Z)V

    .line 224
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v2

    .line 204
    goto :goto_0

    .line 221
    :cond_5
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/c/e;

    const-string v2, "ads"

    const-string v3, "InvalidClickReport"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 222
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    const-string v2, "reportAdClick call made in wrong state"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Lcom/inmobi/ads/a;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->b(Lcom/inmobi/ads/a;)Z

    move-result v1

    .line 94
    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    const-string v1, "contextCode"

    .line 99
    const-string v1, "namespace"

    .line 101
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/ads/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v2, "contextCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/o;->d:Ljava/lang/String;

    .line 104
    const-string v2, "namespace"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/o;->e:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/inmobi/ads/o;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/o;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/o;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/o;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    const-string v4, "Exception while parsing ad."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 291
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->u()V

    .line 293
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 294
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->w()V

    .line 296
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->a()V

    .line 297
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->r()V

    .line 299
    :cond_0
    return-void
.end method

.method protected d()Lcom/inmobi/rendering/RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->INLINE:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    return-object v0
.end method

.method public e(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->e(Lcom/inmobi/rendering/RenderView;)V

    .line 304
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 305
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/o;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/o;->i:I

    .line 306
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 307
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->b()V

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 309
    iget v0, p0, Lcom/inmobi/ads/o;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/o;->i:I

    goto :goto_0
.end method

.method public f(Lcom/inmobi/rendering/RenderView;)V
    .locals 4

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 316
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 317
    iget v0, p0, Lcom/inmobi/ads/o;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/o;->i:I

    .line 319
    iget v0, p0, Lcom/inmobi/ads/o;->i:I

    if-nez v0, :cond_0

    .line 320
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 322
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdRendered"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 325
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->c()V

    .line 328
    :cond_0
    return-void
.end method

.method public o()V
    .locals 6

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/inmobi/ads/o;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->l()Lcom/inmobi/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->f()I

    move-result v0

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/o;->j:J

    sub-long/2addr v2, v4

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 55
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad cannot be refreshed before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 56
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad cannot be refreshed before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/o;->j:J

    .line 61
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->o()V

    .line 62
    new-instance v0, Lcom/inmobi/ads/m;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->l()Lcom/inmobi/ads/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->l()Lcom/inmobi/ads/b$f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/ads/m;-><init>(Lcom/inmobi/ads/b$f;)V

    iput-object v0, p0, Lcom/inmobi/ads/o;->f:Lcom/inmobi/ads/m;

    goto :goto_0
.end method

.method protected t()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->k()V

    .line 254
    iget-object v0, p0, Lcom/inmobi/ads/o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 255
    iget-object v0, p0, Lcom/inmobi/ads/o;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 257
    iget-object v0, p0, Lcom/inmobi/ads/o;->f:Lcom/inmobi/ads/m;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/inmobi/ads/o;->f:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->b()V

    .line 261
    :cond_0
    iput-object v1, p0, Lcom/inmobi/ads/o;->h:Ljava/lang/String;

    .line 262
    iput-object v1, p0, Lcom/inmobi/ads/o;->g:Ljava/net/URL;

    .line 263
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 269
    :cond_1
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 270
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/inmobi/ads/o;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 71
    iget-object v1, p0, Lcom/inmobi/ads/o;->f:Lcom/inmobi/ads/m;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/inmobi/ads/o;->f:Lcom/inmobi/ads/m;

    invoke-virtual {v1, v0, p0}, Lcom/inmobi/ads/m;->a(Landroid/view/View;Lcom/inmobi/ads/o;)V

    .line 76
    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/inmobi/ads/o;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/inmobi/ads/o;->f:Lcom/inmobi/ads/m;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/inmobi/ads/o;->f:Lcom/inmobi/ads/m;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/m;->a(Landroid/view/View;)V

    .line 88
    :cond_0
    return-void
.end method

.method public z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
