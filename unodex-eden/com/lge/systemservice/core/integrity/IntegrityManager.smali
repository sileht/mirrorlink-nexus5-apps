.class public final Lcom/lge/systemservice/core/integrity/IntegrityManager;
.super Ljava/lang/Object;
.source "IntegrityManager.java"


# static fields
.field public static final BLOCK_ALL:I = 0xf0

.field public static final BLOCK_NOT_MATCHING:I = 0x10

.field public static final BLOCK_NO_BASELINE_HASH:I = 0x20

.field private static final DEBUG:Z

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.integrity"

.field private static final PRELOG_LGIS:Ljava/lang/String; = "[LGIS] "

.field public static final REPORT_INTEGRITY_VERIFICATION_FAILED:Ljava/lang/String; = "com.lge.integrity.FAIL"

.field public static final REP_APPHASH_MATCH:I = 0x1

.field public static final REP_APPHASH_NOT_MATCH:I = -0x1

.field public static final REP_APPHASH_NO_BASELINE_HASH:I = -0x2

.field public static final REP_APPHASH_NO_CURRENT_HASH:I = -0x3

.field public static final RES_BYPASS_PACKAGE:I = -0x2

.field public static final RES_DISABLED:I = 0x0

.field public static final RES_EXCEPTION_ERROR:I = -0x3

.field public static final RES_FAILURE:I = -0x1

.field public static final RES_PERMISSION_DENIED:I = -0x5

.field public static final RES_SERVICE_NOT_WORK:I = -0x4

.field public static final RES_SUCCESS:I = 0x1

.field public static final SERVICE_DISABLED:I = 0x0

.field public static final SERVICE_ENABLED_APP:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "integrity"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/lge/systemservice/core/integrity/IIntegrityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    const-class v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    :goto_13
    sput-boolean v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->DEBUG:Z

    .line 174
    return-void

    .line 32
    :cond_16
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mContext:Landroid/content/Context;

    .line 178
    iput-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mService:Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    .line 181
    const-string v0, "new IntegrityManager"

    invoke-direct {p0, v0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mContext:Landroid/content/Context;

    .line 183
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/integrity/IntegrityManager;Lcom/lge/systemservice/core/integrity/IIntegrityManager;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mService:Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .registers 5
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 186
    sget-boolean v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 187
    sget-object v0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LGIS] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_18
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/systemservice/core/integrity/IntegrityManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "serviceContext":Lcom/lge/systemservice/core/LGContext;
    const-string v1, "integrity"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemservice/core/integrity/IntegrityManager;

    return-object v1
.end method

.method private final getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mService:Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    if-nez v0, :cond_23

    .line 193
    const-string v0, "integrity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/integrity/IIntegrityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mService:Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    .line 194
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mService:Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    if-eqz v0, :cond_23

    .line 196
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mService:Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/integrity/IntegrityManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager$1;-><init>(Lcom/lge/systemservice/core/integrity/IntegrityManager;)V

    .line 199
    const/4 v2, 0x0

    .line 196
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 203
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mService:Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    return-object v0

    .line 200
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/integrity/IntegrityManager;->mService:Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    goto :goto_23
.end method


# virtual methods
.method public clearFingerprintForApplication(Ljava/lang/String;)I
    .registers 8
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x3

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clearFingerprintForApplication : packagename = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 350
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_20

    .line 351
    const-string v3, "clearFingerprintForApplication : service call Fail!!"

    invoke-direct {p0, v3}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 352
    const/4 v3, -0x4

    .line 364
    :goto_1f
    return v3

    .line 356
    :cond_20
    :try_start_20
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->clearFingerprintForApplication(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_2f

    move-result v3

    goto :goto_1f

    .line 357
    :catch_25
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "clearFingerprintForApplication : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2f
    move-exception v1

    .line 362
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "clearFingerprintForApplication : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public generateFingerprintForApplication(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "sourcedir"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x3

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "generateFingerprintForApplication : packagename = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sourcedir"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 289
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 292
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_2a

    .line 293
    const-string v3, "generateFingerprintForApplication : service call Fail!!"

    invoke-direct {p0, v3}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 294
    const/4 v3, -0x4

    .line 306
    :goto_29
    return v3

    .line 298
    :cond_2a
    :try_start_2a
    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->generateFingerprintForApplication(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_39

    move-result v3

    goto :goto_29

    .line 299
    :catch_2f
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "generateFingerprintForApplication : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_29

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_39
    move-exception v1

    .line 304
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "generateFingerprintForApplication : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public getIntegrityVerificationEnabled()I
    .registers 6

    .prologue
    const/4 v3, -0x3

    .line 258
    const-string v4, "getIntegrityVerificationEnabled"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 261
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_13

    .line 262
    const-string v3, "getIntegrityVerificationEnabled : service call Fail!!"

    invoke-direct {p0, v3}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 263
    const/4 v3, -0x4

    .line 275
    :goto_12
    return v3

    .line 267
    :cond_13
    :try_start_13
    invoke-interface {v2}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->getIntegrityVerificationEnabled()I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_22

    move-result v3

    goto :goto_12

    .line 268
    :catch_18
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "getIntegrityVerificationEnabled : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_22
    move-exception v1

    .line 273
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "getIntegrityVerificationEnabled : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public setIntegrityVerificationEnabled(I)Z
    .registers 8
    .param p1, "enable"    # I

    .prologue
    const/4 v3, 0x0

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setIntegrityVerificationEnabled : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 232
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_1f

    .line 233
    const-string v4, "setIntegrityVerificationEnabled : service call Fail!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 246
    :goto_1e
    return v3

    .line 238
    :cond_1f
    :try_start_1f
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->setIntegrityVerificationEnabled(I)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_2e

    move-result v3

    goto :goto_1e

    .line 239
    :catch_24
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "setIntegrityVerificationEnabled : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1e

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2e
    move-exception v1

    .line 244
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "setIntegrityVerificationEnabled : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public verifyIntegrityForApplication(Ljava/lang/String;)I
    .registers 8
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x3

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "verifyIntegrityForApplication : packagename = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->getService()Lcom/lge/systemservice/core/integrity/IIntegrityManager;

    move-result-object v2

    .line 321
    .local v2, "integrityService":Lcom/lge/systemservice/core/integrity/IIntegrityManager;
    if-nez v2, :cond_20

    .line 322
    const-string v3, "verifyIntegrityForApplication : service call Fail!!"

    invoke-direct {p0, v3}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 323
    const/4 v3, -0x4

    .line 335
    :goto_1f
    return v3

    .line 327
    :cond_20
    :try_start_20
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/integrity/IIntegrityManager;->verifyIntegrityForApplication(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_2f

    move-result v3

    goto :goto_1f

    .line 328
    :catch_25
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "verifyIntegrityForApplication : RemoteException!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2f
    move-exception v1

    .line 333
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "verifyIntegrityForApplication : Exception!!"

    invoke-direct {p0, v4}, Lcom/lge/systemservice/core/integrity/IntegrityManager;->debugLog(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method
