.class public abstract Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx$Stub;
.super Landroid/os/Binder;
.source "ILGNetworkMonitorProviderEx.java"

# interfaces
.implements Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.internal.telephony.ILGNetworkMonitorProviderEx"

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_setNetworkBand:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.internal.telephony.ILGNetworkMonitorProviderEx"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "com.lge.internal.telephony.ILGNetworkMonitorProviderEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_42

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 43
    :sswitch_a
    const-string v5, "com.lge.internal.telephony.ILGNetworkMonitorProviderEx"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v7, "com.lge.internal.telephony.ILGNetworkMonitorProviderEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx$Stub;->isEnabled()Z

    move-result v4

    .line 50
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v4, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 56
    .end local v4    # "_result":Z
    :sswitch_23
    const-string v7, "com.lge.internal.telephony.ILGNetworkMonitorProviderEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 63
    .local v2, "_arg2":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx$Stub;->setNetworkBand(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    .line 64
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_3e

    move v5, v6

    :cond_3e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 39
    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
