.class public Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;,
        Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIA_TYPE_MOVIE:I = 0x2

.field public static final MEDIA_TYPE_MUSIC:I = 0x1

.field public static final MEDIA_TYPE_PHOTO:I


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mDate:J

.field private mDuration:J

.field private mHeight:I

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaType:I

.field private mMimeType:Ljava/lang/String;

.field private mSize:J

.field private mSubtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2547
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2558
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 2221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mUri:Landroid/net/Uri;

    .line 2199
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMediaType:I

    .line 2200
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 2201
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mTitle:Ljava/lang/String;

    .line 2202
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mArtist:Ljava/lang/String;

    .line 2203
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mAlbum:Ljava/lang/String;

    .line 2204
    iput-wide v2, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDate:J

    .line 2206
    iput-wide v2, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSize:J

    .line 2207
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mWidth:I

    .line 2208
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mHeight:I

    .line 2209
    iput-wide v2, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDuration:J

    .line 2211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mImages:Ljava/util/List;

    .line 2212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSubtitles:Ljava/util/List;

    .line 2222
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mUri:Landroid/net/Uri;

    .line 2223
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 2484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mUri:Landroid/net/Uri;

    .line 2199
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMediaType:I

    .line 2200
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 2201
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mTitle:Ljava/lang/String;

    .line 2202
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mArtist:Ljava/lang/String;

    .line 2203
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mAlbum:Ljava/lang/String;

    .line 2204
    iput-wide v2, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDate:J

    .line 2206
    iput-wide v2, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSize:J

    .line 2207
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mWidth:I

    .line 2208
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mHeight:I

    .line 2209
    iput-wide v2, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDuration:J

    .line 2211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mImages:Ljava/util/List;

    .line 2212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSubtitles:Ljava/util/List;

    .line 2485
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2486
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2524
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mUri:Landroid/net/Uri;

    .line 2526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMediaType:I

    .line 2527
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 2528
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mTitle:Ljava/lang/String;

    .line 2529
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mArtist:Ljava/lang/String;

    .line 2530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mAlbum:Ljava/lang/String;

    .line 2531
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDate:J

    .line 2533
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSize:J

    .line 2534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mWidth:I

    .line 2535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mHeight:I

    .line 2536
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDuration:J

    .line 2538
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mImages:Ljava/util/List;

    const-class v1, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 2539
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSubtitles:Ljava/util/List;

    const-class v1, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 2540
    return-void
.end method


# virtual methods
.method public addImage(Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;)V
    .registers 3
    .param p1, "image"    # Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2448
    return-void
.end method

.method public addSubtitle(Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;)V
    .registers 3
    .param p1, "subtitle"    # Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSubtitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2459
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 2490
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 2356
    iget-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDate:J

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 2436
    iget-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDuration:J

    return-wide v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 2416
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mHeight:I

    return v0
.end method

.method public getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mImages:Ljava/util/List;

    return-object v0
.end method

.method public getMediaType()I
    .registers 2

    .prologue
    .line 2252
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMediaType:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 2376
    iget-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSize:J

    return-wide v0
.end method

.method public getSubtitles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSubtitles:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 2396
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mWidth:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .registers 2
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mAlbum:Ljava/lang/String;

    .line 2327
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 2
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 2305
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mArtist:Ljava/lang/String;

    .line 2306
    return-void
.end method

.method public setDate(J)V
    .registers 4
    .param p1, "date"    # J

    .prologue
    .line 2346
    iput-wide p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDate:J

    .line 2347
    return-void
.end method

.method public setDuration(J)V
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 2427
    iput-wide p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDuration:J

    .line 2428
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 2407
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mHeight:I

    .line 2408
    return-void
.end method

.method public setMediaType(I)V
    .registers 2
    .param p1, "mediaType"    # I

    .prologue
    .line 2242
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMediaType:I

    .line 2243
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2263
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 2264
    return-void
.end method

.method public setSize(J)V
    .registers 4
    .param p1, "size"    # J

    .prologue
    .line 2367
    iput-wide p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSize:J

    .line 2368
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 2284
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mTitle:Ljava/lang/String;

    .line 2285
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .prologue
    .line 2387
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mWidth:I

    .line 2388
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2507
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2510
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2511
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2512
    iget-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2514
    iget-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2515
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2516
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2517
    iget-wide v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2519
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mImages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2520
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;->mSubtitles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2521
    return-void
.end method
