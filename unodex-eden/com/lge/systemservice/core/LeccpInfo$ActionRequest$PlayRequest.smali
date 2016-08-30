.class public Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMediaInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayActionType:I

.field private mPosition:I

.field private mVolume:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1770
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1781
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1581
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPlayActionType:I

    .line 1582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mMediaInfos:Ljava/util/List;

    .line 1583
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPosition:I

    .line 1584
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mVolume:I

    .line 1593
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1581
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPlayActionType:I

    .line 1582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mMediaInfos:Ljava/util/List;

    .line 1583
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPosition:I

    .line 1584
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mVolume:I

    .line 1732
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 1733
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPlayActionType:I

    .line 1760
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mMediaInfos:Ljava/util/List;

    const-class v1, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPosition:I

    .line 1762
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mVolume:I

    .line 1763
    return-void
.end method


# virtual methods
.method public addContentUri(Landroid/net/Uri;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1638
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1639
    :cond_8
    sget-object v1, Lcom/lge/systemservice/core/LeccpInfo;->TAG:Ljava/lang/String;

    const-string v2, "PlayRequest addContentUri null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :goto_f
    return-void

    .line 1643
    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1644
    sget-object v1, Lcom/lge/systemservice/core/LeccpInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PlayRequest addContentUri invalid uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1648
    :cond_31
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;-><init>(Landroid/net/Uri;)V

    .line 1649
    .local v0, "mediaInfo":Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mMediaInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public addMediaInfo(Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;)V
    .registers 3
    .param p1, "mediaInfo"    # Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mMediaInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1737
    const/4 v0, 0x0

    return v0
.end method

.method public getActionRequest()Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    .registers 2

    .prologue
    .line 1791
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;-><init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;)V

    return-object v0
.end method

.method public getContentUris()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1659
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mMediaInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1663
    return-object v1

    .line 1660
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;

    .line 1661
    .local v0, "mediaInfo":Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;
    invoke-virtual {v0}, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public getMediaInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mMediaInfos:Ljava/util/List;

    return-object v0
.end method

.method public getPlayActionType()I
    .registers 2

    .prologue
    .line 1628
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPlayActionType:I

    return v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 1703
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPosition:I

    return v0
.end method

.method public getVolume()I
    .registers 2

    .prologue
    .line 1723
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mVolume:I

    return v0
.end method

.method public setPlayActionType(I)V
    .registers 2
    .param p1, "playActionType"    # I

    .prologue
    .line 1610
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPlayActionType:I

    .line 1611
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 1693
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPosition:I

    .line 1694
    return-void
.end method

.method public setVolume(I)V
    .registers 2
    .param p1, "volume"    # I

    .prologue
    .line 1713
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mVolume:I

    .line 1714
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1752
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPlayActionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1753
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mMediaInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1754
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1755
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;->mVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1756
    return-void
.end method
