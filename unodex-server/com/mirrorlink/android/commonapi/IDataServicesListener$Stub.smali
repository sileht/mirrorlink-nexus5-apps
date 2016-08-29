.class public abstract Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;
.super Landroid/os/Binder;
.source "IDataServicesListener.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IDataServicesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/IDataServicesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.IDataServicesListener"

.field static final TRANSACTION_onAvailableServicesChanged:I = 0x1

.field static final TRANSACTION_onGetDataObjectResponse:I = 0x5

.field static final TRANSACTION_onRegisterForService:I = 0x2

.field static final TRANSACTION_onSetDataObjectResponse:I = 0x4

.field static final TRANSACTION_onSubscribeResponse:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDataServicesListener;
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
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/IDataServicesListener;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Lcom/mirrorlink/android/commonapi/IDataServicesListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_a2

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 47
    :sswitch_9
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v9

    .line 52
    :sswitch_10
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 55
    .local v6, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0, v6}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->onAvailableServicesChanged(Ljava/util/List;)V

    .line 56
    return v9

    .line 60
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :sswitch_20
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    const/4 v7, 0x1

    .line 65
    .local v7, "_arg1":Z
    :goto_31
    invoke-virtual {p0, v1, v7}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->onRegisterForService(IZ)V

    .line 66
    return v9

    .line 64
    .end local v7    # "_arg1":Z
    :cond_35
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_31

    .line 70
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    :sswitch_37
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    const/4 v3, 0x1

    .line 78
    .local v3, "_arg2":Z
    :goto_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 80
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->onSubscribeResponse(IIZII)V

    .line 82
    return v9

    .line 76
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :cond_59
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Z
    goto :goto_4c

    .line 86
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :sswitch_5b
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_74

    const/4 v3, 0x1

    .line 93
    .restart local v3    # "_arg2":Z
    :goto_70
    invoke-virtual {p0, v1, v2, v3}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->onSetDataObjectResponse(IIZ)V

    .line 94
    return v9

    .line 92
    .end local v3    # "_arg2":Z
    :cond_74
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Z
    goto :goto_70

    .line 98
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :sswitch_76
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDataServicesListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9d

    const/4 v3, 0x1

    .line 106
    .restart local v3    # "_arg2":Z
    :goto_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9f

    .line 107
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 112
    :goto_99
    invoke-virtual {p0, v1, v2, v3, v8}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->onGetDataObjectResponse(IIZLandroid/os/Bundle;)V

    .line 113
    return v9

    .line 104
    .end local v3    # "_arg2":Z
    :cond_9d
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Z
    goto :goto_8b

    .line 110
    :cond_9f
    const/4 v8, 0x0

    .local v8, "_arg3":Landroid/os/Bundle;
    goto :goto_99

    .line 43
    nop

    :sswitch_data_a2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_37
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_76
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
