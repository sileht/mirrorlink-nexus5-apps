.class public abstract Lcom/mirrorlink/android/commonapi/IContextManager$Stub;
.super Landroid/os/Binder;
.source "IContextManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IContextManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/IContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/IContextManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.IContextManager"

.field static final TRANSACTION_setAudioContextInformation:I = 0x2

.field static final TRANSACTION_setFramebufferContextInformation:I = 0x1

.field static final TRANSACTION_unregister:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IContextManager"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/commonapi/IContextManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IContextManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 33
    if-nez p0, :cond_4

    .line 34
    return-object v1

    .line 36
    :cond_4
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IContextManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/IContextManager;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/mirrorlink/android/commonapi/IContextManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mirrorlink/android/commonapi/IContextManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/commonapi/IContextManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const/4 v6, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_5a

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 52
    :sswitch_9
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IContextManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v6

    .line 57
    :sswitch_10
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IContextManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v2, 0x1

    .line 62
    .local v2, "_arg1":Z
    :goto_23
    invoke-virtual {p0, v0, v2}, Lcom/mirrorlink/android/commonapi/IContextManager$Stub;->setFramebufferContextInformation(Ljava/util/List;Z)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v6

    .line 61
    .end local v2    # "_arg1":Z
    :cond_2a
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Z
    goto :goto_23

    .line 68
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v2    # "_arg1":Z
    :sswitch_2c
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IContextManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b

    const/4 v1, 0x1

    .line 72
    .local v1, "_arg0":Z
    :goto_39
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 74
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v4, 0x1

    .line 75
    .local v4, "_arg2":Z
    :goto_44
    invoke-virtual {p0, v1, v3, v4}, Lcom/mirrorlink/android/commonapi/IContextManager$Stub;->setAudioContextInformation(Z[IZ)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v6

    .line 70
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":Z
    :cond_4b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_39

    .line 74
    .restart local v3    # "_arg1":[I
    :cond_4d
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Z
    goto :goto_44

    .line 81
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":Z
    :sswitch_4f
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IContextManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IContextManager$Stub;->unregister()V

    .line 83
    return v6

    .line 48
    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_4f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
