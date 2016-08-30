.class public abstract Lcom/lge/internal/telephony/ISmsEx$Stub;
.super Landroid/os/Binder;
.source "ISmsEx.java"

# interfaces
.implements Lcom/lge/internal/telephony/ISmsEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/ISmsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telephony/ISmsEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.internal.telephony.ISmsEx"

.field static final TRANSACTION_copySmsToIccEf:I = 0x7

.field static final TRANSACTION_copySmsToIccEfForSubscriber:I = 0x1d

.field static final TRANSACTION_copySmsToIccEfPrivate:I = 0xb

.field static final TRANSACTION_copySmsToIccEfPrivateForSubscriber:I = 0xc

.field static final TRANSACTION_disableGsmBroadcastRange:I = 0x1c

.field static final TRANSACTION_enableAutoDCDisconnect:I = 0x15

.field static final TRANSACTION_enableGsmBroadcastRange:I = 0x1b

.field static final TRANSACTION_getCsimImsi:I = 0x26

.field static final TRANSACTION_getIsSimFull:I = 0x18

.field static final TRANSACTION_getMaxEfSms:I = 0x5

.field static final TRANSACTION_getMaxEfSmsForSubscriber:I = 0x1e

.field static final TRANSACTION_getMaxEfSmsMultiModeForSubscriber:I = 0xd

.field static final TRANSACTION_getSmscenterAddress:I = 0x3

.field static final TRANSACTION_getSmscenterAddressForSubscriber:I = 0x20

.field static final TRANSACTION_getUiccType:I = 0xf

.field static final TRANSACTION_insertDBForLGMessage:I = 0x19

.field static final TRANSACTION_isBlockSendMessage:I = 0x25

.field static final TRANSACTION_isFdnEnabled:I = 0x16

.field static final TRANSACTION_isFdnEnabledOnSubscription:I = 0x22

.field static final TRANSACTION_resetVoiceMessageCount:I = 0x27

.field static final TRANSACTION_sendMultipartTextLge:I = 0x13

.field static final TRANSACTION_sendMultipartTextWithMsgOption:I = 0x9

.field static final TRANSACTION_sendReadReceipt:I = 0xa

.field static final TRANSACTION_sendTextLge:I = 0x12

.field static final TRANSACTION_sendTextNSRI:I = 0x14

.field static final TRANSACTION_sendTextWithMsgOption:I = 0x8

.field static final TRANSACTION_setIsSimFull:I = 0x17

.field static final TRANSACTION_setMultipartTextPriority:I = 0x2

.field static final TRANSACTION_setMultipartTextPriorityForSubscriber:I = 0x24

.field static final TRANSACTION_setMultipartTextValidityPeriod:I = 0x1

.field static final TRANSACTION_setMultipartTextValidityPeriodForSubscriber:I = 0x23

.field static final TRANSACTION_setSmscenterAddress:I = 0x4

.field static final TRANSACTION_setSmscenterAddressForSubscriber:I = 0x21

.field static final TRANSACTION_setUiccType:I = 0xe

.field static final TRANSACTION_smsReceptionBlockingforNIAPPolicy:I = 0x1a

.field static final TRANSACTION_updateMessageOnIccEfMultiMode:I = 0x10

.field static final TRANSACTION_updateMessageOnIccEfMultiModeForSubscriber:I = 0x11

.field static final TRANSACTION_updateSmsOnSimReadStatus:I = 0x6

.field static final TRANSACTION_updateSmsOnSimReadStatusForSubscriber:I = 0x1f


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.lge.internal.telephony.ISmsEx"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ISmsEx;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_3
    return-object v0

    .line 40
    :cond_4
    const-string v1, "com.lge.internal.telephony.ISmsEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/internal/telephony/ISmsEx;

    if-eqz v1, :cond_13

    .line 42
    check-cast v0, Lcom/lge/internal/telephony/ISmsEx;

    goto :goto_3

    .line 44
    :cond_13
    new-instance v0, Lcom/lge/internal/telephony/ISmsEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/internal/telephony/ISmsEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 37
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
    .line 52
    sparse-switch p1, :sswitch_data_626

    .line 613
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 56
    :sswitch_8
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x1

    goto :goto_7

    .line 61
    :sswitch_11
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 64
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setMultipartTextValidityPeriod(I)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v2, 0x1

    goto :goto_7

    .line 70
    .end local v3    # "_arg0":I
    :sswitch_26
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setMultipartTextPriority(I)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v2, 0x1

    goto :goto_7

    .line 79
    .end local v3    # "_arg0":I
    :sswitch_3b
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getSmscenterAddress()Ljava/lang/String;

    move-result-object v31

    .line 81
    .local v31, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    const/4 v2, 0x1

    goto :goto_7

    .line 87
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_52
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setSmscenterAddress(Ljava/lang/String;)Z

    move-result v31

    .line 91
    .local v31, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v31, :cond_70

    const/4 v2, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v2, 0x1

    goto :goto_7

    .line 92
    :cond_70
    const/4 v2, 0x0

    goto :goto_69

    .line 97
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Z
    :sswitch_72
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getMaxEfSms()I

    move-result v31

    .line 99
    .local v31, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 105
    .end local v31    # "_result":I
    :sswitch_8a
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b0

    const/4 v4, 0x1

    .line 110
    .local v4, "_arg1":Z
    :goto_9c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lge/internal/telephony/ISmsEx$Stub;->updateSmsOnSimReadStatus(IZ)Z

    move-result v31

    .line 111
    .local v31, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v31, :cond_b2

    const/4 v2, 0x1

    :goto_a8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 109
    .end local v4    # "_arg1":Z
    .end local v31    # "_result":Z
    :cond_b0
    const/4 v4, 0x0

    goto :goto_9c

    .line 112
    .restart local v4    # "_arg1":Z
    .restart local v31    # "_result":Z
    :cond_b2
    const/4 v2, 0x0

    goto :goto_a8

    .line 117
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v31    # "_result":Z
    :sswitch_b4
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 123
    .local v4, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 124
    .local v5, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/lge/internal/telephony/ISmsEx$Stub;->copySmsToIccEf(I[B[B)I

    move-result v31

    .line 125
    .local v31, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 131
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":[B
    .end local v31    # "_result":I
    :sswitch_da
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12c

    .line 142
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 148
    .local v7, "_arg4":Landroid/app/PendingIntent;
    :goto_101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12e

    .line 149
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 155
    .local v8, "_arg5":Landroid/app/PendingIntent;
    :goto_111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_130

    .line 156
    sget-object v2, Lcom/lge/internal/telephony/LGSendingSMSOption;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/internal/telephony/LGSendingSMSOption;

    .local v9, "_arg6":Lcom/lge/internal/telephony/LGSendingSMSOption;
    :goto_121
    move-object/from16 v2, p0

    .line 161
    invoke-virtual/range {v2 .. v9}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/lge/internal/telephony/LGSendingSMSOption;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 145
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Lcom/lge/internal/telephony/LGSendingSMSOption;
    :cond_12c
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_101

    .line 152
    :cond_12e
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_111

    .line 159
    :cond_130
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Lcom/lge/internal/telephony/LGSendingSMSOption;
    goto :goto_121

    .line 167
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Lcom/lge/internal/telephony/LGSendingSMSOption;
    :sswitch_132
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 173
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 175
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 177
    .local v14, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 179
    .local v15, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 181
    .local v16, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Lcom/lge/internal/telephony/LGSendingSMSOption;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .local v17, "_arg6":Ljava/util/List;, "Ljava/util/List<Lcom/lge/internal/telephony/LGSendingSMSOption;>;"
    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    .line 182
    invoke-virtual/range {v10 .. v17}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendMultipartTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 188
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v16    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v17    # "_arg6":Ljava/util/List;, "Ljava/util/List<Lcom/lge/internal/telephony/LGSendingSMSOption;>;"
    :sswitch_16f
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 193
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendReadReceipt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 199
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_189
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 205
    .local v4, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 207
    .local v5, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 208
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/lge/internal/telephony/ISmsEx$Stub;->copySmsToIccEfPrivate(I[B[BI)I

    move-result v31

    .line 209
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 215
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v31    # "_result":I
    :sswitch_1b3
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 219
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 221
    .restart local v4    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 223
    .restart local v5    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 225
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 226
    invoke-virtual/range {v2 .. v7}, Lcom/lge/internal/telephony/ISmsEx$Stub;->copySmsToIccEfPrivateForSubscriber(I[B[BII)I

    move-result v31

    .line 227
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 233
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v31    # "_result":I
    :sswitch_1e1
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 238
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getMaxEfSmsMultiModeForSubscriber(II)I

    move-result v31

    .line 239
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 245
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v31    # "_result":I
    :sswitch_203
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 248
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setUiccType(I)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 254
    .end local v3    # "_arg0":I
    :sswitch_219
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getUiccType()I

    move-result v31

    .line 256
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 262
    .end local v31    # "_result":I
    :sswitch_231
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 266
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 268
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 270
    .restart local v5    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 271
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/lge/internal/telephony/ISmsEx$Stub;->updateMessageOnIccEfMultiMode(II[BI)Z

    move-result v31

    .line 272
    .local v31, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v31, :cond_25c

    const/4 v2, 0x1

    :goto_254
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 273
    :cond_25c
    const/4 v2, 0x0

    goto :goto_254

    .line 278
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v31    # "_result":Z
    :sswitch_25e
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 282
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 284
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 286
    .restart local v5    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 288
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg4":I
    move-object/from16 v2, p0

    .line 289
    invoke-virtual/range {v2 .. v7}, Lcom/lge/internal/telephony/ISmsEx$Stub;->updateMessageOnIccEfMultiModeForSubscriber(II[BII)Z

    move-result v31

    .line 290
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v31, :cond_28d

    const/4 v2, 0x1

    :goto_285
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 291
    :cond_28d
    const/4 v2, 0x0

    goto :goto_285

    .line 296
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v31    # "_result":Z
    :sswitch_28f
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e8

    .line 307
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 313
    .local v7, "_arg4":Landroid/app/PendingIntent;
    :goto_2b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2ea

    .line 314
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 320
    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    :goto_2c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 322
    .local v9, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 324
    .local v10, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 326
    .local v11, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 328
    .local v12, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2ec

    const/4 v13, 0x1

    .local v13, "_arg10":Z
    :goto_2dd
    move-object/from16 v2, p0

    .line 329
    invoke-virtual/range {v2 .. v13}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 310
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":I
    .end local v12    # "_arg9":I
    .end local v13    # "_arg10":Z
    :cond_2e8
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_2b6

    .line 317
    :cond_2ea
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_2c6

    .line 328
    .restart local v9    # "_arg6":Ljava/lang/String;
    .restart local v10    # "_arg7":I
    .restart local v11    # "_arg8":I
    .restart local v12    # "_arg9":I
    :cond_2ec
    const/4 v13, 0x0

    goto :goto_2dd

    .line 335
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":I
    .end local v12    # "_arg9":I
    :sswitch_2ee
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 339
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 341
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 343
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 345
    .restart local v14    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 347
    .restart local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 349
    .restart local v16    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 351
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 353
    .restart local v10    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 355
    .restart local v11    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 357
    .restart local v12    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34d

    const/4 v13, 0x1

    .restart local v13    # "_arg10":Z
    :goto_32c
    move-object/from16 v18, p0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v16

    move-object/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    .line 358
    invoke-virtual/range {v18 .. v29}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IIIZ)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 357
    .end local v13    # "_arg10":Z
    :cond_34d
    const/4 v13, 0x0

    goto :goto_32c

    .line 364
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":I
    .end local v12    # "_arg9":I
    .end local v14    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v16    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_34f
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 368
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 370
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 372
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 374
    .local v6, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_398

    .line 375
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 381
    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    :goto_376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39a

    .line 382
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 388
    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    :goto_386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39c

    const/4 v9, 0x1

    .local v9, "_arg6":Z
    :goto_38d
    move-object/from16 v2, p0

    .line 389
    invoke-virtual/range {v2 .. v9}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendTextNSRI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 378
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Z
    :cond_398
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_376

    .line 385
    :cond_39a
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_386

    .line 388
    :cond_39c
    const/4 v9, 0x0

    goto :goto_38d

    .line 395
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":[B
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_39e
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 398
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->enableAutoDCDisconnect(I)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 404
    .end local v3    # "_arg0":I
    :sswitch_3b4
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->isFdnEnabled()Z

    move-result v31

    .line 406
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v31, :cond_3cd

    const/4 v2, 0x1

    :goto_3c5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 407
    :cond_3cd
    const/4 v2, 0x0

    goto :goto_3c5

    .line 412
    .end local v31    # "_result":Z
    :sswitch_3cf
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e8

    const/4 v3, 0x1

    .line 415
    .local v3, "_arg0":Z
    :goto_3dd
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setIsSimFull(Z)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 414
    .end local v3    # "_arg0":Z
    :cond_3e8
    const/4 v3, 0x0

    goto :goto_3dd

    .line 421
    :sswitch_3ea
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getIsSimFull()Z

    move-result v31

    .line 423
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    if-eqz v31, :cond_403

    const/4 v2, 0x1

    :goto_3fb
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 424
    :cond_403
    const/4 v2, 0x0

    goto :goto_3fb

    .line 429
    .end local v31    # "_result":Z
    :sswitch_405
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_448

    .line 432
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 438
    .local v3, "_arg0":Landroid/net/Uri;
    :goto_41c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_44a

    .line 439
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 444
    .local v4, "_arg1":Landroid/content/ContentValues;
    :goto_42c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lge/internal/telephony/ISmsEx$Stub;->insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    .line 445
    .local v31, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v31, :cond_44c

    .line 447
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v2, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 453
    :goto_445
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 435
    .end local v3    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_arg1":Landroid/content/ContentValues;
    .end local v31    # "_result":Landroid/net/Uri;
    :cond_448
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/Uri;
    goto :goto_41c

    .line 442
    :cond_44a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ContentValues;
    goto :goto_42c

    .line 451
    .restart local v31    # "_result":Landroid/net/Uri;
    :cond_44c
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_445

    .line 457
    .end local v3    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_arg1":Landroid/content/ContentValues;
    .end local v31    # "_result":Landroid/net/Uri;
    :sswitch_453
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z

    move-result v31

    .line 461
    .local v31, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    if-eqz v31, :cond_472

    const/4 v2, 0x1

    :goto_46a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 462
    :cond_472
    const/4 v2, 0x0

    goto :goto_46a

    .line 467
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Z
    :sswitch_474
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 471
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 472
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lge/internal/telephony/ISmsEx$Stub;->enableGsmBroadcastRange(II)Z

    move-result v31

    .line 473
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v31, :cond_497

    const/4 v2, 0x1

    :goto_48f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 474
    :cond_497
    const/4 v2, 0x0

    goto :goto_48f

    .line 479
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v31    # "_result":Z
    :sswitch_499
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 483
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 484
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lge/internal/telephony/ISmsEx$Stub;->disableGsmBroadcastRange(II)Z

    move-result v31

    .line 485
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    if-eqz v31, :cond_4bc

    const/4 v2, 0x1

    :goto_4b4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 486
    :cond_4bc
    const/4 v2, 0x0

    goto :goto_4b4

    .line 491
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v31    # "_result":Z
    :sswitch_4be
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 495
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 497
    .local v4, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 499
    .local v5, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 500
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/lge/internal/telephony/ISmsEx$Stub;->copySmsToIccEfForSubscriber(I[B[BI)I

    move-result v31

    .line 501
    .local v31, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 507
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v31    # "_result":I
    :sswitch_4e8
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 510
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getMaxEfSmsForSubscriber(I)I

    move-result v31

    .line 511
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 517
    .end local v3    # "_arg0":I
    .end local v31    # "_result":I
    :sswitch_506
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 521
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_530

    const/4 v4, 0x1

    .line 523
    .local v4, "_arg1":Z
    :goto_518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 524
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/lge/internal/telephony/ISmsEx$Stub;->updateSmsOnSimReadStatusForSubscriber(IZI)Z

    move-result v31

    .line 525
    .local v31, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    if-eqz v31, :cond_532

    const/4 v2, 0x1

    :goto_528
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 521
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":I
    .end local v31    # "_result":Z
    :cond_530
    const/4 v4, 0x0

    goto :goto_518

    .line 526
    .restart local v4    # "_arg1":Z
    .restart local v5    # "_arg2":I
    .restart local v31    # "_result":Z
    :cond_532
    const/4 v2, 0x0

    goto :goto_528

    .line 531
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":I
    .end local v31    # "_result":Z
    :sswitch_534
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 534
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getSmscenterAddressForSubscriber(I)Ljava/lang/String;

    move-result-object v31

    .line 535
    .local v31, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 541
    .end local v3    # "_arg0":I
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_552
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 546
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setSmscenterAddressForSubscriber(Ljava/lang/String;I)Z

    move-result v31

    .line 547
    .local v31, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v31, :cond_575

    const/4 v2, 0x1

    :goto_56d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 548
    :cond_575
    const/4 v2, 0x0

    goto :goto_56d

    .line 553
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v31    # "_result":Z
    :sswitch_577
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 556
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->isFdnEnabledOnSubscription(I)Z

    move-result v31

    .line 557
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    if-eqz v31, :cond_596

    const/4 v2, 0x1

    :goto_58e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 558
    :cond_596
    const/4 v2, 0x0

    goto :goto_58e

    .line 563
    .end local v3    # "_arg0":I
    .end local v31    # "_result":Z
    :sswitch_598
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 567
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 568
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setMultipartTextValidityPeriodForSubscriber(II)V

    .line 569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 574
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_5b2
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 578
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 579
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setMultipartTextPriorityForSubscriber(II)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 585
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_5cc
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v30

    .line 589
    .local v30, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 590
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lcom/lge/internal/telephony/ISmsEx$Stub;->isBlockSendMessage(Ljava/util/List;I)Z

    move-result v31

    .line 591
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v31, :cond_5f5

    const/4 v2, 0x1

    :goto_5ed
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 592
    :cond_5f5
    const/4 v2, 0x0

    goto :goto_5ed

    .line 597
    .end local v4    # "_arg1":I
    .end local v30    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v31    # "_result":Z
    :sswitch_5f7
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 600
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getCsimImsi(I)Ljava/lang/String;

    move-result-object v31

    .line 601
    .local v31, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 607
    .end local v3    # "_arg0":I
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_615
    const-string v2, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->resetVoiceMessageCount()V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 52
    nop

    :sswitch_data_626
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_52
        0x5 -> :sswitch_72
        0x6 -> :sswitch_8a
        0x7 -> :sswitch_b4
        0x8 -> :sswitch_da
        0x9 -> :sswitch_132
        0xa -> :sswitch_16f
        0xb -> :sswitch_189
        0xc -> :sswitch_1b3
        0xd -> :sswitch_1e1
        0xe -> :sswitch_203
        0xf -> :sswitch_219
        0x10 -> :sswitch_231
        0x11 -> :sswitch_25e
        0x12 -> :sswitch_28f
        0x13 -> :sswitch_2ee
        0x14 -> :sswitch_34f
        0x15 -> :sswitch_39e
        0x16 -> :sswitch_3b4
        0x17 -> :sswitch_3cf
        0x18 -> :sswitch_3ea
        0x19 -> :sswitch_405
        0x1a -> :sswitch_453
        0x1b -> :sswitch_474
        0x1c -> :sswitch_499
        0x1d -> :sswitch_4be
        0x1e -> :sswitch_4e8
        0x1f -> :sswitch_506
        0x20 -> :sswitch_534
        0x21 -> :sswitch_552
        0x22 -> :sswitch_577
        0x23 -> :sswitch_598
        0x24 -> :sswitch_5b2
        0x25 -> :sswitch_5cc
        0x26 -> :sswitch_5f7
        0x27 -> :sswitch_615
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
