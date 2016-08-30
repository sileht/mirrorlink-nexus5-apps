.class public abstract Landroid/os/IPowerManagerEx$Stub;
.super Landroid/os/Binder;
.source "IPowerManagerEx.java"

# interfaces
.implements Landroid/os/IPowerManagerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManagerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManagerEx"

.field static final TRANSACTION_getPowerKeyWhenCalling:I = 0x2

.field static final TRANSACTION_getWakeLockFlags:I = 0x1

.field static final TRANSACTION_isInthePocket:I = 0x5

.field static final TRANSACTION_recoverBacklightBrightness:I = 0x6

.field static final TRANSACTION_setPowerKeyWhenCalling:I = 0x3

.field static final TRANSACTION_wakeUpWithReason:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.os.IPowerManagerEx"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManagerEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManagerEx;
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
    const-string v1, "android.os.IPowerManagerEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IPowerManagerEx;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/os/IPowerManagerEx;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/os/IPowerManagerEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IPowerManagerEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    sparse-switch p1, :sswitch_data_88

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v5, "android.os.IPowerManagerEx"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v5, "android.os.IPowerManagerEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManagerEx$Stub;->getWakeLockFlags(I)I

    move-result v4

    .line 51
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 57
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_24
    const-string v7, "android.os.IPowerManagerEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/os/IPowerManagerEx$Stub;->getPowerKeyWhenCalling()Z

    move-result v4

    .line 59
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v4, :cond_33

    move v5, v6

    :cond_33
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 65
    .end local v4    # "_result":Z
    :sswitch_37
    const-string v7, "android.os.IPowerManagerEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4a

    move v0, v6

    .line 68
    .local v0, "_arg0":Z
    :goto_43
    invoke-virtual {p0, v0}, Landroid/os/IPowerManagerEx$Stub;->setPowerKeyWhenCalling(Z)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_4a
    move v0, v5

    .line 67
    goto :goto_43

    .line 74
    :sswitch_4c
    const-string v5, "android.os.IPowerManagerEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 78
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IPowerManagerEx$Stub;->wakeUpWithReason(JILjava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 87
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_64
    const-string v7, "android.os.IPowerManagerEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/os/IPowerManagerEx$Stub;->isInthePocket()Z

    move-result v4

    .line 89
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v4, :cond_73

    move v5, v6

    :cond_73
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 95
    .end local v4    # "_result":Z
    :sswitch_77
    const-string v5, "android.os.IPowerManagerEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManagerEx$Stub;->recoverBacklightBrightness(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 38
    nop

    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_37
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_64
        0x6 -> :sswitch_77
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
