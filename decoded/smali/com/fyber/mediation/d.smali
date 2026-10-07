.class public final Lcom/fyber/mediation/d;
.super Ljava/lang/Object;
.source "MediationCoordinator.java"


# static fields
.field public static final a:Lcom/fyber/mediation/d;


# instance fields
.field private b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/fyber/mediation/d;

    invoke-direct {v0}, Lcom/fyber/mediation/d;-><init>()V

    sput-object v0, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/d;->b:Z

    .line 47
    new-instance v0, Lcom/fyber/mediation/e;

    invoke-direct {v0, p0}, Lcom/fyber/mediation/e;-><init>(Lcom/fyber/mediation/d;)V

    iput-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    .line 60
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/fyber/mediation/d;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/fyber/ads/banners/a/c;Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fyber/ads/banners/a/c;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/banners/mediation/BannerWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p2}, Lcom/fyber/ads/banners/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 177
    sget v2, Lcom/fyber/mediation/a;->c:I

    invoke-virtual {p0, v0, v2}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 1130
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;

    move-result-object v0

    .line 1131
    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0, p1, p3}, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 178
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 180
    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/fyber/mediation/d;->b:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/mediation/g;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/g;-><init>(Lcom/fyber/mediation/d;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/fyber/mediation/d;->b:Z

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/d;->b:Z

    .line 71
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/mediation/f;

    invoke-direct {v1, p0, p1}, Lcom/fyber/mediation/f;-><init>(Lcom/fyber/mediation/d;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/fyber/ads/videos/mediation/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fyber/ads/videos/mediation/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    sget v0, Lcom/fyber/mediation/a;->a:I

    invoke-virtual {p0, p2, v0}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 1094
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v1

    .line 1095
    if-eqz v1, :cond_0

    .line 1096
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p3}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->a(Landroid/app/Activity;Lcom/fyber/ads/videos/mediation/b;Ljava/util/Map;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-direct {p0, p2}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    invoke-interface {p4, p2, v0, v1, p3}, Lcom/fyber/ads/videos/mediation/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/ads/videos/mediation/TPNVideoEvent;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/fyber/ads/videos/mediation/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fyber/ads/videos/mediation/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    sget v0, Lcom/fyber/mediation/a;->a:I

    invoke-virtual {p0, p2, v0}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 1085
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v0

    .line 1086
    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {v0, p1, p4, p3}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->a(Landroid/content/Context;Lcom/fyber/ads/videos/mediation/a;Ljava/util/Map;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-direct {p0, p2}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-interface {p4, p2, v0, v1, p3}, Lcom/fyber/ads/videos/mediation/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/fyber/ads/interstitials/a;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 167
    sget v2, Lcom/fyber/mediation/a;->b:I

    invoke-virtual {p0, v0, v2}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 1116
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;

    move-result-object v0

    .line 1117
    if-eqz v0, :cond_0

    .line 1118
    invoke-virtual {v0, p1, p2}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Landroid/app/Activity;Lcom/fyber/ads/interstitials/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 168
    goto :goto_0

    :cond_1
    move v0, v1

    .line 170
    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/fyber/ads/interstitials/a;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 158
    sget v2, Lcom/fyber/mediation/a;->b:I

    invoke-virtual {p0, v0, v2}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 1107
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0, p1, p2}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Landroid/content/Context;Lcom/fyber/ads/interstitials/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 159
    goto :goto_0

    :cond_1
    move v0, v1

    .line 161
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p2}, Lcom/fyber/mediation/MediationAdapter;->a(I)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
