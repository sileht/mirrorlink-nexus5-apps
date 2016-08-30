.class public abstract Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallProviderEx.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallProviderEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallProviderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallProviderEx"

.field static final TRANSACTION_captureVideo:I = 0x3

.field static final TRANSACTION_clearAlternativeImage:I = 0x8

.field static final TRANSACTION_setAlternativeImage:I = 0x7

.field static final TRANSACTION_setCallbackEx:I = 0x1

.field static final TRANSACTION_setCameraBrightness:I = 0x9

.field static final TRANSACTION_setCameraOnOff:I = 0xa

.field static final TRANSACTION_setDisplayOrientation:I = 0xe

.field static final TRANSACTION_setDisplaySize:I = 0xd

.field static final TRANSACTION_setMultitaskingState:I = 0x4

.field static final TRANSACTION_startBackground:I = 0x5

.field static final TRANSACTION_stopAudio:I = 0x2

.field static final TRANSACTION_stopBackground:I = 0x6

.field static final TRANSACTION_swapDisplay:I = 0xb

.field static final TRANSACTION_updateDisplay:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallProviderEx;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    .line 48
    :goto_3
    return-object v0

    .line 44
    :cond_4
    const-string v1, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallProviderEx;

    if-eqz v1, :cond_13

    .line 46
    check-cast v0, Lcom/android/ims/internal/IImsVideoCallProviderEx;

    goto :goto_3

    .line 48
    :cond_13
    new-instance v0, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 52
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

    .line 56
    sparse-switch p1, :sswitch_data_c6

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 60
    :sswitch_9
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 65
    :sswitch_f
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsVideoCallCallbackEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallbackEx;

    move-result-object v0

    .line 68
    .local v0, "_arg0":Lcom/android/ims/internal/IImsVideoCallCallbackEx;
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->setCallbackEx(Lcom/android/ims/internal/IImsVideoCallCallbackEx;)V

    goto :goto_8

    .line 73
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsVideoCallCallbackEx;
    :sswitch_20
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->stopAudio()V

    goto :goto_8

    .line 79
    :sswitch_29
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->captureVideo(Ljava/lang/String;I)V

    goto :goto_8

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_3a
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->setMultitaskingState(I)V

    goto :goto_8

    .line 97
    .end local v0    # "_arg0":I
    :sswitch_47
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->startBackground()V

    goto :goto_8

    .line 103
    :sswitch_50
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->stopBackground()V

    goto :goto_8

    .line 109
    :sswitch_59
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->setAlternativeImage(Ljava/lang/String;)V

    goto :goto_8

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_66
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->clearAlternativeImage()V

    goto :goto_8

    .line 123
    :sswitch_6f
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->setCameraBrightness(I)V

    goto :goto_8

    .line 131
    .end local v0    # "_arg0":I
    :sswitch_7c
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->setCameraOnOff(I)V

    goto :goto_8

    .line 139
    .end local v0    # "_arg0":I
    :sswitch_89
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->swapDisplay()V

    goto/16 :goto_8

    .line 145
    :sswitch_93
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->updateDisplay(I)V

    goto/16 :goto_8

    .line 153
    .end local v0    # "_arg0":I
    :sswitch_a1
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->setDisplaySize(II)V

    goto/16 :goto_8

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_b3
    const-string v3, "com.android.ims.internal.IImsVideoCallProviderEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsVideoCallProviderEx$Stub;->setDisplayOrientation(II)V

    goto/16 :goto_8

    .line 56
    nop

    :sswitch_data_c6
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_29
        0x4 -> :sswitch_3a
        0x5 -> :sswitch_47
        0x6 -> :sswitch_50
        0x7 -> :sswitch_59
        0x8 -> :sswitch_66
        0x9 -> :sswitch_6f
        0xa -> :sswitch_7c
        0xb -> :sswitch_89
        0xc -> :sswitch_93
        0xd -> :sswitch_a1
        0xe -> :sswitch_b3
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
