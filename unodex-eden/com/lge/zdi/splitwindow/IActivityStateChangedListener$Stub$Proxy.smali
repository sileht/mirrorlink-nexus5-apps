.class Lcom/lge/zdi/splitwindow/IActivityStateChangedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActivityStateChangedListener.java"

# interfaces
.implements Lcom/lge/zdi/splitwindow/IActivityStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/zdi/splitwindow/IActivityStateChangedListener$Stub;
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
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/lge/zdi/splitwindow/IActivityStateChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 69
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/IActivityStateChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, "com.lge.zdi.splitwindow.IActivityStateChangedListener"

    return-object v0
.end method

.method public onActivityStateChanged(ZLjava/lang/String;II)V
    .registers 10
    .param p1, "resumed"    # Z
    .param p2, "cmp"    # Ljava/lang/String;
    .param p3, "screenId"    # I
    .param p4, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_5
    const-string v2, "com.lge.zdi.splitwindow.IActivityStateChangedListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_24

    :goto_c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v1, p0, Lcom/lge/zdi/splitwindow/IActivityStateChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_26

    .line 90
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 92
    return-void

    .line 83
    :cond_24
    const/4 v1, 0x0

    goto :goto_c

    .line 90
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
