.class public interface abstract annotation Lcom/fyber/mediation/configs/ChartboostConfigs;
.super Ljava/lang/Object;
.source "ChartboostConfigs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
    name = "Chartboost"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fyber/mediation/configs/ChartboostConfigs;
        appId = ""
        appSignature = ""
        cacheInterstitials = true
        cacheRewardedVideo = true
        logLevel = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract appId()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "AppId"
    .end annotation
.end method

.method public abstract appSignature()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "AppSignature"
    .end annotation
.end method

.method public abstract cacheInterstitials()Z
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "CacheInterstitials"
    .end annotation
.end method

.method public abstract cacheRewardedVideo()Z
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "CacheRewardedVideo"
    .end annotation
.end method

.method public abstract logLevel()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "LogLevel"
    .end annotation
.end method
