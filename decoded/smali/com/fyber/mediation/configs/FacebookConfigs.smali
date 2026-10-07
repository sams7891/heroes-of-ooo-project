.class public interface abstract annotation Lcom/fyber/mediation/configs/FacebookConfigs;
.super Ljava/lang/Object;
.source "FacebookConfigs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
    name = "FacebookAudienceNetwork"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fyber/mediation/configs/FacebookConfigs;
        bannerPlacementId = ""
        placementId = ""
        testDeviceHash = {}
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
.method public abstract bannerPlacementId()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "bannerPlacementId"
    .end annotation
.end method

.method public abstract placementId()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "placementId"
    .end annotation
.end method

.method public abstract testDeviceHash()[Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "testDeviceHash"
    .end annotation
.end method
