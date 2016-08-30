.class public Lcom/lge/systemservice/core/security/CCModeManager;
.super Ljava/lang/Object;
.source "CCModeManager.java"


# static fields
.field public static final FAIL:I = -0x1

.field public static final FAIL_ALREADY_CC_MODE_ENABLED:I = -0x2

.field public static final FAIL_CC_FLAG_IS_NOT_SUPPORTED:I = -0xd

.field public static final FAIL_CC_MODE_DISABLE:I = -0xc

.field public static final FAIL_CC_MODE_ENABLE:I = -0x4

.field public static final FAIL_CC_MODE_IS_NOT_SUPPORTED:I = -0xa

.field public static final FAIL_DEVICE_IS_NOT_CC_MODE:I = -0x3

.field public static final FAIL_DEVICE_IS_UNLOCKED:I = -0xb

.field public static final FAIL_FIPS_MODE_SET:I = -0x9

.field public static final FAIL_FTM_READ:I = -0x7

.field public static final FAIL_FTM_WRITE:I = -0x8

.field public static final FAIL_INTERNAL_DEVICE_IS_NOT_ENCRYPTED:I = -0x5

.field public static final FAIL_SD_DEVICE_IS_NOT_ENCRYPTED:I = -0x6

.field public static final FLAG_CC_AUDIT_LOGGING:I = 0x2

.field public static final FLAG_CC_MODE:I = 0x1

.field public static final FLAG_FORCE_CERT_VALIDATION:I = 0x4

.field public static final FLAG_FORCE_LIMIT_TLS_CIPHER_SUITES:I = 0x8

.field public static final FLAG_FORCE_LIMIT_TLS_ECC_ALG:I = 0x10

.field public static final FLAG_FORCE_USE_RANDOM_DEV:I = 0x20

.field public static final PROC_CC_FLAG_PATH:Ljava/lang/String; = "/proc/sys/crypto/cc_mode_flag"

.field public static final PROC_CC_PATH:Ljava/lang/String; = "/proc/sys/crypto/cc_mode"

.field public static final SUCCESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CCModeManager"

.field private static final isSupportCCFlag:Z

.field private static final isSupportCCMode:Z


# instance fields
.field private mService:Landroid/security/ICCModeService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/sys/crypto/cc_mode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    sput-boolean v0, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCMode:Z

    .line 154
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/sys/crypto/cc_mode_flag"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    sput-boolean v0, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCFlag:Z

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/security/CCModeManager;Landroid/security/ICCModeService;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    return-void
.end method

.method private final getService()Landroid/security/ICCModeService;
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    if-nez v0, :cond_23

    .line 165
    const-string v0, "CCModeService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/ICCModeService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/ICCModeService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    .line 166
    iget-object v0, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    if-eqz v0, :cond_23

    .line 168
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    invoke-interface {v0}, Landroid/security/ICCModeService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/security/CCModeManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/security/CCModeManager$1;-><init>(Lcom/lge/systemservice/core/security/CCModeManager;)V

    .line 171
    const/4 v2, 0x0

    .line 168
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 175
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    return-object v0

    .line 172
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    goto :goto_23
.end method


# virtual methods
.method public codeToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "error"    # I

    .prologue
    .line 412
    const-string v0, ""

    .line 413
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 414
    const-string v0, "Operation succeed."

    .line 440
    :cond_7
    :goto_7
    return-object v0

    .line 415
    :cond_8
    const/4 v1, -0x1

    if-ne p1, v1, :cond_e

    .line 416
    const-string v0, "Operation failed."

    .line 417
    goto :goto_7

    :cond_e
    const/4 v1, -0x2

    if-ne p1, v1, :cond_14

    .line 418
    const-string v0, "CC mode is already enabled."

    .line 419
    goto :goto_7

    :cond_14
    const/16 v1, -0xc

    if-ne p1, v1, :cond_1b

    .line 420
    const-string v0, "Failed to disable CC mode."

    .line 421
    goto :goto_7

    :cond_1b
    const/4 v1, -0x4

    if-ne p1, v1, :cond_21

    .line 422
    const-string v0, "Failed to enable CC mode."

    .line 423
    goto :goto_7

    :cond_21
    const/16 v1, -0xa

    if-ne p1, v1, :cond_28

    .line 424
    const-string v0, "Device does not support CC mode"

    .line 425
    goto :goto_7

    :cond_28
    const/4 v1, -0x3

    if-ne p1, v1, :cond_2e

    .line 426
    const-string v0, "Device is not in the CC mode."

    .line 427
    goto :goto_7

    :cond_2e
    const/16 v1, -0xb

    if-ne p1, v1, :cond_35

    .line 428
    const-string v0, "Device bootloader is unlocked."

    .line 429
    goto :goto_7

    :cond_35
    const/16 v1, -0x9

    if-ne p1, v1, :cond_3c

    .line 430
    const-string v0, "Failed to enable FIPS mode of OpenSSL."

    .line 431
    goto :goto_7

    :cond_3c
    const/4 v1, -0x7

    if-ne p1, v1, :cond_42

    .line 432
    const-string v0, "Failed to read flag from misc,"

    .line 433
    goto :goto_7

    :cond_42
    const/4 v1, -0x8

    if-ne p1, v1, :cond_48

    .line 434
    const-string v0, "Failed to write flag to misc."

    .line 435
    goto :goto_7

    :cond_48
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4e

    .line 436
    const-string v0, "Pre-condition failed. Phone encryption is not enabled"

    .line 437
    goto :goto_7

    :cond_4e
    const/4 v1, -0x6

    if-ne p1, v1, :cond_7

    .line 438
    const-string v0, "Pre-condition failed. SD card encryption is not enabled."

    goto :goto_7
.end method

.method public disableCCMode()I
    .registers 4

    .prologue
    .line 357
    sget-boolean v1, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCMode:Z

    if-nez v1, :cond_7

    .line 358
    const/16 v1, -0xa

    .line 373
    :goto_6
    return v1

    .line 361
    :cond_7
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    if-nez v1, :cond_11

    .line 362
    invoke-direct {p0}, Lcom/lge/systemservice/core/security/CCModeManager;->getService()Landroid/security/ICCModeService;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    .line 365
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    if-eqz v1, :cond_20

    .line 366
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    invoke-interface {v1}, Landroid/security/ICCModeService;->cc_mode_disable()I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_6

    .line 368
    :catch_1c
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    const-string v1, "CCModeManager"

    const-string v2, "Failed to connect CCModeService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public enableCCMode()I
    .registers 4

    .prologue
    .line 327
    sget-boolean v1, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCMode:Z

    if-nez v1, :cond_7

    .line 328
    const/16 v1, -0xa

    .line 343
    :goto_6
    return v1

    .line 331
    :cond_7
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    if-nez v1, :cond_11

    .line 332
    invoke-direct {p0}, Lcom/lge/systemservice/core/security/CCModeManager;->getService()Landroid/security/ICCModeService;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    .line 335
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    if-eqz v1, :cond_20

    .line 336
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    invoke-interface {v1}, Landroid/security/ICCModeService;->cc_mode_enable()I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_6

    .line 338
    :catch_1c
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    const-string v1, "CCModeManager"

    const-string v2, "Failed to connect CCModeService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getCCFlagFromProc()I
    .registers 9

    .prologue
    .line 187
    const/4 v0, -0x1

    .line 188
    .local v0, "ccFlag":I
    const/4 v3, 0x0

    .line 190
    .local v3, "in":Ljava/io/BufferedReader;
    sget-boolean v6, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCMode:Z

    if-nez v6, :cond_9

    .line 191
    const/16 v6, -0xa

    .line 212
    :goto_8
    return v6

    .line 193
    :cond_9
    sget-boolean v6, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCFlag:Z

    if-nez v6, :cond_10

    .line 194
    const/16 v6, -0xd

    goto :goto_8

    .line 199
    :cond_10
    :try_start_10
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/sys/crypto/cc_mode_flag"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_2c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_3b

    .line 201
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_50
    .catchall {:try_start_1c .. :try_end_23} :catchall_4d

    move-result v0

    .line 207
    if-eqz v4, :cond_4b

    :try_start_26
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_47

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "s":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_2a
    :goto_2a
    move v6, v0

    .line 212
    goto :goto_8

    .line 203
    :catch_2c
    move-exception v1

    .line 204
    .local v1, "e":Ljava/io/IOException;
    :goto_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3b

    .line 207
    if-eqz v3, :cond_2a

    :try_start_32
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_2a

    .line 208
    :catch_36
    move-exception v2

    .line 209
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 205
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_3b
    move-exception v6

    .line 207
    :goto_3c
    if-eqz v3, :cond_41

    :try_start_3e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 211
    :cond_41
    :goto_41
    throw v6

    .line 208
    :catch_42
    move-exception v2

    .line 209
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 208
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "s":Ljava/lang/String;
    :catch_47
    move-exception v2

    .line 209
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "ex":Ljava/io/IOException;
    :cond_4b
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2a

    .line 205
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "s":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_4d
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_3c

    .line 203
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_50
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2d
.end method

.method public getCCRestrictionStatus()I
    .registers 4

    .prologue
    .line 251
    sget-boolean v1, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCMode:Z

    if-nez v1, :cond_7

    .line 252
    const/16 v1, -0xa

    .line 269
    :goto_6
    return v1

    .line 254
    :cond_7
    sget-boolean v1, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCFlag:Z

    if-nez v1, :cond_e

    .line 255
    const/16 v1, -0xd

    goto :goto_6

    .line 258
    :cond_e
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    if-nez v1, :cond_18

    .line 259
    invoke-direct {p0}, Lcom/lge/systemservice/core/security/CCModeManager;->getService()Landroid/security/ICCModeService;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    .line 262
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    if-eqz v1, :cond_27

    .line 263
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    invoke-interface {v1}, Landroid/security/ICCModeService;->getCCRestrictionStatus()I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_23

    move-result v1

    goto :goto_6

    .line 265
    :catch_23
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const-string v1, "CCModeManager"

    const-string v2, "Failed to connect CCModeService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public isCCFlagSupported()I
    .registers 2

    .prologue
    .line 398
    sget-boolean v0, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCFlag:Z

    if-nez v0, :cond_7

    .line 399
    const/16 v0, -0xd

    .line 401
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isCCModeSupported()I
    .registers 2

    .prologue
    .line 383
    sget-boolean v0, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCMode:Z

    if-nez v0, :cond_7

    .line 384
    const/16 v0, -0xa

    .line 386
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isFlagEnabled(I)Z
    .registers 5
    .param p1, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 233
    sget-boolean v2, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCMode:Z

    if-nez v2, :cond_6

    .line 241
    :cond_5
    :goto_5
    return v1

    .line 236
    :cond_6
    sget-boolean v2, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCFlag:Z

    if-eqz v2, :cond_5

    .line 240
    invoke-virtual {p0}, Lcom/lge/systemservice/core/security/CCModeManager;->getCCFlagFromProc()I

    move-result v0

    .line 241
    .local v0, "ccFlag":I
    and-int v2, v0, p1

    if-ne v2, p1, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public setCCRestriction(I)I
    .registers 5
    .param p1, "flag"    # I

    .prologue
    .line 290
    sget-boolean v1, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCMode:Z

    if-nez v1, :cond_7

    .line 291
    const/16 v1, -0xa

    .line 309
    :goto_6
    return v1

    .line 293
    :cond_7
    sget-boolean v1, Lcom/lge/systemservice/core/security/CCModeManager;->isSupportCCFlag:Z

    if-nez v1, :cond_e

    .line 294
    const/16 v1, -0xd

    goto :goto_6

    .line 297
    :cond_e
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    if-nez v1, :cond_18

    .line 298
    invoke-direct {p0}, Lcom/lge/systemservice/core/security/CCModeManager;->getService()Landroid/security/ICCModeService;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    .line 301
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    if-eqz v1, :cond_27

    .line 302
    iget-object v1, p0, Lcom/lge/systemservice/core/security/CCModeManager;->mService:Landroid/security/ICCModeService;

    invoke-interface {v1, p1}, Landroid/security/ICCModeService;->setCCRestriction(I)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_23

    move-result v1

    goto :goto_6

    .line 304
    :catch_23
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 307
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const-string v1, "CCModeManager"

    const-string v2, "Failed to connect CCModeService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, -0x1

    goto :goto_6
.end method
