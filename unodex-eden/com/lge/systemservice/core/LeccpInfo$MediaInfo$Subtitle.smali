.class public Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;
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
    name = "Subtitle"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentId:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2763
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2774
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2688
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentId:Ljava/lang/String;

    .line 2689
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentType:Ljava/lang/String;

    .line 2729
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->readFromParcel(Landroid/os/Parcel;)V

    .line 2730
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 2700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2688
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentId:Ljava/lang/String;

    .line 2689
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentType:Ljava/lang/String;

    .line 2701
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentId:Ljava/lang/String;

    .line 2702
    iput-object p2, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentType:Ljava/lang/String;

    .line 2703
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2754
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentId:Ljava/lang/String;

    .line 2755
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentType:Ljava/lang/String;

    .line 2756
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 2734
    const/4 v0, 0x0

    return v0
.end method

.method public getContentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2750
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$MediaInfo$Subtitle;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2751
    return-void
.end method
