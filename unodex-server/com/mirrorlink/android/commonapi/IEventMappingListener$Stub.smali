.class public abstract Lcom/mirrorlink/android/commonapi/IEventMappingListener$Stub;
.super Landroid/os/Binder;
.source "IEventMappingListener.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IEventMappingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/IEventMappingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/IEventMappingListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.IEventMappingListener"

.field static final TRANSACTION_onEventConfigurationChanged:I = 0x1

.field static final TRANSACTION_onEventMappingChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IEventMappingListener"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/commonapi/IEventMappingListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IEventMappingListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_4

    .line 29
    return-object v1

    .line 31
    :cond_4
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IEventMappingListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mirrorlink/android/commonapi/IEventMappingListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/commonapi/IEventMappingListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    sparse-switch p1, :sswitch_data_44

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 47
    :sswitch_9
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IEventMappingListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    .line 52
    :sswitch_10
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IEventMappingListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    .line 55
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 60
    :goto_24
    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/commonapi/IEventMappingListener$Stub;->onEventConfigurationChanged(Landroid/os/Bundle;)V

    .line 61
    return v2

    .line 58
    :cond_28
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_24

    .line 65
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_2a
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IEventMappingListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_42

    .line 68
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 73
    :goto_3e
    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/commonapi/IEventMappingListener$Stub;->onEventMappingChanged(Landroid/os/Bundle;)V

    .line 74
    return v2

    .line 71
    :cond_42
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_3e

    .line 43
    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2a
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
