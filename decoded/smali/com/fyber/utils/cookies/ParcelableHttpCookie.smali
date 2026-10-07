.class public Lcom/fyber/utils/cookies/ParcelableHttpCookie;
.super Ljava/lang/Object;
.source "ParcelableHttpCookie.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fyber/utils/cookies/ParcelableHttpCookie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/net/HttpCookie;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/fyber/utils/cookies/a;

    invoke-direct {v0}, Lcom/fyber/utils/cookies/a;-><init>()V

    sput-object v0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v4, Ljava/net/HttpCookie;

    invoke-direct {v4, v0, v3}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    .line 37
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setCommentURL(Ljava/lang/String;)V

    .line 39
    iget-object v3, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/net/HttpCookie;->setDiscard(Z)V

    .line 40
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 42
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setSecure(Z)V

    .line 45
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 47
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 39
    goto :goto_0

    :cond_2
    move v1, v2

    .line 44
    goto :goto_1
.end method

.method public constructor <init>(Ljava/net/HttpCookie;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/net/HttpCookie;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDiscard()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget-object v0, p0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    :cond_1
    move v1, v2

    .line 69
    goto :goto_1
.end method
