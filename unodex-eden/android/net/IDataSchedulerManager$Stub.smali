.class public abstract Landroid/net/IDataSchedulerManager$Stub;
.super Landroid/os/Binder;
.source "IDataSchedulerManager.java"

# interfaces
.implements Landroid/net/IDataSchedulerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IDataSchedulerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IDataSchedulerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IDataSchedulerManager"

.field static final TRANSACTION_getAlarmControlState:I = 0x4

.field static final TRANSACTION_getPolicy:I = 0x1

.field static final TRANSACTION_setDataSchedulerEnabled:I = 0x3

.field static final TRANSACTION_setDeviceIdleMode:I = 0x5

.field static final TRANSACTION_updateAppInfo:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.net.IDataSchedulerManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IDataSchedulerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IDataSchedulerManager;
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
    const-string v1, "android.net.IDataSchedulerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/IDataSchedulerManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/net/IDataSchedulerManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/net/IDataSchedulerManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IDataSchedulerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_9e

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 42
    :sswitch_a
    const-string v1, "android.net.IDataSchedulerManager"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v1, "android.net.IDataSchedulerManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 55
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg3":J
    move-object v1, p0

    .line 56
    invoke-virtual/range {v1 .. v7}, Landroid/net/IDataSchedulerManager$Stub;->getPolicy(ILjava/lang/String;JJ)Landroid/net/DataSchedulerPolicy;

    move-result-object v0

    .line 57
    .local v0, "_result":Landroid/net/DataSchedulerPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v0, :cond_36

    .line 59
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v0, p3, v8}, Landroid/net/DataSchedulerPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 63
    :cond_36
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 69
    .end local v0    # "_result":Landroid/net/DataSchedulerPolicy;
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":J
    :sswitch_3a
    const-string v1, "android.net.IDataSchedulerManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    sget-object v1, Landroid/net/DataSchedulerAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/DataSchedulerAppInfo;

    .line 72
    .local v2, "_arg0":[Landroid/net/DataSchedulerAppInfo;
    invoke-virtual {p0, v2}, Landroid/net/IDataSchedulerManager$Stub;->updateAppInfo([Landroid/net/DataSchedulerAppInfo;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 78
    .end local v2    # "_arg0":[Landroid/net/DataSchedulerAppInfo;
    :sswitch_4e
    const-string v1, "android.net.IDataSchedulerManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_61

    move v2, v8

    .line 81
    .local v2, "_arg0":Z
    :goto_5a
    invoke-virtual {p0, v2}, Landroid/net/IDataSchedulerManager$Stub;->setDataSchedulerEnabled(Z)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v2    # "_arg0":Z
    :cond_61
    move v2, v9

    .line 80
    goto :goto_5a

    .line 87
    :sswitch_63
    const-string v1, "android.net.IDataSchedulerManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 94
    .restart local v4    # "_arg2":J
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/IDataSchedulerManager$Stub;->getAlarmControlState(ILjava/lang/String;J)I

    move-result v0

    .line 95
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 101
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":J
    :sswitch_7f
    const-string v1, "android.net.IDataSchedulerManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9a

    move v2, v8

    .line 105
    .local v2, "_arg0":Z
    :goto_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9c

    move v3, v8

    .line 106
    .local v3, "_arg1":Z
    :goto_92
    invoke-virtual {p0, v2, v3}, Landroid/net/IDataSchedulerManager$Stub;->setDeviceIdleMode(ZZ)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :cond_9a
    move v2, v9

    .line 103
    goto :goto_8b

    .restart local v2    # "_arg0":Z
    :cond_9c
    move v3, v9

    .line 105
    goto :goto_92

    .line 38
    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_63
        0x5 -> :sswitch_7f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
