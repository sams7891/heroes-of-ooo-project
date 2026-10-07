.class public interface abstract annotation Lcom/fyber/mediation/configs/AdMobConfigs;
.super Ljava/lang/Object;
.source "AdMobConfigs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
    name = "AdMob"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fyber/mediation/configs/AdMobConfigs;
        adUnitId = ""
        addTestDevice = {}
        isCOPPAcompliant = false
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
.method public abstract adUnitId()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "ad.unit.id"
    .end annotation
.end method

.method public abstract addTestDevice()[Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "addTestDevice"
    .end annotation
.end method

.method public abstract isCOPPAcompliant()Z
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "isCOPPAcompliant"
    .end annotation
.end method
