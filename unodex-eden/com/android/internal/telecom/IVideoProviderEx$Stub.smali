.class public abstract Lcom/android/internal/telecom/IVideoProviderEx$Stub;
.super Landroid/os/Binder;
.source "IVideoProviderEx.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoProviderEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoProviderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoProviderEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoProviderEx"

.field static final TRANSACTION_addVideoCallbackEx:I = 0x1

.field static final TRANSACTION_captureVideo:I = 0x4

.field static final TRANSACTION_clearAlternativeImage:I = 0x9

.field static final TRANSACTION_removeVideoCallbackEx:I = 0x2

.field static final TRANSACTION_setAlternativeImage:I = 0x8

.field static final TRANSACTION_setCameraBrightness:I = 0xa

.field static final TRANSACTION_setCameraOnOff:I = 0xb

.field static final TRANSACTION_setDisplayOrientation:I = 0xf

.field static final TRANSACTION_setDisplaySize:I = 0xe

.field static final TRANSACTION_setMultitaskingState:I = 0x5

.field static final TRANSACTION_startBackground:I = 0x6

.field static final TRANSACTION_stopAudio:I = 0x3

.field static final TRANSACTION_stopBackground:I = 0x7

.field static final TRANSACTION_swapDisplay:I = 0xc

.field static final TRANSACTION_updateDisplay:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProviderEx;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "com.android.internal.telecom.IVideoProviderEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IVideoProviderEx;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/android/internal/telecom/IVideoProviderEx;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IVideoProviderEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_d0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 46
    :sswitch_9
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :sswitch_f
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->addVideoCallbackEx(Landroid/os/IBinder;)V

    goto :goto_8

    .line 59
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_1c
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->removeVideoCallbackEx(Landroid/os/IBinder;)V

    goto :goto_8

    .line 67
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_29
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->stopAudio()V

    goto :goto_8

    .line 73
    :sswitch_32
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->captureVideo(Ljava/lang/String;I)V

    goto :goto_8

    .line 83
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_43
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->setMultitaskingState(I)V

    goto :goto_8

    .line 91
    .end local v0    # "_arg0":I
    :sswitch_50
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->startBackground()V

    goto :goto_8

    .line 97
    :sswitch_59
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->stopBackground()V

    goto :goto_8

    .line 103
    :sswitch_62
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->setAlternativeImage(Ljava/lang/String;)V

    goto :goto_8

    .line 111
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6f
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->clearAlternativeImage()V

    goto :goto_8

    .line 117
    :sswitch_78
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->setCameraBrightness(I)V

    goto :goto_8

    .line 125
    .end local v0    # "_arg0":I
    :sswitch_85
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->setCameraOnOff(I)V

    goto/16 :goto_8

    .line 133
    .end local v0    # "_arg0":I
    :sswitch_93
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->swapDisplay()V

    goto/16 :goto_8

    .line 139
    :sswitch_9d
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->updateDisplay(I)V

    goto/16 :goto_8

    .line 147
    .end local v0    # "_arg0":I
    :sswitch_ab
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->setDisplaySize(II)V

    goto/16 :goto_8

    .line 157
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_bd
    const-string v3, "com.android.internal.telecom.IVideoProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->setDisplayOrientation(II)V

    goto/16 :goto_8

    .line 42
    nop

    :sswitch_data_d0
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_29
        0x4 -> :sswitch_32
        0x5 -> :sswitch_43
        0x6 -> :sswitch_50
        0x7 -> :sswitch_59
        0x8 -> :sswitch_62
        0x9 -> :sswitch_6f
        0xa -> :sswitch_78
        0xb -> :sswitch_85
        0xc -> :sswitch_93
        0xd -> :sswitch_9d
        0xe -> :sswitch_ab
        0xf -> :sswitch_bd
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
