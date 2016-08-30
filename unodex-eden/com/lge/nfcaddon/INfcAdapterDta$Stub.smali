.class public abstract Lcom/lge/nfcaddon/INfcAdapterDta$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterDta.java"

# interfaces
.implements Lcom/lge/nfcaddon/INfcAdapterDta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/INfcAdapterDta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/INfcAdapterDta$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.nfcaddon.INfcAdapterDta"

.field static final TRANSACTION_config:I = 0x5

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_start:I = 0x4

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.nfcaddon.INfcAdapterDta"

    invoke-virtual {p0, p0, v0}, Lcom/lge/nfcaddon/INfcAdapterDta$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcAdapterDta;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.lge.nfcaddon.INfcAdapterDta"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/nfcaddon/INfcAdapterDta;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/nfcaddon/INfcAdapterDta;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/nfcaddon/INfcAdapterDta$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/nfcaddon/INfcAdapterDta$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_88

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 45
    :sswitch_a
    const-string v4, "com.lge.nfcaddon.INfcAdapterDta"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v5, "com.lge.nfcaddon.INfcAdapterDta"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    move v0, v3

    .line 53
    .local v0, "_arg0":Z
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterDta$Stub;->enable(Z)Z

    move-result v2

    .line 54
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_26

    move v4, v3

    :cond_26
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_2a
    move v0, v4

    .line 52
    goto :goto_1c

    .line 60
    :sswitch_2c
    const-string v5, "com.lge.nfcaddon.INfcAdapterDta"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterDta$Stub;->disable()Z

    move-result v2

    .line 62
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v2, :cond_3b

    move v4, v3

    :cond_3b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v2    # "_result":Z
    :sswitch_3f
    const-string v5, "com.lge.nfcaddon.INfcAdapterDta"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterDta$Stub;->stop()Z

    move-result v2

    .line 70
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_4e

    move v4, v3

    :cond_4e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 76
    .end local v2    # "_result":Z
    :sswitch_52
    const-string v5, "com.lge.nfcaddon.INfcAdapterDta"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 81
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/lge/nfcaddon/INfcAdapterDta$Stub;->start(I[B)Z

    move-result v2

    .line 82
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_69

    move v4, v3

    :cond_69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Z
    :sswitch_6d
    const-string v5, "com.lge.nfcaddon.INfcAdapterDta"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/nfcaddon/INfcAdapterDta$Stub;->config(II)Z

    move-result v2

    .line 94
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v2, :cond_84

    move v4, v3

    :cond_84
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 41
    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_52
        0x5 -> :sswitch_6d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
