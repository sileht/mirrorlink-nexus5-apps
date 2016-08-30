.class Lcom/lge/systemui/SimpleButtonItem$1;
.super Ljava/lang/Object;
.source "SimpleButtonItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/SimpleButtonItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/systemui/SimpleButtonItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/systemui/SimpleButtonItem;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    new-instance v0, Lcom/lge/systemui/SimpleButtonItem;

    invoke-direct {v0}, Lcom/lge/systemui/SimpleButtonItem;-><init>()V

    .line 43
    .local v0, "r":Lcom/lge/systemui/SimpleButtonItem;
    invoke-virtual {v0, p1}, Lcom/lge/systemui/SimpleButtonItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/systemui/SimpleButtonItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/systemui/SimpleButtonItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/systemui/SimpleButtonItem;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Lcom/lge/systemui/SimpleButtonItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/systemui/SimpleButtonItem$1;->newArray(I)[Lcom/lge/systemui/SimpleButtonItem;

    move-result-object v0

    return-object v0
.end method
