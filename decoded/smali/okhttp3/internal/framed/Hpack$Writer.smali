.class final Lokhttp3/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# static fields
.field private static final SEPARATED_TOKEN:B = 0x3at

.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000


# instance fields
.field dynamicTable:[Lokhttp3/internal/framed/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerStringToDynamicIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lokio/Buffer;


# direct methods
.method constructor <init>(ILokio/Buffer;)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "out"    # Lokio/Buffer;

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerStringToDynamicIndex:Ljava/util/Map;

    .line 371
    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/framed/Header;

    iput-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    .line 373
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    .line 374
    iput v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    .line 375
    iput v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    .line 384
    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    .line 385
    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 386
    iput-object p2, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    .line 387
    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
    .locals 1
    .param p1, "out"    # Lokio/Buffer;

    .prologue
    .line 378
    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/framed/Hpack$Writer;-><init>(ILokio/Buffer;)V

    .line 379
    return-void
.end method

.method private clearDynamicTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerStringToDynamicIndex:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 401
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    .line 402
    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    .line 403
    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    .line 404
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 8
    .param p1, "bytesToRecover"    # I

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_2

    .line 411
    iget-object v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_0
    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    if-lt v1, v3, :cond_0

    if-lez p1, :cond_0

    .line 412
    iget-object v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v3

    .line 413
    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aget-object v4, v4, v1

    iget v4, v4, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr v3, v4

    iput v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    .line 414
    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    .line 415
    add-int/lit8 v0, v0, 0x1

    .line 411
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 417
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v6, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v0

    iget v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    iget-object v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerStringToDynamicIndex:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 420
    .local v2, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lokio/ByteString;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 422
    .end local v2    # "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lokio/ByteString;Ljava/lang/Integer;>;"
    :cond_1
    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v3, v0

    iput v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    .line 424
    .end local v1    # "j":I
    :cond_2
    return v0
.end method

.method private insertIntoDynamicTable(Lokhttp3/internal/framed/Header;)V
    .locals 9
    .param p1, "entry"    # Lokhttp3/internal/framed/Header;

    .prologue
    .line 428
    iget v1, p1, Lokhttp3/internal/framed/Header;->hpackSize:I

    .line 431
    .local v1, "delta":I
    iget v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v1, v5, :cond_0

    .line 432
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Writer;->clearDynamicTable()V

    .line 454
    :goto_0
    return-void

    .line 437
    :cond_0
    iget v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v5, v1

    iget v6, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int v0, v5, v6

    .line 438
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lokhttp3/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 440
    iget v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v6, v6

    if-le v5, v6, :cond_2

    .line 441
    iget-object v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v2, v5, [Lokhttp3/internal/framed/Header;

    .line 442
    .local v2, "doubled":[Lokhttp3/internal/framed/Header;
    iget-object v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    const/4 v6, 0x0

    iget-object v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v7, v7

    iget-object v8, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v8, v8

    invoke-static {v5, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    iget-object v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerStringToDynamicIndex:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 444
    .local v4, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lokio/ByteString;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v7, v7

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 446
    .end local v4    # "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lokio/ByteString;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    .line 447
    iput-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    .line 449
    .end local v2    # "doubled":[Lokhttp3/internal/framed/Header;
    :cond_2
    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v5, v3, -0x1

    iput v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    .line 450
    .local v3, "index":I
    iget-object v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aput-object p1, v5, v3

    .line 451
    iget-object v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerStringToDynamicIndex:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/Hpack$Writer;->getHeaderString(Lokhttp3/internal/framed/Header;)Lokio/ByteString;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    .line 453
    iget v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v5, v1

    iput v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    goto :goto_0
.end method


# virtual methods
.method getHeaderString(Lokhttp3/internal/framed/Header;)Lokio/ByteString;
    .locals 5
    .param p1, "entry"    # Lokhttp3/internal/framed/Header;

    .prologue
    const/4 v4, 0x0

    .line 390
    iget-object v1, p1, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p1, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 391
    .local v0, "ret":[B
    iget-object v1, p1, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    iget-object v2, p1, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    iget-object v1, p1, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    .line 393
    iget-object v1, p1, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    iget-object v2, p1, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p1, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    .line 394
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    .line 393
    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method writeByteString(Lokio/ByteString;)V
    .locals 3
    .param p1, "data"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 510
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 511
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 461
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/framed/Header;

    .line 462
    .local v1, "header":Lokhttp3/internal/framed/Header;
    iget-object v8, v1, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v8}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v4

    .line 463
    .local v4, "name":Lokio/ByteString;
    iget-object v7, v1, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    .line 464
    .local v7, "value":Lokio/ByteString;
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$200()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 465
    .local v6, "staticIndex":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    .line 467
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 468
    invoke-virtual {p0, v7}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 460
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {p0, v1}, Lokhttp3/internal/framed/Hpack$Writer;->getHeaderString(Lokhttp3/internal/framed/Header;)Lokio/ByteString;

    move-result-object v2

    .line 471
    .local v2, "headerString":Lokio/ByteString;
    iget-object v8, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerStringToDynamicIndex:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 472
    .local v0, "dynamicIndex":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 474
    iget-object v8, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v8, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$000()[Lokhttp3/internal/framed/Header;

    move-result-object v9

    array-length v9, v9

    add-int/2addr v8, v9

    const/16 v9, 0x7f

    const/16 v10, 0x80

    invoke-virtual {p0, v8, v9, v10}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    goto :goto_1

    .line 478
    :cond_1
    iget-object v8, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 479
    invoke-virtual {p0, v4}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 480
    invoke-virtual {p0, v7}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 481
    invoke-direct {p0, v1}, Lokhttp3/internal/framed/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/framed/Header;)V

    goto :goto_1

    .line 485
    .end local v0    # "dynamicIndex":Ljava/lang/Integer;
    .end local v1    # "header":Lokhttp3/internal/framed/Header;
    .end local v2    # "headerString":Lokio/ByteString;
    .end local v4    # "name":Lokio/ByteString;
    .end local v6    # "staticIndex":Ljava/lang/Integer;
    .end local v7    # "value":Lokio/ByteString;
    :cond_2
    return-void
.end method

.method writeInt(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I

    .prologue
    .line 490
    if-ge p1, p2, :cond_0

    .line 491
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p1

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 506
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 497
    sub-int/2addr p1, p2

    .line 500
    :goto_1
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 501
    and-int/lit8 v0, p1, 0x7f

    .line 502
    .local v0, "b":I
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 503
    ushr-int/lit8 p1, p1, 0x7

    .line 504
    goto :goto_1

    .line 505
    .end local v0    # "b":I
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0
.end method
