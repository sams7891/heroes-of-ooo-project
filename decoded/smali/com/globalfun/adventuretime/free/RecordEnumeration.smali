.class public Lcom/globalfun/adventuretime/free/RecordEnumeration;
.super Ljava/lang/Object;
.source "RecordEnumeration.java"


# instance fields
.field private current:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private num:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->num:I

    .line 8
    iput v0, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->current:I

    .line 12
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->data:Ljava/util/List;

    .line 13
    iput p2, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->num:I

    .line 14
    return-void
.end method


# virtual methods
.method public hasNextElement()Z
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->current:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->num:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextRecord()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/globalfun/adventuretime/free/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 23
    iget v0, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->current:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->num:I

    if-ge v0, v1, :cond_0

    .line 25
    iget v0, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->current:I

    .line 27
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->data:Ljava/util/List;

    iget v1, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->current:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/globalfun/adventuretime/free/RecordStoreException;

    const-string v1, "Error in reading the next Record!"

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextRecordId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/globalfun/adventuretime/free/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 37
    iget v0, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->current:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->num:I

    if-ge v0, v1, :cond_0

    .line 39
    iget v0, p0, Lcom/globalfun/adventuretime/free/RecordEnumeration;->current:I

    return v0

    .line 43
    :cond_0
    new-instance v0, Lcom/globalfun/adventuretime/free/RecordStoreException;

    const-string v1, "Error in nextRecordId"

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
