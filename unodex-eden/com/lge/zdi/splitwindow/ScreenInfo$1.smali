.class final Lcom/lge/zdi/splitwindow/ScreenInfo$1;
.super Ljava/lang/Object;
.source "ScreenInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/zdi/splitwindow/ScreenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/zdi/splitwindow/ScreenInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/zdi/splitwindow/ScreenInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 70
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lge/zdi/splitwindow/ScreenInfo;-><init>(Landroid/os/Parcel;Lcom/lge/zdi/splitwindow/ScreenInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/lge/zdi/splitwindow/ScreenInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/zdi/splitwindow/ScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/zdi/splitwindow/ScreenInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 74
    new-array v0, p1, [Lcom/lge/zdi/splitwindow/ScreenInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/lge/zdi/splitwindow/ScreenInfo$1;->newArray(I)[Lcom/lge/zdi/splitwindow/ScreenInfo;

    move-result-object v0

    return-object v0
.end method
