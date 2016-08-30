.class public abstract Lcom/android/internal/telecom/IVideoCallbackEx$Stub;
.super Landroid/os/Binder;
.source "IVideoCallbackEx.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoCallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoCallbackEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoCallbackEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoCallbackEx"

.field static final TRANSACTION_changeMediaDebugInfo:I = 0x1

.field static final TRANSACTION_changePeerDisplayOrientation:I = 0x2

.field static final TRANSACTION_handleCallSessionEventEx:I = 0x3

.field static final TRANSACTION_handleCallSessionResultEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.telecom.IVideoCallbackEx"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoCallbackEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallbackEx;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.android.internal.telecom.IVideoCallbackEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IVideoCallbackEx;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/android/internal/telecom/IVideoCallbackEx;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IVideoCallbackEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IVideoCallbackEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
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

    .line 43
    sparse-switch p1, :sswitch_data_54

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 47
    :sswitch_9
    const-string v3, "com.android.internal.telecom.IVideoCallbackEx"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v3, "com.android.internal.telecom.IVideoCallbackEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    .line 55
    sget-object v3, Lcom/android/ims/LGImsCallMediaDebugInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/LGImsCallMediaDebugInfo;

    .line 60
    .local v0, "_arg0":Lcom/android/ims/LGImsCallMediaDebugInfo;
    :goto_22
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoCallbackEx$Stub;->changeMediaDebugInfo(Lcom/android/ims/LGImsCallMediaDebugInfo;)V

    goto :goto_8

    .line 58
    .end local v0    # "_arg0":Lcom/android/ims/LGImsCallMediaDebugInfo;
    :cond_26
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/ims/LGImsCallMediaDebugInfo;
    goto :goto_22

    .line 65
    .end local v0    # "_arg0":Lcom/android/ims/LGImsCallMediaDebugInfo;
    :sswitch_28
    const-string v3, "com.android.internal.telecom.IVideoCallbackEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoCallbackEx$Stub;->changePeerDisplayOrientation(I)V

    goto :goto_8

    .line 73
    .end local v0    # "_arg0":I
    :sswitch_35
    const-string v3, "com.android.internal.telecom.IVideoCallbackEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoCallbackEx$Stub;->handleCallSessionEventEx(I)V

    goto :goto_8

    .line 81
    .end local v0    # "_arg0":I
    :sswitch_42
    const-string v3, "com.android.internal.telecom.IVideoCallbackEx"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/IVideoCallbackEx$Stub;->handleCallSessionResultEvent(II)V

    goto :goto_8

    .line 43
    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x3 -> :sswitch_35
        0x4 -> :sswitch_42
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
