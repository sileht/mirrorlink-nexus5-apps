.class public abstract Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub;
.super Landroid/os/Binder;
.source "ILGPowerManagerHelper.java"

# interfaces
.implements Lcom/lge/systemservice/core/ILGPowerManagerHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ILGPowerManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.ILGPowerManagerHelper"

.field static final TRANSACTION_boost:I = 0x2

.field static final TRANSACTION_boostCancel:I = 0x3

.field static final TRANSACTION_isThermalActionTriggered:I = 0x6

.field static final TRANSACTION_setGoToSleep:I = 0x5

.field static final TRANSACTION_setPowerModePolicy:I = 0x1

.field static final TRANSACTION_turnOffThermald:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.ILGPowerManagerHelper"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGPowerManagerHelper;
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
    const-string v1, "com.lge.systemservice.core.ILGPowerManagerHelper"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_7c

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v4, "com.lge.systemservice.core.ILGPowerManagerHelper"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "com.lge.systemservice.core.ILGPowerManagerHelper"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    move v1, v3

    .line 52
    .local v1, "_arg1":Z
    :cond_20
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub;->setPowerModePolicy(IZ)I

    move-result v2

    .line 53
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 59
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :sswitch_2b
    const-string v4, "com.lge.systemservice.core.ILGPowerManagerHelper"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub;->boost(I)V

    goto :goto_9

    .line 67
    .end local v0    # "_arg0":I
    :sswitch_38
    const-string v4, "com.lge.systemservice.core.ILGPowerManagerHelper"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub;->boostCancel(I)I

    move-result v2

    .line 71
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 77
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_4c
    const-string v4, "com.lge.systemservice.core.ILGPowerManagerHelper"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub;->turnOffThermald()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 84
    :sswitch_58
    const-string v4, "com.lge.systemservice.core.ILGPowerManagerHelper"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub;->setGoToSleep()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 91
    :sswitch_64
    const-string v4, "com.lge.systemservice.core.ILGPowerManagerHelper"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub;->isThermalActionTriggered(Ljava/lang/String;)Z

    move-result v2

    .line 95
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v2, :cond_77

    move v1, v3

    :cond_77
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 38
    nop

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_38
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_58
        0x6 -> :sswitch_64
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
