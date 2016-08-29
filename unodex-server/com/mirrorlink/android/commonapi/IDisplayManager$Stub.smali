.class public abstract Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.IDisplayManager"

.field static final TRANSACTION_getClientPixelFormat:I = 0x2

.field static final TRANSACTION_getDisplayConfiguration:I = 0x1

.field static final TRANSACTION_unregister:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDisplayManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p0, :cond_4

    .line 38
    return-object v1

    .line 40
    :cond_4
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDisplayManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/IDisplayManager;

    if-eqz v1, :cond_14

    .line 42
    check-cast v0, Lcom/mirrorlink/android/commonapi/IDisplayManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 44
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 48
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 52
    sparse-switch p1, :sswitch_data_50

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 56
    :sswitch_a
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDisplayManager"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v2

    .line 61
    :sswitch_11
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDisplayManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;->getDisplayConfiguration()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v0, :cond_27

    .line 65
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_26
    return v2

    .line 69
    :cond_27
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 75
    .end local v0    # "_result":Landroid/os/Bundle;
    :sswitch_2b
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDisplayManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;->getClientPixelFormat()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .restart local v0    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v0, :cond_41

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    :goto_40
    return v2

    .line 83
    :cond_41
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40

    .line 89
    .end local v0    # "_result":Landroid/os/Bundle;
    :sswitch_45
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDisplayManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;->unregister()V

    .line 91
    return v2

    .line 52
    nop

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_45
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
