.class public abstract Lcom/lge/nfcaddon/INfcUtility$Stub;
.super Landroid/os/Binder;
.source "INfcUtility.java"

# interfaces
.implements Lcom/lge/nfcaddon/INfcUtility;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/INfcUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/INfcUtility$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.nfcaddon.INfcUtility"

.field static final TRANSACTION_getCashbeeState:I = 0x5

.field static final TRANSACTION_getPollingData:I = 0x6

.field static final TRANSACTION_isNfcLock:I = 0x2

.field static final TRANSACTION_isNfcRecoveryMode:I = 0x3

.field static final TRANSACTION_setCashbeeMode:I = 0x4

.field static final TRANSACTION_waitSimBootCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.nfcaddon.INfcUtility"

    invoke-virtual {p0, p0, v0}, Lcom/lge/nfcaddon/INfcUtility$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcUtility;
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
    const-string v1, "com.lge.nfcaddon.INfcUtility"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/nfcaddon/INfcUtility;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/nfcaddon/INfcUtility;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/nfcaddon/INfcUtility$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/nfcaddon/INfcUtility$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_96

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 45
    :sswitch_a
    const-string v4, "com.lge.nfcaddon.INfcUtility"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v5, "com.lge.nfcaddon.INfcUtility"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/nfcaddon/INfcUtilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcUtilityCallback;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Lcom/lge/nfcaddon/INfcUtilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    move v1, v3

    .line 55
    .local v1, "_arg1":Z
    :goto_24
    invoke-virtual {p0, v0, v1}, Lcom/lge/nfcaddon/INfcUtility$Stub;->waitSimBootCallback(Lcom/lge/nfcaddon/INfcUtilityCallback;Z)Z

    move-result v2

    .line 56
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v2, :cond_2e

    move v4, v3

    :cond_2e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_32
    move v1, v4

    .line 54
    goto :goto_24

    .line 62
    .end local v0    # "_arg0":Lcom/lge/nfcaddon/INfcUtilityCallback;
    :sswitch_34
    const-string v5, "com.lge.nfcaddon.INfcUtility"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcUtility$Stub;->isNfcLock()Z

    move-result v2

    .line 64
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v2, :cond_43

    move v4, v3

    :cond_43
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 70
    .end local v2    # "_result":Z
    :sswitch_47
    const-string v5, "com.lge.nfcaddon.INfcUtility"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcUtility$Stub;->isNfcRecoveryMode()Z

    move-result v2

    .line 72
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_56

    move v4, v3

    :cond_56
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 78
    .end local v2    # "_result":Z
    :sswitch_5a
    const-string v5, "com.lge.nfcaddon.INfcUtility"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcUtility$Stub;->setCashbeeMode(I)Z

    move-result v2

    .line 82
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_6d

    move v4, v3

    :cond_6d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_71
    const-string v4, "com.lge.nfcaddon.INfcUtility"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcUtility$Stub;->getCashbeeState()I

    move-result v2

    .line 90
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 96
    .end local v2    # "_result":I
    :sswitch_81
    const-string v5, "com.lge.nfcaddon.INfcUtility"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcUtility$Stub;->getPollingData()Z

    move-result v2

    .line 98
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v2, :cond_90

    move v4, v3

    :cond_90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_34
        0x3 -> :sswitch_47
        0x4 -> :sswitch_5a
        0x5 -> :sswitch_71
        0x6 -> :sswitch_81
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
