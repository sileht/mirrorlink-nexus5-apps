.class public abstract Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;
.super Landroid/os/Binder;
.source "IVolumeVibratorManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IVolumeVibratorManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IVolumeVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IVolumeVibratorManager"

.field static final TRANSACTION_cancelVibrate:I = 0x5

.field static final TRANSACTION_getCurrentVibratorVolume:I = 0xa

.field static final TRANSACTION_getVibrateVolume:I = 0x7

.field static final TRANSACTION_getVibrateVolumeType:I = 0x9

.field static final TRANSACTION_onCancel:I = 0x2

.field static final TRANSACTION_onVibratorExcuted:I = 0x1

.field static final TRANSACTION_setVibrateMute:I = 0xb

.field static final TRANSACTION_setVibrateVolume:I = 0x6

.field static final TRANSACTION_setVibrateVolumeType:I = 0x8

.field static final TRANSACTION_vibrate:I = 0x3

.field static final TRANSACTION_vibratePattern:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.IVolumeVibratorManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IVolumeVibratorManager;
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
    const-string v1, "com.lge.systemservice.core.IVolumeVibratorManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/IVolumeVibratorManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/IVolumeVibratorManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 24
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
    .line 38
    sparse-switch p1, :sswitch_data_14c

    .line 172
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_7
    return v3

    .line 42
    :sswitch_8
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    goto :goto_7

    .line 47
    :sswitch_11
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 50
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->onVibratorExcuted(I)V

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    const/4 v3, 0x1

    goto :goto_7

    .line 56
    .end local v4    # "_arg0":I
    :sswitch_26
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->onCancel()V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v3, 0x1

    goto :goto_7

    .line 63
    :sswitch_35
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 67
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 71
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 73
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 75
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .local v10, "_arg5":Landroid/os/IBinder;
    move-object/from16 v3, p0

    .line 76
    invoke-virtual/range {v3 .. v10}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->vibrate(ILjava/lang/String;JIILandroid/os/IBinder;)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    const/4 v3, 0x1

    goto :goto_7

    .line 82
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/os/IBinder;
    :sswitch_5e
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 86
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 88
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 90
    .local v6, "_arg2":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 92
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 94
    .local v9, "_arg4":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 96
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .local v18, "_arg6":Landroid/os/IBinder;
    move-object/from16 v11, p0

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v8

    move-object/from16 v16, v9

    move/from16 v17, v10

    .line 97
    invoke-virtual/range {v11 .. v18}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->vibratePattern(ILjava/lang/String;[JI[IILandroid/os/IBinder;)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 103
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":[J
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":[I
    .end local v10    # "_arg5":I
    .end local v18    # "_arg6":Landroid/os/IBinder;
    :sswitch_94
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 106
    .local v4, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->cancelVibrate(Landroid/os/IBinder;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 112
    .end local v4    # "_arg0":Landroid/os/IBinder;
    :sswitch_aa
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->setVibrateVolume(I)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 121
    .end local v4    # "_arg0":I
    :sswitch_c0
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->getVibrateVolume()I

    move-result v2

    .line 123
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 129
    .end local v2    # "_result":I
    :sswitch_d6
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 133
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 134
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->setVibrateVolumeType(II)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 140
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_f0
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 143
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->getVibrateVolumeType(I)I

    move-result v2

    .line 144
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 150
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    :sswitch_10c
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 153
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->getCurrentVibratorVolume(I)I

    move-result v2

    .line 154
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 160
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    :sswitch_128
    const-string v3, "com.lge.systemservice.core.IVolumeVibratorManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_149

    const/4 v4, 0x1

    .line 164
    .local v4, "_arg0":Z
    :goto_136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 167
    .local v6, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->setVibrateMute(ZLjava/lang/String;Landroid/os/IBinder;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 162
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :cond_149
    const/4 v4, 0x0

    goto :goto_136

    .line 38
    nop

    :sswitch_data_14c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_35
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_94
        0x6 -> :sswitch_aa
        0x7 -> :sswitch_c0
        0x8 -> :sswitch_d6
        0x9 -> :sswitch_f0
        0xa -> :sswitch_10c
        0xb -> :sswitch_128
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
