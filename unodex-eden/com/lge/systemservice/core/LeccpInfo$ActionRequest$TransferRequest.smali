.class public Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;
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
    name = "TransferRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mTransferActionType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1910
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1921
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1802
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mTransferActionType:I

    .line 1803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mContents:Ljava/util/List;

    .line 1812
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1802
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mTransferActionType:I

    .line 1803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mContents:Ljava/util/List;

    .line 1876
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 1877
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1901
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mTransferActionType:I

    .line 1902
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mContents:Ljava/util/List;

    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1903
    return-void
.end method


# virtual methods
.method public addContentUri(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mContents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1845
    return-void
.end method

.method public addContentUris(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1854
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mContents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1855
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1881
    const/4 v0, 0x0

    return v0
.end method

.method public getActionRequest()Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    .registers 2

    .prologue
    .line 1931
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;-><init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;)V

    return-object v0
.end method

.method public getContentUris()Ljava/util/List;
    .registers 3
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
    .line 1864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1865
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mContents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1867
    return-object v0
.end method

.method public getTransferActionType()I
    .registers 2

    .prologue
    .line 1834
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mTransferActionType:I

    return v0
.end method

.method public setTransferActionType(I)V
    .registers 2
    .param p1, "transferActiontype"    # I

    .prologue
    .line 1823
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mTransferActionType:I

    .line 1824
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1896
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mTransferActionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1897
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;->mContents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1898
    return-void
.end method
