.class public abstract Lcom/lge/systemservice/core/ICliptrayService$Stub;
.super Landroid/os/Binder;
.source "ICliptrayService.java"

# interfaces
.implements Lcom/lge/systemservice/core/ICliptrayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ICliptrayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ICliptrayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.ICliptrayService"

.field static final TRANSACTION_addNewClipData:I = 0x3

.field static final TRANSACTION_cleanClipTrayItems:I = 0x12

.field static final TRANSACTION_doCopyAnimation:I = 0xd

.field static final TRANSACTION_getClose:I = 0x2

.field static final TRANSACTION_getPeek:I = 0x4

.field static final TRANSACTION_getShow:I = 0x1

.field static final TRANSACTION_getVisibility:I = 0x5

.field static final TRANSACTION_hideCliptrayIfNeeded:I = 0x13

.field static final TRANSACTION_hideCliptraycue:I = 0xa

.field static final TRANSACTION_isAvailable:I = 0x11

.field static final TRANSACTION_isCliptraycueShowing:I = 0xb

.field static final TRANSACTION_orientationChanged:I = 0x7

.field static final TRANSACTION_setInputType:I = 0x6

.field static final TRANSACTION_showCliptrayCopiedToast:I = 0xe

.field static final TRANSACTION_showCliptraycue:I = 0x8

.field static final TRANSACTION_showCliptraycueClose:I = 0x9

.field static final TRANSACTION_showCopyFailedToast:I = 0x10

.field static final TRANSACTION_showDecodeErrorToast:I = 0xc

.field static final TRANSACTION_showImageLimitReachedToast:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ICliptrayService;
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
    const-string v1, "com.lge.systemservice.core.ICliptrayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/ICliptrayService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/ICliptrayService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/ICliptrayService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_128

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 42
    :sswitch_a
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->getShow()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 54
    :sswitch_1c
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->getClose()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 61
    :sswitch_28
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->addNewClipData()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 68
    :sswitch_34
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->getPeek()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 75
    :sswitch_40
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->getVisibility()I

    move-result v1

    .line 77
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 83
    .end local v1    # "_result":I
    :sswitch_50
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->setInputType(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":I
    :sswitch_60
    const-string v4, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_73

    move v0, v2

    .line 95
    .local v0, "_arg0":Z
    :goto_6c
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->orientationChanged(Z)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_73
    move v0, v3

    .line 94
    goto :goto_6c

    .line 101
    :sswitch_75
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->showCliptraycue()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 108
    :sswitch_81
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->showCliptraycueClose()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 115
    :sswitch_8e
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->hideCliptraycue()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 122
    :sswitch_9b
    const-string v4, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->isCliptraycueShowing()Z

    move-result v1

    .line 124
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v1, :cond_aa

    move v3, v2

    :cond_aa
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 130
    .end local v1    # "_result":Z
    :sswitch_af
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->showDecodeErrorToast()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 137
    :sswitch_bc
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->doCopyAnimation()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 144
    :sswitch_c9
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->showCliptrayCopiedToast()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 151
    :sswitch_d6
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->showImageLimitReachedToast()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 158
    :sswitch_e3
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->showCopyFailedToast()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 165
    :sswitch_f0
    const-string v4, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10b

    move v0, v2

    .line 168
    .restart local v0    # "_arg0":Z
    :goto_fc
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->isAvailable(Z)Z

    move-result v1

    .line 169
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v1, :cond_106

    move v3, v2

    :cond_106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_10b
    move v0, v3

    .line 167
    goto :goto_fc

    .line 175
    :sswitch_10d
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->cleanClipTrayItems()V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 182
    :sswitch_11a
    const-string v3, "com.lge.systemservice.core.ICliptrayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->hideCliptrayIfNeeded()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_128
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_28
        0x4 -> :sswitch_34
        0x5 -> :sswitch_40
        0x6 -> :sswitch_50
        0x7 -> :sswitch_60
        0x8 -> :sswitch_75
        0x9 -> :sswitch_81
        0xa -> :sswitch_8e
        0xb -> :sswitch_9b
        0xc -> :sswitch_af
        0xd -> :sswitch_bc
        0xe -> :sswitch_c9
        0xf -> :sswitch_d6
        0x10 -> :sswitch_e3
        0x11 -> :sswitch_f0
        0x12 -> :sswitch_10d
        0x13 -> :sswitch_11a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
