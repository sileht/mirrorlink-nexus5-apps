.class Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IScreenInfoChangedListener.java"

# interfaces
.implements Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const-string v0, "com.lge.zdi.splitwindow.IScreenInfoChangedListener"

    return-object v0
.end method

.method public onScreenInfoChanged(Lcom/lge/zdi/splitwindow/ScreenChangedEvent;Ljava/util/List;)V
    .registers 8
    .param p1, "eventType"    # Lcom/lge/zdi/splitwindow/ScreenChangedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/zdi/splitwindow/ScreenChangedEvent;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/splitwindow/ScreenInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "screenInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/splitwindow/ScreenInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 85
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.lge.zdi.splitwindow.IScreenInfoChangedListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_22

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    :goto_13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    iget-object v1, p0, Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_27

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    return-void

    .line 91
    :cond_22
    const/4 v1, 0x0

    :try_start_23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_13

    .line 97
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
