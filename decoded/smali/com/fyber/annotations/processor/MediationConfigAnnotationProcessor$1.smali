.class Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor$1;
.super Ljava/lang/Object;
.source "MediationConfigAnnotationProcessor.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;


# direct methods
.method constructor <init>(Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor$1;->this$0:Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor$1;->apply(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 286
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "string":Ljava/lang/String;
    const-string v1, "\".*\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    .end local v0    # "string":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "string":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
