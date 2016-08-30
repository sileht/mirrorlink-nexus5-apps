.class public abstract Lcom/lge/systemservice/core/ILGSDEncManager$Stub;
.super Landroid/os/Binder;
.source "ILGSDEncManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/ILGSDEncManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ILGSDEncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ILGSDEncManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.ILGSDEncManager"

.field static final TRANSACTION_MDMStorageEncryptionStatus:I = 0xe

.field static final TRANSACTION_StorageEncryptionStatus:I = 0xb

.field static final TRANSACTION_changepw:I = 0x12

.field static final TRANSACTION_externalSDCardCheckMemory:I = 0xf

.field static final TRANSACTION_externalSDCardDeleteMetaDir:I = 0x4

.field static final TRANSACTION_externalSDCardDisableEncryption:I = 0x3

.field static final TRANSACTION_externalSDCardEnableEncryption:I = 0x1

.field static final TRANSACTION_externalSDCardEnableEncryptionUserPassword:I = 0x2

.field static final TRANSACTION_externalSDCardFullDisableEncryption:I = 0x6

.field static final TRANSACTION_externalSDCardFullEnableEncryption:I = 0x5

.field static final TRANSACTION_externalSDCardFullTotalMemory:I = 0x7

.field static final TRANSACTION_externalSDCardMediaDisableEncryption:I = 0x9

.field static final TRANSACTION_externalSDCardMediaEnableEncryption:I = 0x8

.field static final TRANSACTION_externalSDCardMountComplete:I = 0xa

.field static final TRANSACTION_getExternalSDCardMountPath:I = 0xd

.field static final TRANSACTION_getInternalSDCardMountPath:I = 0xc

.field static final TRANSACTION_isExistSDEncMetaFile:I = 0x15

.field static final TRANSACTION_isProgressing:I = 0x11

.field static final TRANSACTION_lockDevice:I = 0x13

.field static final TRANSACTION_setProgressing:I = 0x10

.field static final TRANSACTION_unlockDevice:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGSDEncManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/ILGSDEncManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/systemservice/core/ILGSDEncManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/ILGSDEncManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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

    .line 41
    sparse-switch p1, :sswitch_data_1aa

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 45
    :sswitch_a
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardEnableEncryption(Ljava/lang/String;)I

    move-result v3

    .line 54
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_24
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardEnableEncryptionUserPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 66
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_3c
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardDisableEncryption(Ljava/lang/String;)I

    move-result v3

    .line 76
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 82
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_50
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardDeleteMetaDir()I

    move-result v3

    .line 84
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 90
    .end local v3    # "_result":I
    :sswitch_60
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardFullEnableEncryption(Ljava/lang/String;)I

    move-result v3

    .line 94
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_74
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardFullDisableEncryption(Ljava/lang/String;)I

    move-result v3

    .line 104
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_88
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 113
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardFullTotalMemory(J)I

    move-result v3

    .line 114
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 120
    .end local v0    # "_arg0":J
    .end local v3    # "_result":I
    :sswitch_9d
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardMediaEnableEncryption()I

    move-result v3

    .line 122
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 128
    .end local v3    # "_result":I
    :sswitch_ae
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardMediaDisableEncryption()I

    move-result v3

    .line 130
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 136
    .end local v3    # "_result":I
    :sswitch_bf
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardMountComplete(Ljava/lang/String;)I

    move-result v3

    .line 140
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 146
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_d4
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->StorageEncryptionStatus()I

    move-result v3

    .line 148
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 154
    .end local v3    # "_result":I
    :sswitch_e5
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->getInternalSDCardMountPath()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 162
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_f6
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->getExternalSDCardMountPath()Ljava/lang/String;

    move-result-object v3

    .line 164
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 170
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_107
    const-string v6, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->MDMStorageEncryptionStatus()Z

    move-result v3

    .line 172
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v3, :cond_116

    move v4, v5

    :cond_116
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 178
    .end local v3    # "_result":Z
    :sswitch_11b
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->externalSDCardCheckMemory()I

    move-result v3

    .line 180
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 186
    .end local v3    # "_result":I
    :sswitch_12c
    const-string v6, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_144

    move v0, v5

    .line 189
    .local v0, "_arg0":Z
    :goto_138
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->setProgressing(Z)I

    move-result v3

    .line 190
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":I
    :cond_144
    move v0, v4

    .line 188
    goto :goto_138

    .line 196
    :sswitch_146
    const-string v6, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->isProgressing()Z

    move-result v3

    .line 198
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v3, :cond_155

    move v4, v5

    :cond_155
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 204
    .end local v3    # "_result":Z
    :sswitch_15a
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->changepw(Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 214
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_16f
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->lockDevice()I

    move-result v3

    .line 216
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 222
    .end local v3    # "_result":I
    :sswitch_180
    const-string v4, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->unlockDevice(Ljava/lang/String;)I

    move-result v3

    .line 226
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_195
    const-string v6, "com.lge.systemservice.core.ILGSDEncManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGSDEncManager$Stub;->isExistSDEncMetaFile()Z

    move-result v3

    .line 234
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v3, :cond_1a4

    move v4, v5

    :cond_1a4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_1aa
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_50
        0x5 -> :sswitch_60
        0x6 -> :sswitch_74
        0x7 -> :sswitch_88
        0x8 -> :sswitch_9d
        0x9 -> :sswitch_ae
        0xa -> :sswitch_bf
        0xb -> :sswitch_d4
        0xc -> :sswitch_e5
        0xd -> :sswitch_f6
        0xe -> :sswitch_107
        0xf -> :sswitch_11b
        0x10 -> :sswitch_12c
        0x11 -> :sswitch_146
        0x12 -> :sswitch_15a
        0x13 -> :sswitch_16f
        0x14 -> :sswitch_180
        0x15 -> :sswitch_195
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
