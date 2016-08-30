.class public Lcom/lge/telephony/LGTelephonyManagerImpl;
.super Ljava/lang/Object;
.source "LGTelephonyManagerImpl.java"

# interfaces
.implements Lcom/lge/telephony/ILGTelephonyManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "LGTelephonyManagerImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;
    .registers 2

    .prologue
    .line 53
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method private getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;
    .registers 2

    .prologue
    .line 58
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v0

    return-object v0
.end method

.method private uknight_get_data_result(I[B)[B
    .registers 10
    .param p1, "cumuDataSize"    # I
    .param p2, "logDataTemp"    # [B

    .prologue
    const/4 v3, 0x0

    .line 178
    if-nez p1, :cond_19

    .line 179
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uknightGetData()-- cumuDataSize="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 205
    :goto_18
    return-object v2

    .line 184
    :cond_19
    :try_start_19
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v4

    const v5, 0xffff

    invoke-interface {v4, v5}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightGetData(I)Lcom/lge/internal/telephony/KNDataResponse;

    move-result-object v1

    .line 185
    .local v1, "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    if-nez v1, :cond_2f

    .line 186
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "Internal Start ERROR : KNDataResponse is NULL"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 187
    goto :goto_18

    .line 190
    :cond_2f
    array-length v4, p2

    if-ge p1, v4, :cond_55

    .line 191
    new-array v2, p1, [B

    .line 192
    .local v2, "logDataResult":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p2, v4, v2, v5, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 193
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uknightGetData()-- logDataResult.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_4e} :catch_6c

    goto :goto_18

    .line 199
    .end local v1    # "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    .end local v2    # "logDataResult":[B
    :catch_4f
    move-exception v0

    .line 200
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_53
    move-object v2, v3

    .line 205
    goto :goto_18

    .line 196
    .restart local v1    # "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    :cond_55
    :try_start_55
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uknightGetData()-- logData.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_6a} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_6a} :catch_6c

    move-object v2, p2

    .line 197
    goto :goto_18

    .line 201
    .end local v1    # "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    :catch_6c
    move-exception v0

    .line 202
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_53
.end method


# virtual methods
.method public DMRequest([B[B)[B
    .registers 18
    .param p1, "inputKey"    # [B
    .param p2, "req"    # [B

    .prologue
    .line 1108
    const-string v12, "ro.build.target_operator"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1109
    .local v4, "byteOperator":[B
    const/4 v5, 0x0

    .line 1110
    .local v5, "decKey":[B
    const-string v1, ""

    .line 1111
    .local v1, "Key":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .line 1112
    .local v8, "j":I
    const-string v3, "MBSP"

    .line 1113
    .local v3, "MagicCode":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1114
    .local v9, "result":I
    const/4 v10, 0x0

    .line 1116
    .local v10, "resultByte":[B
    const-string v12, "LGTelephonyManagerImpl"

    const-string v13, "[LGTelephonyManagerImpl.java] DMRequest"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    if-nez p1, :cond_24

    .line 1120
    const-string v12, "LGTelephonyManagerImpl"

    const-string v13, "[DMRequest] inputKey is null"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v9, 0x2

    .line 1125
    :cond_24
    if-nez p2, :cond_57

    .line 1127
    const-string v12, "LGTelephonyManagerImpl"

    const-string v13, "[DMRequest] req is null"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v9, 0x3

    .line 1144
    :cond_2e
    :goto_2e
    if-lez v9, :cond_77

    .line 1146
    const/4 v12, 0x4

    new-array v10, v12, [B

    .line 1148
    const/4 v12, 0x0

    and-int/lit16 v13, v9, 0xff

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    .line 1149
    const/4 v12, 0x1

    const v13, 0xff00

    and-int/2addr v13, v9

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    .line 1150
    const/4 v12, 0x2

    const/high16 v13, 0xff0000

    and-int/2addr v13, v9

    shr-int/lit8 v13, v13, 0x10

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    .line 1151
    const/4 v12, 0x3

    const/high16 v13, -0x1000000

    and-int/2addr v13, v9

    shr-int/lit8 v13, v13, 0x18

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    move-object v12, v10

    .line 1218
    :goto_56
    return-object v12

    .line 1136
    :cond_57
    move-object/from16 v0, p2

    array-length v12, v0

    const/16 v13, 0x8

    if-ge v12, v13, :cond_2e

    .line 1138
    const-string v12, "LGTelephonyManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[DMRequest] req.length is short. req.length = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v9, 0x6

    goto :goto_2e

    .line 1159
    :cond_77
    :try_start_77
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v11

    .line 1161
    .local v11, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v11, :cond_86

    .line 1163
    const-string v12, "LGTelephonyManagerImpl"

    const-string v13, "[DMRequest] telephony is null"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const/4 v12, 0x0

    goto :goto_56

    .line 1167
    :cond_86
    if-eqz p1, :cond_14b

    .line 1168
    if-eqz p2, :cond_14b

    .line 1169
    move-object/from16 v0, p2

    array-length v12, v0

    const/16 v13, 0x8

    if-lt v12, v13, :cond_14b

    .line 1171
    const-string v12, "LGTelephonyManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[DMRequest] inputKey.length = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, 0x4

    new-array v10, v12, [B

    .line 1175
    const/4 v12, 0x0

    const/4 v13, 0x4

    move-object/from16 v0, p2

    array-length v14, v0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1177
    move-object/from16 v0, p1

    array-length v12, v0

    new-array v5, v12, [B

    .line 1180
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_c0
    move-object/from16 v0, p1

    array-length v12, v0

    if-lt v7, v12, :cond_10e

    .line 1186
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_ca} :catch_147
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_ca} :catch_14e

    .line 1188
    .end local v1    # "Key":Ljava/lang/String;
    .local v2, "Key":Ljava/lang/String;
    :try_start_ca
    const-string v12, "LGTelephonyManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[DMRequest] MagicCode = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Key = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_120

    .line 1192
    const-string v12, "LGTelephonyManagerImpl"

    const-string v13, "[DMRequest] Auth Fail."

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v9, 0x4

    .line 1196
    const/4 v12, 0x0

    const/4 v13, 0x4

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    .line 1197
    const/4 v12, 0x1

    const/4 v13, 0x0

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    .line 1198
    const/4 v12, 0x2

    const/4 v13, 0x0

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    .line 1199
    const/4 v12, 0x3

    const/4 v13, 0x0

    int-to-byte v13, v13

    aput-byte v13, v10, v12
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_10a} :catch_156
    .catch Ljava/lang/NullPointerException; {:try_start_ca .. :try_end_10a} :catch_153

    move-object v1, v2

    .end local v2    # "Key":Ljava/lang/String;
    .restart local v1    # "Key":Ljava/lang/String;
    move-object v12, v10

    .line 1201
    goto/16 :goto_56

    .line 1182
    :cond_10e
    :try_start_10e
    aget-byte v12, p1, v7

    aget-byte v13, v4, v8

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v7

    .line 1183
    add-int/lit8 v8, v8, 0x1

    array-length v12, v4
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_119} :catch_147
    .catch Ljava/lang/NullPointerException; {:try_start_10e .. :try_end_119} :catch_14e

    if-ge v8, v12, :cond_11e

    .line 1180
    :goto_11b
    add-int/lit8 v7, v7, 0x1

    goto :goto_c0

    .line 1183
    :cond_11e
    const/4 v8, 0x0

    goto :goto_11b

    .line 1205
    .end local v1    # "Key":Ljava/lang/String;
    .restart local v2    # "Key":Ljava/lang/String;
    :cond_120
    :try_start_120
    const-string v12, "LGTelephonyManagerImpl"

    const-string v13, "[DMRequest] Auth Success."

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v12, "LGTelephonyManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[DMRequest] req.length = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->DMRequest([B)[B
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_143} :catch_156
    .catch Ljava/lang/NullPointerException; {:try_start_120 .. :try_end_143} :catch_153

    move-result-object v12

    move-object v1, v2

    .end local v2    # "Key":Ljava/lang/String;
    .restart local v1    # "Key":Ljava/lang/String;
    goto/16 :goto_56

    .line 1211
    .end local v11    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_147
    move-exception v6

    .line 1212
    .local v6, "ex":Landroid/os/RemoteException;
    :goto_148
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1218
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_14b
    :goto_14b
    const/4 v12, 0x0

    goto/16 :goto_56

    .line 1213
    :catch_14e
    move-exception v6

    .line 1214
    .local v6, "ex":Ljava/lang/NullPointerException;
    :goto_14f
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_14b

    .line 1213
    .end local v1    # "Key":Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/NullPointerException;
    .restart local v2    # "Key":Ljava/lang/String;
    .restart local v11    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_153
    move-exception v6

    move-object v1, v2

    .end local v2    # "Key":Ljava/lang/String;
    .restart local v1    # "Key":Ljava/lang/String;
    goto :goto_14f

    .line 1211
    .end local v1    # "Key":Ljava/lang/String;
    .restart local v2    # "Key":Ljava/lang/String;
    :catch_156
    move-exception v6

    move-object v1, v2

    .end local v2    # "Key":Ljava/lang/String;
    .restart local v1    # "Key":Ljava/lang/String;
    goto :goto_148
.end method

.method public getDeviceIdForVZW(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 287
    :try_start_1
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->getDeviceIdForVZW(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 292
    :goto_9
    return-object v0

    :catch_a
    move-exception v1

    goto :goto_9

    .line 289
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public getLteOnCdmaPhoneType()I
    .registers 3

    .prologue
    .line 301
    const-string v1, "KDDI"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 302
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 303
    .local v0, "mode":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1a

    .line 304
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1a

    .line 305
    const/16 v1, 0xb

    if-eq v0, v1, :cond_1a

    .line 306
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1c

    .line 307
    :cond_1a
    const/4 v1, 0x1

    .line 311
    .end local v0    # "mode":I
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x2

    goto :goto_1b
.end method

.method public getMobileDebugScreen()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 275
    :try_start_1
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->getMobileDebugScreen()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 279
    :goto_9
    return-object v0

    :catch_a
    move-exception v1

    goto :goto_9

    .line 277
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 254
    :try_start_1
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/internal/telephony/ITelephonyEx;->getMobileQualityInformation()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    .line 258
    :goto_b
    return-object v0

    .line 256
    :catch_c
    move-exception v0

    move-object v0, v1

    goto :goto_b

    .line 258
    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_b
.end method

.method public getMobileQualityInformation2()Ljava/util/HashMap;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1226
    :try_start_1
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/internal/telephony/ITelephonyEx;->getMobileQualityInformation2()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    .line 1230
    :goto_b
    return-object v0

    .line 1228
    :catch_c
    move-exception v0

    move-object v0, v1

    goto :goto_b

    .line 1230
    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_b
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .registers 4
    .param p1, "currentPhoneType"    # I

    .prologue
    .line 352
    const-string v0, "SPR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 353
    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 354
    const-string v0, "us"

    .line 362
    :goto_d
    return-object v0

    .line 355
    :cond_e
    const/16 v0, 0xd

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v0, v1, :cond_35

    .line 356
    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 357
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_35

    .line 359
    const-string v0, "us"

    goto :goto_d

    .line 362
    :cond_35
    const-string v0, ""

    goto :goto_d
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .registers 4
    .param p1, "currentPhoneType"    # I

    .prologue
    .line 334
    const-string v0, "SPR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 335
    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    const-string v0, ""

    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 336
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_1f
    return-object v0

    .line 337
    :cond_20
    const/16 v0, 0xd

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v0, v1, :cond_4b

    .line 338
    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 339
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 341
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 344
    :cond_4b
    const-string v0, ""

    goto :goto_1f
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .registers 4
    .param p1, "currentPhoneType"    # I

    .prologue
    .line 317
    const-string v0, "SPR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 318
    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    .line 319
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_11
    return-object v0

    .line 320
    :cond_12
    const/16 v0, 0xd

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v0, v1, :cond_3d

    .line 321
    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 322
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 324
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 327
    :cond_3d
    const-string v0, ""

    goto :goto_11
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .registers 4
    .param p1, "simState"    # I

    .prologue
    .line 416
    const-string v0, "SPR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 417
    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 418
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    .line 419
    if-nez p1, :cond_1e

    .line 420
    :cond_1b
    const-string v0, "us"

    .line 423
    :goto_1d
    return-object v0

    :cond_1e
    const-string v0, ""

    goto :goto_1d
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .registers 6
    .param p1, "simState"    # I

    .prologue
    .line 369
    const-string v2, "SPR"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 371
    const-string v2, "ril.card_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 372
    const-string v2, "ro.cdma.home.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    :goto_1c
    return-object v2

    .line 375
    :cond_1d
    const/4 v1, 0x0

    .line 377
    .local v1, "simNotSupported":Z
    :try_start_1e
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 378
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$bool;->config_uicc_simnotsupported:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_2f} :catch_39

    move-result v1

    .line 382
    .end local v0    # "context":Landroid/content/Context;
    :goto_30
    if-eqz v1, :cond_42

    .line 383
    const-string v2, "ro.cdma.home.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    .line 380
    :catch_39
    move-exception v2

    const-string v2, "LGTelephonyManagerImpl"

    const-string v3, "Failed to get \'config_uicc_simnotsupported\'!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 386
    .end local v1    # "simNotSupported":Z
    :cond_42
    const-string v2, ""

    goto :goto_1c
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .registers 6
    .param p1, "simState"    # I

    .prologue
    .line 393
    const-string v2, "SPR"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 394
    const-string v2, "ril.card_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 395
    const-string v2, "ro.cdma.home.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    :goto_1c
    return-object v2

    .line 398
    :cond_1d
    const/4 v1, 0x0

    .line 400
    .local v1, "simNotSupported":Z
    :try_start_1e
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 401
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$bool;->config_uicc_simnotsupported:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_2f} :catch_39

    move-result v1

    .line 405
    .end local v0    # "context":Landroid/content/Context;
    :goto_30
    if-eqz v1, :cond_42

    .line 406
    const-string v2, "ro.cdma.home.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    .line 403
    :catch_39
    move-exception v2

    const-string v2, "LGTelephonyManagerImpl"

    const-string v3, "Failed to get \'config_uicc_simnotsupported\'!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 409
    .end local v1    # "simNotSupported":Z
    :cond_42
    const-string v2, ""

    goto :goto_1c
.end method

.method public moca_alarm_event([B)[B
    .registers 9
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 755
    :try_start_1
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 756
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_f

    .line 757
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "telephony is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_e
    return-object v3

    .line 761
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_f
    if-eqz p1, :cond_2b

    .line 763
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "moca_alarm_event:: mask.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEvent([B)[B

    move-result-object v3

    goto :goto_e

    .line 769
    :cond_2b
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "moca_alarm_event:: reset"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 771
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 773
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEvent([B)[B
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3c} :catch_3e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_3c} :catch_43

    move-result-object v3

    goto :goto_e

    .line 775
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :catch_3e
    move-exception v0

    .line 776
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 777
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_43
    move-exception v0

    .line 778
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_e
.end method

.method public moca_alarm_event_reg(I)Z
    .registers 8
    .param p1, "event"    # I

    .prologue
    const/4 v2, 0x0

    .line 730
    const-string v3, "LGTelephonyManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "moca_alarm_event_reg event = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :try_start_15
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 735
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_23

    .line 737
    const-string v3, "LGTelephonyManagerImpl"

    const-string v4, "telephony is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_22
    return v2

    .line 741
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_23
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEventReg(I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_26} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_26} :catch_2d

    move-result v2

    goto :goto_22

    .line 743
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_28
    move-exception v0

    .line 744
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_22

    .line 745
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_2d
    move-exception v0

    .line 746
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_22
.end method

.method public moca_check_mem()[I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1086
    const-string v3, "LGTelephonyManagerImpl"

    const-string v4, "moca_check_mem"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :try_start_8
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 1090
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_16

    .line 1091
    const-string v3, "LGTelephonyManagerImpl"

    const-string v4, "telephony is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_15
    return-object v2

    .line 1094
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_16
    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaCheckMem()[I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_19} :catch_20

    move-result-object v2

    goto :goto_15

    .line 1095
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_1b
    move-exception v0

    .line 1096
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15

    .line 1097
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 1098
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_15
.end method

.method public moca_get_RFParameter(I)[B
    .registers 14
    .param p1, "kindOfRFParameter"    # I

    .prologue
    const/4 v8, 0x0

    .line 886
    const/4 v6, 0x0

    .line 887
    .local v6, "mocaRFParamTemp":[B
    const/4 v5, 0x0

    .line 888
    .local v5, "mocaRFParamResult":[B
    const/4 v4, 0x0

    .line 889
    .local v4, "mocaRFParamResp":Lcom/lge/internal/telephony/MOCARFParameterResponse;
    const/4 v3, 0x0

    .line 890
    .local v3, "getRFParamTotBufNum":I
    const/4 v1, 0x0

    .line 891
    .local v1, "getRFParamCurBufNum":I
    const/4 v2, 0x0

    .line 892
    .local v2, "getRFParamCurDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "moca_get_RFParameter(), kindOfRFParameter = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :try_start_1b
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 895
    .local v7, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_29

    .line 896
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "telephony is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_28
    return-object v8

    .line 899
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_29
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetRFParameter(II)Lcom/lge/internal/telephony/MOCARFParameterResponse;

    move-result-object v4

    .line 900
    if-nez v4, :cond_60

    .line 901
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCARFParameterResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mocaRFParamResp = telephony.mocaGetRFParameter("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_5a} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_5a} :catch_b0

    goto :goto_28

    .line 959
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_5b
    move-exception v0

    .line 960
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_28

    .line 905
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_60
    :try_start_60
    iget v3, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->send_buf_num:I

    .line 906
    if-lez v3, :cond_b6

    const/16 v9, 0x1000

    if-ge v3, v9, :cond_b6

    .line 907
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getRFParamTotBufNum="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    mul-int/lit16 v9, v3, 0x7f8

    new-array v6, v9, [B

    .line 909
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "local buffer size = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_95
    :goto_95
    if-lt v1, v3, :cond_d4

    .line 936
    const v9, 0xffff

    invoke-interface {v7, p1, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetRFParameter(II)Lcom/lge/internal/telephony/MOCARFParameterResponse;

    move-result-object v4

    .line 937
    if-nez v4, :cond_166

    .line 938
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "mocaGetRFParameter(kindOfRFParameter, 0xffff) is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCARFParameterResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_ae} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_60 .. :try_end_ae} :catch_b0

    goto/16 :goto_28

    .line 961
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_b0
    move-exception v0

    .line 962
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_28

    .line 912
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_b6
    :try_start_b6
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getRFParamTotBufNum="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is Invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    if-eqz v3, :cond_95

    .line 914
    const/4 v3, 0x0

    .line 917
    goto :goto_95

    .line 918
    :cond_d4
    add-int/lit8 v1, v1, 0x1

    .line 919
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetRFParameter(II)Lcom/lge/internal/telephony/MOCARFParameterResponse;

    move-result-object v4

    .line 920
    if-nez v4, :cond_109

    .line 921
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : MOCARFParameterResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mocaRFParamResp = (MOCARFParameterResponse)telephony.mocaGetRFParameter("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 925
    :cond_109
    iget v9, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    add-int/2addr v9, v2

    array-length v10, v6

    if-le v9, v10, :cond_12d

    .line 926
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[getRFParam] mocaRFParamTemp.length = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 930
    :cond_12d
    iget-object v9, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    invoke-static {v9, v10, v6, v2, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 931
    iget v9, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    add-int/2addr v2, v9

    .line 932
    if-ne v1, v3, :cond_95

    .line 933
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[getRFParam] CurBufNum="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Resp.data_len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_95

    .line 942
    :cond_166
    if-nez v2, :cond_19c

    .line 943
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "moca_get_RFParameter()-- getRFParamTotBufNum = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "moca_get_RFParameter()-- kindOfRFParameter = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "getRFParamCurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 947
    :cond_19c
    array-length v9, v6

    if-ge v2, v9, :cond_1d2

    .line 948
    new-array v5, v2, [B

    .line 949
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v5, v10, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 950
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[moca_get_RFParameter] kindOfRFParameter = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[moca_get_RFParameter] mocaRFParamResult.length="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 952
    goto/16 :goto_28

    .line 955
    :cond_1d2
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[moca_get_RFParameter] kindOfRFParameter = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[moca_get_RFParameter] mocaRFParamTemp.length="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fb
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_1fb} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_b6 .. :try_end_1fb} :catch_b0

    move-object v8, v6

    .line 957
    goto/16 :goto_28
.end method

.method public moca_get_data()[B
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 786
    const/4 v6, 0x0

    .line 787
    .local v6, "mocaLogData":[B
    const/4 v5, 0x0

    .line 788
    .local v5, "mocaGetDataResult":[B
    const/4 v4, 0x0

    .line 789
    .local v4, "mocaGetDataResp":Lcom/lge/internal/telephony/MOCADataResponse;
    const/4 v3, 0x0

    .line 790
    .local v3, "getDataTotBufNum":I
    const/4 v1, 0x0

    .line 791
    .local v1, "getDataCurBufNum":I
    const/4 v2, 0x0

    .line 793
    .local v2, "getDataCurDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "moca_get_data()"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :try_start_e
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 798
    .local v7, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_1c

    .line 800
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "telephony is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_1b
    return-object v8

    .line 804
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_1c
    invoke-interface {v7, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetData(I)Lcom/lge/internal/telephony/MOCADataResponse;

    move-result-object v4

    .line 806
    if-nez v4, :cond_36

    .line 808
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "mocaGetDataResp = telephony.mocaGetData(getDataCurBufNum)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : mocaGetDataResp is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_30} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_30} :catch_7e

    goto :goto_1b

    .line 875
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_31
    move-exception v0

    .line 876
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b

    .line 813
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_36
    :try_start_36
    iget v3, v4, Lcom/lge/internal/telephony/MOCADataResponse;->send_buf_num:I

    .line 814
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getDataTotBufNum = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    if-lez v3, :cond_83

    const/16 v9, 0x1000

    if-ge v3, v9, :cond_83

    .line 817
    mul-int/lit16 v9, v3, 0x7f8

    new-array v6, v9, [B

    .line 818
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "local buffer size = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_6b
    :goto_6b
    if-lt v1, v3, :cond_8e

    .line 849
    const v9, 0xffff

    invoke-interface {v7, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetData(I)Lcom/lge/internal/telephony/MOCADataResponse;

    move-result-object v4

    .line 852
    if-nez v4, :cond_116

    .line 853
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : mocaGetDataResp is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_7d} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_7d} :catch_7e

    goto :goto_1b

    .line 877
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_7e
    move-exception v0

    .line 878
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1b

    .line 821
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_83
    :try_start_83
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "getDataTotBufNum is Invalid"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    if-eqz v3, :cond_6b

    .line 823
    const/4 v3, 0x0

    .line 828
    goto :goto_6b

    .line 829
    :cond_8e
    add-int/lit8 v1, v1, 0x1

    .line 830
    invoke-interface {v7, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetData(I)Lcom/lge/internal/telephony/MOCADataResponse;

    move-result-object v4

    .line 831
    if-nez v4, :cond_b9

    .line 832
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mocaGetDataResp = (MOCADataResponse)telephony.mocaGetData("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : mocaGetDataResp is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 836
    :cond_b9
    iget v9, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    add-int/2addr v9, v2

    array-length v10, v6

    if-le v9, v10, :cond_dd

    .line 837
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[getRFParam] mocaLogData.length = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 841
    :cond_dd
    iget-object v9, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    invoke-static {v9, v10, v6, v2, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 842
    iget v9, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    add-int/2addr v2, v9

    .line 843
    if-ne v1, v3, :cond_6b

    .line 844
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[getData] CurBufNum="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Resp.data_len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 856
    :cond_116
    if-nez v2, :cond_142

    .line 857
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "moca_get_data()-- getDataCurDataSize="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "moca_get_data()-- getDataTotBufNum="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 861
    :cond_142
    array-length v9, v6

    if-ge v2, v9, :cond_164

    .line 862
    new-array v5, v2, [B

    .line 863
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v5, v10, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 864
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "moca_get_data()-- mocaGetDataResult.length="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 865
    goto/16 :goto_1b

    .line 868
    :cond_164
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "moca_get_data()-- mocaLogData.length="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_179
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_179} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_83 .. :try_end_179} :catch_7e

    move-object v8, v6

    .line 869
    goto/16 :goto_1b
.end method

.method public moca_get_misc(I)[B
    .registers 14
    .param p1, "kindOfData"    # I

    .prologue
    const/4 v8, 0x0

    .line 970
    const/4 v6, 0x0

    .line 971
    .local v6, "mocaMiscTemp":[B
    const/4 v5, 0x0

    .line 972
    .local v5, "mocaMiscResult":[B
    const/4 v4, 0x0

    .line 973
    .local v4, "mocaMiscResp":Lcom/lge/internal/telephony/MOCAMiscResponse;
    const/4 v3, 0x0

    .line 974
    .local v3, "getMiscTotBufNum":I
    const/4 v1, 0x0

    .line 975
    .local v1, "getMiscCurBufNum":I
    const/4 v2, 0x0

    .line 976
    .local v2, "getMiscCurDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "moca_get_misc()++, kindOfData = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :try_start_1b
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 979
    .local v7, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_29

    .line 980
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "telephony is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_28
    return-object v8

    .line 983
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_29
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetMisc(II)Lcom/lge/internal/telephony/MOCAMiscResponse;

    move-result-object v4

    .line 984
    if-nez v4, :cond_67

    .line 985
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "mocaMiscResp = telephony.mocaGetMisc(kindOfData, getMiscCurBufNum);"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "kindOfData = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", getMiscCurBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCAMiscResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_61} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_61} :catch_b0

    goto :goto_28

    .line 1048
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_62
    move-exception v0

    .line 1049
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_28

    .line 990
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_67
    :try_start_67
    iget v3, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->send_buf_num:I

    .line 991
    if-lez v3, :cond_b6

    const/16 v9, 0x1000

    if-ge v3, v9, :cond_b6

    .line 992
    mul-int/lit16 v9, v3, 0x7f8

    new-array v6, v9, [B

    .line 993
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "local buffer size = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getMiscTotBufNum = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_9c
    :goto_9c
    if-lt v1, v3, :cond_d4

    .line 1024
    const v9, 0xffff

    invoke-interface {v7, p1, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetMisc(II)Lcom/lge/internal/telephony/MOCAMiscResponse;

    move-result-object v4

    .line 1026
    if-nez v4, :cond_166

    .line 1027
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCAMiscResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_ae} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_67 .. :try_end_ae} :catch_b0

    goto/16 :goto_28

    .line 1050
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_b0
    move-exception v0

    .line 1051
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_28

    .line 997
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_b6
    :try_start_b6
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getMiscTotBufNum = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is Invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    if-eqz v3, :cond_9c

    .line 999
    const/4 v3, 0x0

    .line 1004
    goto :goto_9c

    .line 1005
    :cond_d4
    add-int/lit8 v1, v1, 0x1

    .line 1006
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetMisc(II)Lcom/lge/internal/telephony/MOCAMiscResponse;

    move-result-object v4

    .line 1007
    if-nez v4, :cond_109

    .line 1008
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mocaMiscResp = (MOCAMiscResponse)telephony.mocaGetMisc("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : MOCAMiscResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1012
    :cond_109
    iget v9, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    add-int/2addr v9, v2

    array-length v10, v6

    if-le v9, v10, :cond_12d

    .line 1013
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[getRFParam] mocaMiscTemp.length = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1017
    :cond_12d
    iget-object v9, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    invoke-static {v9, v10, v6, v2, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1018
    iget v9, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    add-int/2addr v2, v9

    .line 1019
    if-ne v1, v3, :cond_9c

    .line 1020
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[getMisc] CurBufNum="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Resp.data_len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9c

    .line 1030
    :cond_166
    if-nez v2, :cond_1a6

    .line 1031
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getMiscCurDataSize = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[moca_get_misc] kindOfData = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[moca_get_misc] getMiscTotBufNum = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1037
    :cond_1a6
    array-length v9, v6

    if-ge v2, v9, :cond_1d2

    .line 1038
    new-array v5, v2, [B

    .line 1039
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v5, v10, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1040
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[moca_get_misc] kindOfData = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mocaMiscResult.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 1041
    goto/16 :goto_28

    .line 1044
    :cond_1d2
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[moca_get_misc] kindOfData = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", logData.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_1f1} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_b6 .. :try_end_1f1} :catch_b0

    move-object v8, v6

    .line 1045
    goto/16 :goto_28
.end method

.method public moca_set_event([B)[B
    .registers 9
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 701
    :try_start_1
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 702
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_f

    .line 703
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "telephony is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_e
    return-object v3

    .line 707
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_f
    if-eqz p1, :cond_2b

    .line 709
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "moca_set_event:: mask.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetEvent([B)[B

    move-result-object v3

    goto :goto_e

    .line 715
    :cond_2b
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 716
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 718
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetEvent([B)[B
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_35} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_35} :catch_3c

    move-result-object v3

    goto :goto_e

    .line 720
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :catch_37
    move-exception v0

    .line 721
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 722
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3c
    move-exception v0

    .line 723
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_e
.end method

.method public moca_set_log([B[B)[B
    .registers 10
    .param p1, "startcode"    # [B
    .param p2, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 672
    :try_start_1
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 674
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_f

    .line 675
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "telephony is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_e
    return-object v3

    .line 679
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_f
    if-eqz p2, :cond_2b

    .line 681
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "moca_set_log:: mask.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetLog([B[B)[B

    move-result-object v3

    goto :goto_e

    .line 686
    :cond_2b
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 687
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 688
    invoke-interface {v1, p1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetLog([B[B)[B
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_35} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_35} :catch_3c

    move-result-object v3

    goto :goto_e

    .line 690
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :catch_37
    move-exception v0

    .line 691
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 692
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3c
    move-exception v0

    .line 693
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_e
.end method

.method public moca_set_mem(I)Z
    .registers 9
    .param p1, "percent"    # I

    .prologue
    const/4 v3, 0x0

    .line 1060
    :try_start_1
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 1061
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_8

    .line 1081
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_7
    return v3

    .line 1065
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_8
    const/4 v4, -0x1

    if-ne p1, v4, :cond_12

    .line 1066
    const/4 v2, 0x0

    .line 1067
    .local v2, "unset":I
    move v2, p1

    .line 1069
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetMem(I)Z

    move-result v3

    goto :goto_7

    .line 1072
    .end local v2    # "unset":I
    :cond_12
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "moca_set_mem:: percent="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetMem(I)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_29} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_29} :catch_30

    move-result v3

    goto :goto_7

    .line 1076
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_2b
    move-exception v0

    .line 1077
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 1078
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_30
    move-exception v0

    .line 1079
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method

.method public oem_ssa_alarm_event([B)[B
    .registers 9
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 519
    if-nez p1, :cond_16

    .line 520
    const/4 v4, 0x1

    :try_start_4
    new-array v2, v4, [B

    .line 521
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 522
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 523
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_11

    .line 541
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_10
    :goto_10
    return-object v3

    .line 526
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_11
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaAlarmEvent([B)[B

    move-result-object v3

    goto :goto_10

    .line 529
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_16
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "oem_ssa_alarm_event:: mask.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 531
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_10

    .line 534
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaAlarmEvent([B)[B
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_34} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_34} :catch_3b

    move-result-object v3

    goto :goto_10

    .line 536
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_36
    move-exception v0

    .line 537
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10

    .line 538
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3b
    move-exception v0

    .line 539
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_10
.end method

.method public oem_ssa_check_mem()[I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 650
    const-string v3, "LGTelephonyManagerImpl"

    const-string v4, "oem_ssa_check_mem"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :try_start_8
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 654
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_f

    .line 663
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_e
    return-object v2

    .line 657
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_f
    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaCheckMem()[I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_12} :catch_19

    move-result-object v2

    goto :goto_e

    .line 658
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_14
    move-exception v0

    .line 659
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 660
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 661
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_e
.end method

.method public oem_ssa_get_data()[B
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 547
    const/4 v4, 0x0

    .line 548
    .local v4, "logDataTemp":[B
    const/4 v3, 0x0

    .line 549
    .local v3, "logDataResult":[B
    const/4 v5, 0x0

    .line 550
    .local v5, "oemSsaDataResp":Lcom/lge/internal/telephony/OEMSSADataResponse;
    const/4 v7, 0x0

    .line 551
    .local v7, "totBufNum":I
    const/4 v1, 0x0

    .line 552
    .local v1, "curBufNum":I
    const/4 v0, 0x0

    .line 553
    .local v0, "cumuDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "oemSsaGetData()++"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :try_start_e
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 556
    .local v6, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v6, :cond_15

    .line 616
    .end local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_14
    return-object v8

    .line 559
    .restart local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_15
    invoke-interface {v6, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaGetData(I)Lcom/lge/internal/telephony/OEMSSADataResponse;

    move-result-object v5

    .line 560
    if-nez v5, :cond_28

    .line 561
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : OEMSSADataResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_22} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_22} :catch_66

    goto :goto_14

    .line 611
    .end local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_23
    move-exception v2

    .line 612
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 564
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_28
    :try_start_28
    iget v7, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->send_buf_num:I

    .line 565
    if-lez v7, :cond_6b

    const/16 v9, 0x1000

    if-ge v7, v9, :cond_6b

    .line 566
    mul-int/lit16 v9, v7, 0x7f8

    new-array v4, v9, [B

    .line 567
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "totBufNum="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", local buffer size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_53
    :goto_53
    if-lt v1, v7, :cond_89

    .line 592
    const v9, 0xffff

    invoke-interface {v6, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaGetData(I)Lcom/lge/internal/telephony/OEMSSADataResponse;

    move-result-object v5

    .line 593
    if-nez v5, :cond_b5

    .line 594
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : OEMSSADataResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_65} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_65} :catch_66

    goto :goto_14

    .line 613
    .end local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_66
    move-exception v2

    .line 614
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_14

    .line 570
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    .restart local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_6b
    :try_start_6b
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "totBufNum="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is Invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    if-eqz v7, :cond_53

    .line 572
    const/4 v7, 0x0

    .line 575
    goto :goto_53

    .line 576
    :cond_89
    add-int/lit8 v1, v1, 0x1

    .line 577
    invoke-interface {v6, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaGetData(I)Lcom/lge/internal/telephony/OEMSSADataResponse;

    move-result-object v5

    .line 578
    if-nez v5, :cond_9a

    .line 579
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : OEMSSADataResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 582
    :cond_9a
    iget v9, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data_len:I

    add-int/2addr v9, v0

    array-length v10, v4

    if-le v9, v10, :cond_a9

    .line 583
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 586
    :cond_a9
    iget-object v9, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data_len:I

    invoke-static {v9, v10, v4, v0, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 587
    iget v9, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data_len:I

    add-int/2addr v0, v9

    goto :goto_53

    .line 597
    :cond_b5
    if-nez v0, :cond_cd

    .line 598
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "oemSsaGetData()-- cumuDataSize="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 601
    :cond_cd
    array-length v9, v4

    if-ge v0, v9, :cond_ef

    .line 602
    new-array v3, v0, [B

    .line 603
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v4, v9, v3, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 604
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "oemSsaGetData()-- logDataResult.length="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v3

    .line 605
    goto/16 :goto_14

    .line 608
    :cond_ef
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "oemSsaGetData()-- logData.length="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_104} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_104} :catch_66

    move-object v8, v4

    .line 609
    goto/16 :goto_14
.end method

.method public oem_ssa_hdv_alarm_event([B)[B
    .registers 9
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 489
    if-nez p1, :cond_16

    .line 490
    const/4 v4, 0x1

    :try_start_4
    new-array v2, v4, [B

    .line 491
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 492
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 493
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_11

    .line 511
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_10
    :goto_10
    return-object v3

    .line 496
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_11
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaHdvAlarmEvent([B)[B

    move-result-object v3

    goto :goto_10

    .line 499
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_16
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "oem_ssa_hdv_alarm_event:: mask.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 501
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_10

    .line 504
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaHdvAlarmEvent([B)[B
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_34} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_34} :catch_3b

    move-result-object v3

    goto :goto_10

    .line 506
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_36
    move-exception v0

    .line 507
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10

    .line 508
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3b
    move-exception v0

    .line 509
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_10
.end method

.method public oem_ssa_set_event([B)[B
    .registers 9
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 460
    if-nez p1, :cond_16

    .line 461
    const/4 v4, 0x1

    :try_start_4
    new-array v2, v4, [B

    .line 462
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 463
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 464
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_11

    .line 482
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_10
    :goto_10
    return-object v3

    .line 467
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_11
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetEvent([B)[B

    move-result-object v3

    goto :goto_10

    .line 470
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_16
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "oem_ssa_set_event:: mask.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 472
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_10

    .line 475
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetEvent([B)[B
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_34} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_34} :catch_3b

    move-result-object v3

    goto :goto_10

    .line 477
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_36
    move-exception v0

    .line 478
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10

    .line 479
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3b
    move-exception v0

    .line 480
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_10
.end method

.method public oem_ssa_set_log([B[B)[B
    .registers 10
    .param p1, "startcode"    # [B
    .param p2, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 432
    if-nez p2, :cond_16

    .line 433
    const/4 v4, 0x1

    :try_start_4
    new-array v2, v4, [B

    .line 434
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 435
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 436
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_11

    .line 454
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_10
    :goto_10
    return-object v3

    .line 439
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_11
    invoke-interface {v1, p1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetLog([B[B)[B

    move-result-object v3

    goto :goto_10

    .line 442
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_16
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "oem_ssa_set_log:: mask.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 444
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_10

    .line 447
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetLog([B[B)[B
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_34} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_34} :catch_3b

    move-result-object v3

    goto :goto_10

    .line 449
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_36
    move-exception v0

    .line 450
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10

    .line 451
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3b
    move-exception v0

    .line 452
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_10
.end method

.method public oem_ssa_set_mem(I)Z
    .registers 9
    .param p1, "percent"    # I

    .prologue
    const/4 v3, 0x0

    .line 622
    const/4 v4, -0x1

    if-ne p1, v4, :cond_12

    .line 623
    const/4 v2, 0x0

    .line 624
    .local v2, "unset":I
    move v2, p1

    .line 625
    :try_start_6
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 626
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_d

    .line 644
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":I
    :cond_c
    :goto_c
    return v3

    .line 629
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":I
    :cond_d
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetMem(I)Z

    move-result v3

    goto :goto_c

    .line 632
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":I
    :cond_12
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "oem_ssa_set_mem:: percent="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 634
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_c

    .line 637
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetMem(I)Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2f} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_2f} :catch_36

    move-result v3

    goto :goto_c

    .line 639
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_31
    move-exception v0

    .line 640
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c

    .line 641
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_36
    move-exception v0

    .line 642
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_c
.end method

.method public setAirplaneMode(Z)I
    .registers 4
    .param p1, "mode"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1236
    :try_start_1
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->setAirplaneMode(Z)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 1240
    :goto_9
    return v0

    :catch_a
    move-exception v1

    goto :goto_9

    .line 1238
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "passcode"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "band"    # I

    .prologue
    const/4 v1, -0x1

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "mask":Ljava/lang/String;
    :try_start_18
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, v0, p3}, Lcom/lge/internal/telephony/ITelephonyEx;->setNetworkBand(Ljava/lang/String;I)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1f} :catch_21

    move-result v1

    .line 269
    :goto_20
    return v1

    :catch_21
    move-exception v2

    goto :goto_20

    .line 267
    :catch_23
    move-exception v2

    goto :goto_20
.end method

.method public startMobileQualityInformation()V
    .registers 3

    .prologue
    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->startMobileQualityInformation()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_d

    .line 238
    :goto_7
    return-void

    .line 233
    :catch_8
    move-exception v0

    .line 234
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 235
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 236
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method

.method public stopMobileQualityInformation()V
    .registers 3

    .prologue
    .line 243
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->stopMobileQualityInformation()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_d

    .line 249
    :goto_7
    return-void

    .line 244
    :catch_8
    move-exception v0

    .line 245
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 246
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 247
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7
.end method

.method public uknight_event_set([B)[B
    .registers 6
    .param p1, "mask"    # [B

    .prologue
    .line 84
    if-nez p1, :cond_12

    .line 85
    const/4 v2, 0x1

    :try_start_3
    new-array v1, v2, [B

    .line 86
    .local v1, "unset":[B
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 87
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightEventSet([B)[B

    move-result-object v2

    .line 97
    .end local v1    # "unset":[B
    :goto_11
    return-object v2

    .line 90
    :cond_12
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightEventSet([B)[B
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_19} :catch_21

    move-result-object v2

    goto :goto_11

    .line 92
    :catch_1b
    move-exception v0

    .line 93
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 97
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    const/4 v2, 0x0

    goto :goto_11

    .line 94
    :catch_21
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1f
.end method

.method public uknight_get_data()[B
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 123
    const/4 v5, 0x0

    .line 124
    .local v5, "logDataTemp":[B
    const/4 v4, 0x0

    .line 125
    .local v4, "logDataResult":[B
    const/4 v3, 0x0

    .line 126
    .local v3, "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    const/4 v6, 0x0

    .line 127
    .local v6, "totBufNum":I
    const/4 v1, 0x0

    .line 128
    .local v1, "curBufNum":I
    const/4 v0, 0x0

    .line 130
    .local v0, "cumuDataSize":I
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "uknightGetData()++"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_e
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v8

    invoke-interface {v8, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightGetData(I)Lcom/lge/internal/telephony/KNDataResponse;

    move-result-object v3

    .line 133
    if-nez v3, :cond_20

    .line 134
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "Internal Start ERROR : KNDataResponse is NULL"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1f
    return-object v7

    .line 138
    :cond_20
    iget v6, v3, Lcom/lge/internal/telephony/KNDataResponse;->send_buf_num:I

    .line 139
    if-lez v6, :cond_53

    const/16 v8, 0x1000

    if-ge v6, v8, :cond_53

    .line 141
    mul-int/lit16 v8, v6, 0x7f8

    new-array v5, v8, [B

    .line 142
    const-string v8, "LGTelephonyManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "totBufNum="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", local buffer size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_4b
    if-lt v1, v6, :cond_6f

    .line 168
    invoke-direct {p0, v0, v5}, Lcom/lge/telephony/LGTelephonyManagerImpl;->uknight_get_data_result(I[B)[B

    move-result-object v4

    :goto_51
    move-object v7, v4

    .line 175
    goto :goto_1f

    .line 144
    :cond_53
    const-string v8, "LGTelephonyManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "totBufNum="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is Invalid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v6, 0x0

    .line 148
    goto :goto_4b

    .line 149
    :cond_6f
    add-int/lit8 v1, v1, 0x1

    .line 150
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v8

    invoke-interface {v8, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightGetData(I)Lcom/lge/internal/telephony/KNDataResponse;

    move-result-object v3

    .line 151
    if-nez v3, :cond_88

    .line 152
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "Internal Loop ERROR  : KNDataResponse is NULL"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_82} :catch_83
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_82} :catch_96

    goto :goto_1f

    .line 169
    :catch_83
    move-exception v2

    .line 170
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_51

    .line 156
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_88
    :try_start_88
    iget v8, v3, Lcom/lge/internal/telephony/KNDataResponse;->data_len:I

    add-int/2addr v8, v0

    array-length v9, v5

    if-le v8, v9, :cond_9b

    .line 157
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_95} :catch_83
    .catch Ljava/lang/NullPointerException; {:try_start_88 .. :try_end_95} :catch_96

    goto :goto_1f

    .line 171
    :catch_96
    move-exception v2

    .line 172
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_51

    .line 162
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :cond_9b
    :try_start_9b
    iget-object v8, v3, Lcom/lge/internal/telephony/KNDataResponse;->data:[B

    const/4 v9, 0x0

    iget v10, v3, Lcom/lge/internal/telephony/KNDataResponse;->data_len:I

    invoke-static {v8, v9, v5, v0, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 163
    iget v8, v3, Lcom/lge/internal/telephony/KNDataResponse;->data_len:I
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a5} :catch_83
    .catch Ljava/lang/NullPointerException; {:try_start_9b .. :try_end_a5} :catch_96

    add-int/2addr v0, v8

    goto :goto_4b
.end method

.method public uknight_log_set([B)[B
    .registers 7
    .param p1, "mask"    # [B

    .prologue
    .line 65
    if-nez p1, :cond_12

    .line 66
    const/4 v2, 0x1

    :try_start_3
    new-array v1, v2, [B

    .line 67
    .local v1, "unset":[B
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 68
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightLogSet([B)[B

    move-result-object v2

    .line 79
    .end local v1    # "unset":[B
    :goto_11
    return-object v2

    .line 71
    :cond_12
    const-string v2, "LGTelephonyManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uknight_log_set:: mask.length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightLogSet([B)[B
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2e} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_2e} :catch_36

    move-result-object v2

    goto :goto_11

    .line 74
    :catch_30
    move-exception v0

    .line 75
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 79
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_34
    const/4 v2, 0x0

    goto :goto_11

    .line 76
    :catch_36
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_34
.end method

.method public uknight_mem_check()[I
    .registers 3

    .prologue
    .line 211
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightMemCheck()[I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_f

    move-result-object v1

    .line 217
    :goto_8
    return-object v1

    .line 212
    :catch_9
    move-exception v0

    .line 213
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 217
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_d
    const/4 v1, 0x0

    goto :goto_8

    .line 214
    :catch_f
    move-exception v0

    .line 215
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public uknight_mem_set(I)Z
    .registers 4
    .param p1, "persent"    # I

    .prologue
    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightMemSet(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_f

    move-result v1

    .line 119
    :goto_8
    return v1

    .line 114
    :catch_9
    move-exception v0

    .line 115
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 119
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_d
    const/4 v1, 0x0

    goto :goto_8

    .line 116
    :catch_f
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public uknight_state_change_set(I)Z
    .registers 4
    .param p1, "event"    # I

    .prologue
    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightStateChangeSet(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_f

    move-result v1

    .line 108
    :goto_8
    return v1

    .line 103
    :catch_9
    move-exception v0

    .line 104
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 108
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_d
    const/4 v1, 0x0

    goto :goto_8

    .line 105
    :catch_f
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method
