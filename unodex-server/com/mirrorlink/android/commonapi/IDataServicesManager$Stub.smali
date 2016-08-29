.class public abstract Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;
.super Landroid/os/Binder;
.source "IDataServicesManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IDataServicesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/IDataServicesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.IDataServicesManager"

.field static final TRANSACTION_getAvailableServices:I = 0x1

.field static final TRANSACTION_getObject:I = 0x7

.field static final TRANSACTION_registerToService:I = 0x2

.field static final TRANSACTION_setObject:I = 0x6

.field static final TRANSACTION_subscribeObject:I = 0x4

.field static final TRANSACTION_unregister:I = 0x8

.field static final TRANSACTION_unregisterFromService:I = 0x3

.field static final TRANSACTION_unsubscribeObject:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDataServicesManager;
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
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/IDataServicesManager;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/mirrorlink/android/commonapi/IDataServicesManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_ba

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 52
    :sswitch_9
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v6

    .line 57
    :sswitch_10
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;->getAvailableServices()Ljava/util/List;

    move-result-object v4

    .line 59
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 61
    return v6

    .line 65
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :sswitch_21
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;->registerToService(III)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v6

    .line 78
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_3a
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;->unregisterFromService(I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v6

    .line 87
    .end local v0    # "_arg0":I
    :sswitch_4b
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;->subscribeObject(II)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v6

    .line 98
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_60
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;->unsubscribeObject(II)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v6

    .line 109
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_75
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_98

    .line 116
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 121
    :goto_91
    invoke-virtual {p0, v0, v1, v3}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;->setObject(IILandroid/os/Bundle;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v6

    .line 119
    :cond_98
    const/4 v3, 0x0

    .local v3, "_arg2":Landroid/os/Bundle;
    goto :goto_91

    .line 127
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_9a
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;->getObject(II)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v6

    .line 138
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_af
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDataServicesManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDataServicesManager$Stub;->unregister()V

    .line 140
    return v6

    .line 48
    nop

    :sswitch_data_ba
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_21
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_60
        0x6 -> :sswitch_75
        0x7 -> :sswitch_9a
        0x8 -> :sswitch_af
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
