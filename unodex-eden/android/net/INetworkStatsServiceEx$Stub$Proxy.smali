.class Landroid/net/INetworkStatsServiceEx$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkStatsServiceEx.java"

# interfaces
.implements Landroid/net/INetworkStatsServiceEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsServiceEx$Stub;
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/net/INetworkStatsServiceEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 69
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/net/INetworkStatsServiceEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearUsage(Landroid/net/NetworkTemplate;)Z
    .registers 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 81
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 84
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.net.INetworkStatsServiceEx"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 85
    if-eqz p1, :cond_30

    .line 86
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/NetworkTemplate;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_19
    iget-object v4, p0, Landroid/net/INetworkStatsServiceEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_35

    move-result v4

    if-eqz v4, :cond_3d

    .line 97
    .local v2, "_result":Z
    :goto_29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    return v2

    .line 90
    .end local v2    # "_result":Z
    :cond_30
    const/4 v4, 0x0

    :try_start_31
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_19

    .line 96
    :catchall_35
    move-exception v3

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    throw v3

    :cond_3d
    move v2, v3

    .line 94
    goto :goto_29
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, "android.net.INetworkStatsServiceEx"

    return-object v0
.end method
