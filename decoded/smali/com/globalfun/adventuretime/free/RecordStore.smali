.class public Lcom/globalfun/adventuretime/free/RecordStore;
.super Ljava/lang/Object;
.source "RecordStore.java"


# static fields
.field private static current:I

.field private static data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private static openRecordStoreName:Ljava/lang/String;

.field private static prefix:Ljava/lang/String;

.field private static store:Lcom/globalfun/adventuretime/free/RecordStore;

.field private static totalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    .line 14
    sput v1, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    .line 15
    sput v1, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    .line 17
    const-string v0, "recordStore"

    sput-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->prefix:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/globalfun/adventuretime/free/RecordStore;

    invoke-direct {v0}, Lcom/globalfun/adventuretime/free/RecordStore;-><init>()V

    sput-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->store:Lcom/globalfun/adventuretime/free/RecordStore;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->openRecordStoreName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CreateNewRecordStore()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    sput v1, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    .line 139
    sget-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    sput v1, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    .line 141
    return-void
.end method

.method public static deleteRecordStore(Ljava/lang/String;)V
    .locals 3
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/globalfun/adventuretime/free/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/globalfun/adventuretime/free/RecordStore;->prefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Main;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/globalfun/adventuretime/free/RecordStoreNotFoundException;

    const-string v1, "did not delete RecordStore"

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/RecordStoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    return-void
.end method

.method static final getIntBytes(I[BI)[B
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 197
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 198
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 199
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 200
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 201
    return-object p1
.end method

.method public static listRecordStores()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 83
    sget-object v3, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v3}, Lcom/globalfun/adventuretime/free/Main;->fileList()[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "allfiles":[Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 85
    .local v2, "tmp":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/util/Vector;->trimToSize()V

    .line 93
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 94
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 98
    return-object v0

    .line 87
    :cond_0
    aget-object v3, v0, v1

    sget-object v4, Lcom/globalfun/adventuretime/free/RecordStore;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    new-instance v3, Ljava/lang/String;

    aget-object v4, v0, v1

    sget-object v5, Lcom/globalfun/adventuretime/free/RecordStore;->prefix:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, ".dat"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static openRecordStore(Ljava/lang/String;Z)Lcom/globalfun/adventuretime/free/RecordStore;
    .locals 5
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .param p1, "createIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/globalfun/adventuretime/free/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v2, 0x0

    :try_start_0
    sput v2, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    .line 114
    sget-object v2, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/globalfun/adventuretime/free/RecordStore;->prefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/globalfun/adventuretime/free/Main;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 116
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/globalfun/adventuretime/free/RecordStore;->readDataFromInputStream(Ljava/io/InputStream;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/globalfun/adventuretime/free/RecordStore;->prefix:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/globalfun/adventuretime/free/RecordStore;->openRecordStoreName:Ljava/lang/String;

    .line 118
    sget-object v2, Lcom/globalfun/adventuretime/free/RecordStore;->store:Lcom/globalfun/adventuretime/free/RecordStore;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    if-eqz p1, :cond_0

    .line 124
    invoke-static {}, Lcom/globalfun/adventuretime/free/RecordStore;->CreateNewRecordStore()V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/globalfun/adventuretime/free/RecordStore;->prefix:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/globalfun/adventuretime/free/RecordStore;->openRecordStoreName:Ljava/lang/String;

    .line 126
    sget-object v2, Lcom/globalfun/adventuretime/free/RecordStore;->store:Lcom/globalfun/adventuretime/free/RecordStore;

    goto :goto_0

    .line 130
    :cond_0
    new-instance v2, Lcom/globalfun/adventuretime/free/RecordStoreNotFoundException;

    const-string v3, "Could not Find the recordStore"

    invoke-direct {v2, v3}, Lcom/globalfun/adventuretime/free/RecordStoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static final parseInt([BI)I
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 192
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private static readDataFromInputStream(Ljava/io/InputStream;)V
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 145
    sput v7, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, "read":I
    const/4 v5, 0x0

    .line 148
    .local v5, "totalRead":I
    const/16 v7, 0x400

    new-array v4, v7, [B

    .line 149
    .local v4, "tmp":[B
    const/16 v7, 0x5000

    new-array v6, v7, [B

    .line 153
    .local v6, "totaldata":[B
    :cond_0
    :goto_0
    if-ne v2, v8, :cond_2

    .line 164
    const/4 v3, 0x0

    .line 165
    .local v3, "readOffset":I
    const/4 v1, 0x1

    .line 166
    .local v1, "length":I
    :try_start_0
    sget-object v7, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 167
    const/4 v7, 0x0

    sput v7, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    .line 168
    :cond_1
    :goto_1
    if-lt v3, v5, :cond_3

    .line 182
    sput v5, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    .line 188
    .end local v1    # "length":I
    .end local v3    # "readOffset":I
    :goto_2
    return-void

    .line 155
    :cond_2
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 156
    if-le v2, v8, :cond_0

    .line 158
    const/4 v7, 0x0

    invoke-static {v4, v7, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    add-int/2addr v5, v2

    goto :goto_0

    .line 170
    .restart local v1    # "length":I
    .restart local v3    # "readOffset":I
    :cond_3
    invoke-static {v6, v3}, Lcom/globalfun/adventuretime/free/RecordStore;->parseInt([BI)I

    move-result v1

    .line 171
    add-int/lit8 v3, v3, 0x4

    .line 172
    if-lez v1, :cond_1

    .line 174
    sget-object v7, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    new-array v8, v1, [B

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v7, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    sget v8, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v3, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    add-int/2addr v3, v1

    .line 179
    sget v7, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/globalfun/adventuretime/free/RecordStore;->current:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    .end local v1    # "length":I
    .end local v3    # "readOffset":I
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static saveRecordStoreToFile()V
    .locals 8

    .prologue
    .line 215
    :try_start_0
    sget-object v5, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/globalfun/adventuretime/free/RecordStore;->openRecordStoreName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/globalfun/adventuretime/free/Main;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 218
    .local v4, "os":Ljava/io/OutputStream;
    sget v5, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    sget v6, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    new-array v0, v5, [B

    .line 219
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 221
    .local v3, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v5, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    if-lt v2, v5, :cond_0

    .line 232
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 233
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 234
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 242
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    .end local v3    # "offset":I
    :goto_1
    return-void

    .line 224
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v3    # "offset":I
    :cond_0
    sget-object v5, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v5, v5

    invoke-static {v5, v0, v3}, Lcom/globalfun/adventuretime/free/RecordStore;->getIntBytes(I[BI)[B

    .line 225
    add-int/lit8 v3, v3, 0x4

    .line 227
    sget-object v5, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v5, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v5, v5

    invoke-static {v6, v7, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    sget-object v5, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v5, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v5

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    .end local v3    # "offset":I
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addRecord([BII)I
    .locals 1
    .param p1, "recordData"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I

    .prologue
    .line 67
    sget v0, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    add-int/2addr v0, p3

    sput v0, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    .line 69
    sget-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget v0, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    .line 71
    invoke-static {}, Lcom/globalfun/adventuretime/free/RecordStore;->saveRecordStoreToFile()V

    .line 72
    sget v0, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public closeRecordStore()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    .line 31
    sget-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    return-void
.end method

.method public enumerateRecords(Lcom/globalfun/adventuretime/free/RecordFilter;Lcom/globalfun/adventuretime/free/RecordComparator;Z)Lcom/globalfun/adventuretime/free/RecordEnumeration;
    .locals 3
    .param p1, "filter"    # Lcom/globalfun/adventuretime/free/RecordFilter;
    .param p2, "comparator"    # Lcom/globalfun/adventuretime/free/RecordComparator;
    .param p3, "keepUpdated"    # Z

    .prologue
    .line 25
    new-instance v0, Lcom/globalfun/adventuretime/free/RecordEnumeration;

    sget-object v1, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    sget v2, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    invoke-direct {v0, v1, v2}, Lcom/globalfun/adventuretime/free/RecordEnumeration;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public getNumRecords()I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecord(I)[B
    .locals 1
    .param p1, "recordId"    # I

    .prologue
    .line 36
    sget-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getRecord(I[BI)[B
    .locals 3
    .param p1, "recordId"    # I
    .param p2, "arr"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 41
    sget-object v1, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 42
    .local v0, "from":[B
    const/4 v1, 0x0

    array-length v2, p2

    invoke-static {v0, p3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-object p2
.end method

.method public setRecord(I[BII)V
    .locals 2
    .param p1, "recordId"    # I
    .param p2, "newData"    # [B
    .param p3, "offset"    # I
    .param p4, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/globalfun/adventuretime/free/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 48
    sget v0, Lcom/globalfun/adventuretime/free/RecordStore;->current:I

    if-ge p1, v0, :cond_0

    .line 51
    sget v1, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    sget-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    sub-int v0, v1, v0

    sput v0, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    .line 54
    sget v0, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    add-int/2addr v0, p4

    sput v0, Lcom/globalfun/adventuretime/free/RecordStore;->totalSize:I

    .line 55
    sget-object v0, Lcom/globalfun/adventuretime/free/RecordStore;->data:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/globalfun/adventuretime/free/RecordStore;->saveRecordStoreToFile()V

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/globalfun/adventuretime/free/RecordStoreException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
