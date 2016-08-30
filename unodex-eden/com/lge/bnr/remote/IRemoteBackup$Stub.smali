.class public abstract Lcom/lge/bnr/remote/IRemoteBackup$Stub;
.super Landroid/os/Binder;
.source "IRemoteBackup.java"

# interfaces
.implements Lcom/lge/bnr/remote/IRemoteBackup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/remote/IRemoteBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bnr/remote/IRemoteBackup$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.bnr.remote.IRemoteBackup"

.field static final TRANSACTION_getRemoteFd:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0xa

.field static final TRANSACTION_setBackupComplete:I = 0x5

.field static final TRANSACTION_setBackupProgress:I = 0x3

.field static final TRANSACTION_setBackupProgressforCopyFile:I = 0x1

.field static final TRANSACTION_setBackupStreamData:I = 0x2

.field static final TRANSACTION_setEnableBackup:I = 0x7

.field static final TRANSACTION_setEnableRestore:I = 0x8

.field static final TRANSACTION_setFailItem:I = 0x9

.field static final TRANSACTION_setRestoreComplete:I = 0x6

.field static final TRANSACTION_setRestoreProgress:I = 0x4

.field static final TRANSACTION_unregisterCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p0, p0, v0}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/bnr/remote/IRemoteBackup;
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
    const-string v1, "com.lge.bnr.remote.IRemoteBackup"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/bnr/remote/IRemoteBackup;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/bnr/remote/IRemoteBackup;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/bnr/remote/IRemoteBackup$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/bnr/remote/IRemoteBackup$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_15c

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 42
    :sswitch_a
    const-string v4, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setBackupProgressforCopyFile(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 58
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_24
    const-string v4, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_46

    .line 63
    sget-object v4, Lcom/lge/bnr/model/BNRZipByteData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/bnr/model/BNRZipByteData;

    .line 68
    .local v2, "_arg1":Lcom/lge/bnr/model/BNRZipByteData;
    :goto_3b
    invoke-virtual {p0, v0, v2}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setBackupStreamData(Ljava/lang/String;Lcom/lge/bnr/model/BNRZipByteData;)I

    move-result v1

    .line 69
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 66
    .end local v1    # "_result":I
    .end local v2    # "_arg1":Lcom/lge/bnr/model/BNRZipByteData;
    :cond_46
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/lge/bnr/model/BNRZipByteData;
    goto :goto_3b

    .line 75
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/lge/bnr/model/BNRZipByteData;
    :sswitch_48
    const-string v4, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setBackupProgress(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_5c
    const-string v4, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setRestoreProgress(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_70
    const-string v4, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8f

    .line 102
    sget-object v4, Lcom/lge/bnr/model/BNRFailItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/bnr/model/BNRFailItem;

    .line 107
    .local v2, "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :goto_87
    invoke-virtual {p0, v0, v2}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setBackupComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 105
    .end local v2    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :cond_8f
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    goto :goto_87

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :sswitch_91
    const-string v4, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b0

    .line 118
    sget-object v4, Lcom/lge/bnr/model/BNRFailItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/bnr/model/BNRFailItem;

    .line 123
    .restart local v2    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :goto_a8
    invoke-virtual {p0, v0, v2}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setRestoreComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 121
    .end local v2    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :cond_b0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    goto :goto_a8

    .line 129
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :sswitch_b2
    const-string v4, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setEnableBackup(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_c7
    const-string v4, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setEnableRestore(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 149
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d8
    const-string v6, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_100

    .line 154
    sget-object v6, Lcom/lge/bnr/model/BNRFailItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/bnr/model/BNRFailItem;

    .line 159
    .local v2, "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :goto_ef
    invoke-virtual {p0, v0, v2}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setFailItem(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)Lcom/lge/bnr/model/BNRFailItem;

    move-result-object v1

    .line 160
    .local v1, "_result":Lcom/lge/bnr/model/BNRFailItem;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v1, :cond_102

    .line 162
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {v1, p3, v5}, Lcom/lge/bnr/model/BNRFailItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 157
    .end local v1    # "_result":Lcom/lge/bnr/model/BNRFailItem;
    .end local v2    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :cond_100
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    goto :goto_ef

    .line 166
    .restart local v1    # "_result":Lcom/lge/bnr/model/BNRFailItem;
    :cond_102
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 172
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Lcom/lge/bnr/model/BNRFailItem;
    .end local v2    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :sswitch_107
    const-string v6, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/bnr/remote/IRemoteBackupCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bnr/remote/IRemoteBackupCallback;

    move-result-object v0

    .line 175
    .local v0, "_arg0":Lcom/lge/bnr/remote/IRemoteBackupCallback;
    invoke-virtual {p0, v0}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->registerCallback(Lcom/lge/bnr/remote/IRemoteBackupCallback;)Z

    move-result v1

    .line 176
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v1, :cond_11e

    move v4, v5

    :cond_11e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v0    # "_arg0":Lcom/lge/bnr/remote/IRemoteBackupCallback;
    .end local v1    # "_result":Z
    :sswitch_123
    const-string v4, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/bnr/remote/IRemoteBackupCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bnr/remote/IRemoteBackupCallback;

    move-result-object v0

    .line 185
    .restart local v0    # "_arg0":Lcom/lge/bnr/remote/IRemoteBackupCallback;
    invoke-virtual {p0, v0}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->unregisterCallback(Lcom/lge/bnr/remote/IRemoteBackupCallback;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 191
    .end local v0    # "_arg0":Lcom/lge/bnr/remote/IRemoteBackupCallback;
    :sswitch_138
    const-string v6, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 196
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->getRemoteFd(Ljava/lang/String;J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 197
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v1, :cond_156

    .line 199
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {v1, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 203
    :cond_156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_15c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_48
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_70
        0x6 -> :sswitch_91
        0x7 -> :sswitch_b2
        0x8 -> :sswitch_c7
        0x9 -> :sswitch_d8
        0xa -> :sswitch_107
        0xb -> :sswitch_123
        0xc -> :sswitch_138
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
