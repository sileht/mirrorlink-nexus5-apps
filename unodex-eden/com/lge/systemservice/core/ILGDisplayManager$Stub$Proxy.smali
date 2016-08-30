.class Lcom/lge/systemservice/core/ILGDisplayManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILGDisplayManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/ILGDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ILGDisplayManager$Stub;
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

    .line 69
    iput-object p1, p0, Lcom/lge/systemservice/core/ILGDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/systemservice/core/ILGDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const-string v0, "com.lge.systemservice.core.ILGDisplayManager"

    return-object v0
.end method

.method public setColorConvert(IIFF)Z
    .registers 12
    .param p1, "hue"    # I
    .param p2, "intensity"    # I
    .param p3, "sat"    # F
    .param p4, "contrast"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 84
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 87
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.lge.systemservice.core.ILGDisplayManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 91
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 92
    iget-object v4, p0, Lcom/lge/systemservice/core/ILGDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_34

    move-result v4

    if-eqz v4, :cond_32

    .line 97
    .local v2, "_result":Z
    :goto_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    return v2

    .end local v2    # "_result":Z
    :cond_32
    move v2, v3

    .line 94
    goto :goto_2b

    .line 96
    :catchall_34
    move-exception v3

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    throw v3
.end method
