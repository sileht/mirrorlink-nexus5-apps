.class public abstract Lcom/mirrorlink/android/commonapi/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.INotificationManager"

.field static final TRANSACTION_cancelNotification:I = 0x6

.field static final TRANSACTION_getNotificationConfiguration:I = 0x3

.field static final TRANSACTION_getNotificationEnabled:I = 0x2

.field static final TRANSACTION_sendClientNotification:I = 0x4

.field static final TRANSACTION_sendVncNotification:I = 0x5

.field static final TRANSACTION_setNotificationSupported:I = 0x1

.field static final TRANSACTION_unregister:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.INotificationManager"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/INotificationManager;
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
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.INotificationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/INotificationManager;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/mirrorlink/android/commonapi/INotificationManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    .line 48
    sparse-switch p1, :sswitch_data_c4

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 52
    :sswitch_8
    const-string/jumbo v9, "com.mirrorlink.android.commonapi.INotificationManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    const/4 v9, 0x1

    return v9

    .line 57
    :sswitch_10
    const-string/jumbo v9, "com.mirrorlink.android.commonapi.INotificationManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_25

    const/4 v2, 0x1

    .line 60
    .local v2, "_arg0":Z
    :goto_1d
    invoke-virtual {p0, v2}, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub;->setNotificationSupported(Z)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v9, 0x1

    return v9

    .line 59
    .end local v2    # "_arg0":Z
    :cond_25
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_1d

    .line 66
    .end local v2    # "_arg0":Z
    :sswitch_27
    const-string/jumbo v9, "com.mirrorlink.android.commonapi.INotificationManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub;->getNotificationEnabled()Z

    move-result v8

    .line 68
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v8, :cond_3c

    const/4 v9, 0x1

    :goto_37
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v9, 0x1

    return v9

    .line 69
    :cond_3c
    const/4 v9, 0x0

    goto :goto_37

    .line 74
    .end local v8    # "_result":Z
    :sswitch_3e
    const-string/jumbo v9, "com.mirrorlink.android.commonapi.INotificationManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub;->getNotificationConfiguration()Landroid/os/Bundle;

    move-result-object v7

    .line 76
    .local v7, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v7, :cond_57

    .line 78
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v9, 0x1

    invoke-virtual {v7, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    :goto_55
    const/4 v9, 0x1

    return v9

    .line 82
    :cond_57
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    .line 88
    .end local v7    # "_result":Landroid/os/Bundle;
    :sswitch_5c
    const-string/jumbo v9, "com.mirrorlink.android.commonapi.INotificationManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8a

    .line 95
    sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 101
    :goto_78
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 102
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub;->sendClientNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)I

    move-result v6

    .line 103
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v9, 0x1

    return v9

    .line 98
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v6    # "_result":I
    :cond_8a
    const/4 v4, 0x0

    .local v4, "_arg2":Landroid/net/Uri;
    goto :goto_78

    .line 109
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/net/Uri;
    :sswitch_8c
    const-string/jumbo v9, "com.mirrorlink.android.commonapi.INotificationManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub;->sendVncNotification()I

    move-result v6

    .line 111
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v9, 0x1

    return v9

    .line 117
    .end local v6    # "_result":I
    :sswitch_9e
    const-string/jumbo v9, "com.mirrorlink.android.commonapi.INotificationManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub;->cancelNotification(I)Z

    move-result v8

    .line 121
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v8, :cond_b7

    const/4 v9, 0x1

    :goto_b2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v9, 0x1

    return v9

    .line 122
    :cond_b7
    const/4 v9, 0x0

    goto :goto_b2

    .line 127
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_b9
    const-string/jumbo v9, "com.mirrorlink.android.commonapi.INotificationManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/INotificationManager$Stub;->unregister()V

    .line 129
    const/4 v9, 0x1

    return v9

    .line 48
    :sswitch_data_c4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_8c
        0x6 -> :sswitch_9e
        0x7 -> :sswitch_b9
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
