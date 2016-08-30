.class public abstract Lcom/lge/systemservice/core/IDeathMonitor$Stub;
.super Landroid/os/Binder;
.source "IDeathMonitor.java"

# interfaces
.implements Lcom/lge/systemservice/core/IDeathMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IDeathMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IDeathMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IDeathMonitor"

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_unregister:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.IDeathMonitor"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IDeathMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IDeathMonitor;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.lge.systemservice.core.IDeathMonitor"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/IDeathMonitor;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/IDeathMonitor;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/IDeathMonitor$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IDeathMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_54

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 42
    :sswitch_a
    const-string v3, "com.lge.systemservice.core.IDeathMonitor"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v5, "com.lge.systemservice.core.IDeathMonitor"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    .line 52
    sget-object v5, Lcom/lge/systemservice/core/DeathMonitorResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemservice/core/DeathMonitorResponse;

    .line 57
    .local v1, "_arg1":Lcom/lge/systemservice/core/DeathMonitorResponse;
    :goto_27
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/IDeathMonitor$Stub;->register(Landroid/os/IBinder;Lcom/lge/systemservice/core/DeathMonitorResponse;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v1, :cond_38

    .line 60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v1, p3, v4}, Lcom/lge/systemservice/core/DeathMonitorResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 55
    .end local v1    # "_arg1":Lcom/lge/systemservice/core/DeathMonitorResponse;
    :cond_36
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/lge/systemservice/core/DeathMonitorResponse;
    goto :goto_27

    .line 64
    :cond_38
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 70
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/lge/systemservice/core/DeathMonitorResponse;
    :sswitch_3c
    const-string v5, "com.lge.systemservice.core.IDeathMonitor"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IDeathMonitor$Stub;->unregister(Landroid/os/IBinder;)Z

    move-result v2

    .line 74
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_4f

    move v3, v4

    :cond_4f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 38
    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
