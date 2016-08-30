.class public Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2667
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2678
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 2577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mUri:Landroid/net/Uri;

    .line 2567
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mWidth:I

    .line 2568
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mHeight:I

    .line 2578
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mUri:Landroid/net/Uri;

    .line 2579
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;II)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 2592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mUri:Landroid/net/Uri;

    .line 2567
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mWidth:I

    .line 2568
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mHeight:I

    .line 2593
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mUri:Landroid/net/Uri;

    .line 2594
    iput p2, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mWidth:I

    .line 2595
    iput p3, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mHeight:I

    .line 2596
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 2630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mUri:Landroid/net/Uri;

    .line 2567
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mWidth:I

    .line 2568
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mHeight:I

    .line 2631
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->readFromParcel(Landroid/os/Parcel;)V

    .line 2632
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2657
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mUri:Landroid/net/Uri;

    .line 2658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mWidth:I

    .line 2659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mHeight:I

    .line 2660
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 2636
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 2622
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mHeight:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 2613
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2652
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2653
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Image;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2654
    return-void
.end method
