.class public Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;
.super Ljava/lang/Object;
.source "TPM_CommandTZ.java"

# interfaces
.implements Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DAP"

.field private static final privateKeyPwd:Ljava/lang/String; = "lge173205"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string/jumbo v0, "tzmlserver"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculatePCRDigest(Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;)Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    .registers 19
    .param p1, "pcrSelection"    # Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    .prologue
    .line 256
    const-string/jumbo v14, "TPM_CommandTZ"

    const-string/jumbo v15, "calculatePCRDigest start"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz p1, :cond_13

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getNumPCRs()I

    move-result v14

    const/16 v15, 0x18

    if-le v14, v15, :cond_15

    .line 263
    :cond_13
    const/4 v14, 0x0

    return-object v14

    .line 262
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getSizeOfSelect()S

    move-result v14

    if-eqz v14, :cond_13

    .line 269
    const-string/jumbo v14, "TPM_CommandTZ"

    const-string/jumbo v15, "create TPM_PCR_COMPOSITE"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getNumPCRs()I

    move-result v7

    .line 273
    .local v7, "numPCRs":I
    new-instance v10, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;

    invoke-direct {v10, v7}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;-><init>(I)V

    .line 275
    .local v10, "pcrComposite":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;
    const-string/jumbo v14, "TPM_CommandTZ"

    const-string/jumbo v15, "setup TPM_PCR_COMPOSITE (start)"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v10}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->getPcrValues()[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    move-result-object v12

    .line 279
    .local v12, "pcrValues":[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    const/4 v8, 0x0

    .line 280
    .local v8, "numSelected":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v9, v8

    .end local v8    # "numSelected":I
    .local v9, "numSelected":I
    :goto_3d
    if-ge v5, v7, :cond_81

    .line 281
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->isPCROn(I)Z

    move-result v14

    if-eqz v14, :cond_5e

    .line 282
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;->TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    move-result-object v11

    .line 283
    .local v11, "pcrRead":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    invoke-virtual {v11}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;->toBytes()[B

    move-result-object v13

    .line 284
    .local v13, "srcBytes":[B
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "numSelected":I
    .restart local v8    # "numSelected":I
    new-instance v14, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    invoke-direct {v14, v13}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;-><init>([B)V

    aput-object v14, v12, v9

    .line 280
    .end local v11    # "pcrRead":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    .end local v13    # "srcBytes":[B
    :goto_5a
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "numSelected":I
    .restart local v9    # "numSelected":I
    goto :goto_3d

    .line 286
    :cond_5e
    const-string/jumbo v14, "TPM_CommandTZ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "num#"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "skip"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .end local v9    # "numSelected":I
    .restart local v8    # "numSelected":I
    goto :goto_5a

    .line 290
    .end local v8    # "numSelected":I
    .restart local v9    # "numSelected":I
    :cond_81
    const-string/jumbo v14, "TPM_CommandTZ"

    const-string/jumbo v15, "setup TPM_PCR_COMPOSITE (end)"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    mul-int/lit8 v14, v9, 0x14

    invoke-virtual {v10, v14}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->setValueSize(I)V

    .line 294
    const-string/jumbo v14, "TPM_CommandTZ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pcrComposite.valueSize="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    mul-int/lit8 v16, v9, 0x14

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string/jumbo v14, "TPM_CommandTZ"

    const-string/jumbo v15, "TPM_PCR_COMPOSITE.setSelect"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->setSelect(Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;)V

    .line 303
    const-string/jumbo v14, "TPM_CommandTZ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pcrComposite..getValueSize() == "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->getValueSize()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v10}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->getValueSize()I

    move-result v14

    if-lez v14, :cond_16f

    .line 306
    invoke-virtual {v10}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->toBytes()[B

    move-result-object v2

    .line 307
    .local v2, "bytesPcrComposite":[B
    if-nez v2, :cond_ee

    .line 308
    const-string/jumbo v14, "TPM_CommandTZ"

    const-string/jumbo v15, "bytesPcrComposite is null"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v14, 0x0

    return-object v14

    .line 314
    :cond_ee
    :try_start_ee
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "calculate SHA-1 hash"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string/jumbo v14, "TPM_Verification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pcrComposite="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string/jumbo v14, "SHA-1"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 319
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 320
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 322
    .local v3, "digest":[B
    const-string/jumbo v14, "TPM_Verification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "PCRDigest="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    array-length v14, v3

    const/16 v15, 0x14

    if-ne v14, v15, :cond_155

    .line 325
    const-string/jumbo v14, "TPM_CommandTZ"

    const-string/jumbo v15, "create TPM_DIGEST from digest"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v1, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    invoke-direct {v1, v3}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;-><init>([B)V

    .line 327
    .local v1, "PCRDigest":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    return-object v1

    .line 330
    .end local v1    # "PCRDigest":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    :cond_155
    const-string/jumbo v14, "TPM_CommandTZ"

    const-string/jumbo v15, "TPM_CommandTZ : Unexpected Error - SHA-1 Digest length is not 20"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ee .. :try_end_15e} :catch_160

    .line 331
    const/4 v14, 0x0

    return-object v14

    .line 334
    .end local v3    # "digest":[B
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_160
    move-exception v4

    .line 335
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "TPM_CommandTZ : Unexpected Error - SHA-1 Not supported"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 337
    const/4 v14, 0x0

    return-object v14

    .line 341
    .end local v2    # "bytesPcrComposite":[B
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_16f
    const-string/jumbo v14, "TPM_CommandTZ"

    const-string/jumbo v15, "calculatePCRDigest end, return"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v14, 0x0

    return-object v14
.end method

.method private static getAlias(Ljava/security/KeyStore;)Ljava/lang/String;
    .registers 7
    .param p0, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 408
    .local v2, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const-string/jumbo v0, ""

    .line 409
    .local v0, "ALIAS":Ljava/lang/String;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 411
    .local v4, "vectaliases":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 412
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 415
    :cond_1c
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 416
    .local v1, "aliases":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    array-length v5, v1

    if-ge v3, v5, :cond_33

    .line 417
    aget-object v5, v1, v3

    invoke-virtual {p0, v5}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 418
    aget-object v0, v1, v3

    .line 423
    :cond_33
    return-object v0

    .line 416
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_26
.end method

.method public static loadKeyStoreFromPFX(Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 9
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 428
    const/16 v6, 0xc00

    new-array v3, v6, [B

    .line 429
    .local v3, "keyData":[B
    invoke-static {v3}, Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;->tzLoadKey([B)I

    move-result v5

    .line 430
    .local v5, "size":I
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 431
    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 432
    .local v4, "kstore":Ljava/security/KeyStore;
    const/4 v0, 0x0

    .line 434
    .local v0, "chPassword":[C
    :try_start_f
    const-string/jumbo v6, "PKCS12"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 435
    .local v4, "kstore":Ljava/security/KeyStore;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 436
    .local v0, "chPassword":[C
    invoke-virtual {v4, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_1e

    .line 437
    return-object v4

    .line 438
    .end local v0    # "chPassword":[C
    .end local v4    # "kstore":Ljava/security/KeyStore;
    :catch_1e
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "MirrorLink_DAP"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v6, 0x0

    return-object v6
.end method

.method public static loadPrivateKeyFromPFX(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 7
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 385
    invoke-static {p0}, Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;->loadKeyStoreFromPFX(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 386
    .local v1, "kstore":Ljava/security/KeyStore;
    if-nez v1, :cond_8

    .line 387
    return-object v3

    .line 391
    :cond_8
    invoke-static {v1}, Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;->getAlias(Ljava/security/KeyStore;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "ALIAS":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    .line 393
    .local v2, "privatekey":Ljava/security/PrivateKey;
    const-string/jumbo v3, "MirrorLink_DAP"

    const-string/jumbo v4, "loadPrivateKey ----------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string/jumbo v3, "MirrorLink_DAP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key format"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string/jumbo v3, "MirrorLink_DAP"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string/jumbo v3, "MirrorLink_DAP"

    const-string/jumbo v4, "-------------------------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string/jumbo v3, "MirrorLink_DAP"

    const-string/jumbo v4, " ..... loadPrivateKey end"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-object v2
.end method

.method static native tzComputePcrDigest([BI[B)I
.end method

.method static native tzLoadKey([B)I
.end method


# virtual methods
.method public TPM_Extend(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    .registers 13
    .param p1, "pcrIdx"    # I
    .param p2, "inDigest"    # Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    .prologue
    const/4 v9, 0x0

    .line 92
    invoke-static {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v7

    if-eqz v7, :cond_9

    if-nez p2, :cond_13

    .line 93
    :cond_9
    const-string/jumbo v7, "MirrorLink_DAP"

    const-string/jumbo v8, "[TPM_CommandTZ:TPM_Extend] Invalid Arguments"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v9

    .line 100
    :cond_13
    :try_start_13
    const-string/jumbo v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 101
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;->TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    move-result-object v6

    .line 102
    .local v6, "pcrVal":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    invoke-virtual {v6}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 103
    invoke-virtual {p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 104
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 107
    .local v1, "digest":[B
    array-length v7, v1

    const/16 v8, 0x14

    if-ne v7, v8, :cond_42

    .line 108
    new-instance v5, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    invoke-direct {v5, v1}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;-><init>([B)V

    .line 114
    .local v5, "newPcrVal":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    invoke-static {}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->getInstance()Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    move-result-object v0

    .line 117
    .local v0, "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    invoke-virtual {v0, p1, v5}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->set(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Z

    .line 120
    return-object v5

    .line 110
    .end local v0    # "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    .end local v5    # "newPcrVal":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    :cond_42
    const-string/jumbo v7, "MirrorLink_DAP"

    const-string/jumbo v8, "[TPM_CommandTZ:TPM_Extend] Unexpected Error - SHA-1 Digest length is not 20"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_4b} :catch_51
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4b} :catch_4c

    .line 111
    return-object v9

    .line 124
    .end local v1    # "digest":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v6    # "pcrVal":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    :catch_4c
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_50
    return-object v9

    .line 121
    :catch_51
    move-exception v3

    .line 122
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v7, "MirrorLink_DAP"

    const-string/jumbo v8, "[TPM_CommandTZ:TPM_Extend] Unexpected Error - SHA-1 Not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_50
.end method

.method public TPM_Quote(Ljava/security/PrivateKey;ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
    .registers 17
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "pcrIdx"    # I
    .param p3, "externalData"    # Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    .prologue
    .line 150
    const/4 v4, 0x0

    .line 166
    .local v4, "pKey":Ljava/security/PrivateKey;
    :try_start_1
    const-string/jumbo v10, "lge173205"

    invoke-static {v10}, Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;->loadPrivateKeyFromPFX(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_c

    move-result-object v4

    .line 175
    .local v4, "pKey":Ljava/security/PrivateKey;
    if-nez v4, :cond_2c

    .line 176
    const/4 v10, 0x0

    return-object v10

    .line 168
    .local v4, "pKey":Ljava/security/PrivateKey;
    :catch_c
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "MirrorLink_DAP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Fail to setup (devicePrivateKey) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 171
    const/4 v10, 0x0

    return-object v10

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    .local v4, "pKey":Ljava/security/PrivateKey;
    :cond_2c
    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    .line 179
    .local v2, "keyEncoded":[B
    array-length v10, v2

    if-nez v10, :cond_35

    .line 180
    const/4 v10, 0x0

    return-object v10

    .line 186
    :cond_35
    invoke-static {p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v10

    if-eqz v10, :cond_3d

    if-nez p3, :cond_48

    .line 187
    :cond_3d
    const-string/jumbo v10, "MirrorLink_DAP"

    const-string/jumbo v11, "[TPM_CommandTZ:TPM_Quote] Invalid Arguments"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v10, 0x0

    return-object v10

    .line 195
    :cond_48
    const/4 v10, 0x3

    new-array v0, v10, [B

    .local v0, "_pcrSelect":[B
    fill-array-data v0, :array_e6

    .line 196
    const/16 v10, 0x14

    new-array v3, v10, [B

    .line 198
    .local v3, "outHash":[B
    const/16 v10, 0xa

    invoke-virtual {p0, v0, v10}, Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;->setPCROn([BI)V

    .line 202
    const/4 v10, 0x3

    invoke-static {v0, v10, v3}, Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;->tzComputePcrDigest([BI[B)I

    .line 203
    invoke-static {v3}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "tempString":Ljava/lang/String;
    const-string/jumbo v10, "MirrorLink_DAP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "output Hash: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v10, 0x30

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 221
    .local v5, "quoteInfo":Ljava/nio/ByteBuffer;
    const/16 v10, 0x8

    new-array v10, v10, [B

    fill-array-data v10, :array_ec

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 224
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual/range {p3 .. p3}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 230
    :try_start_93
    const-string/jumbo v10, "SHA1WithRSA"

    invoke-static {v10}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 232
    .local v8, "sig":Ljava/security/Signature;
    invoke-virtual {v8, v4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 235
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/security/Signature;->update([B)V

    .line 236
    invoke-virtual {v8}, Ljava/security/Signature;->sign()[B

    move-result-object v7

    .line 238
    .local v7, "quotesig":[B
    const-string/jumbo v10, "MirrorLink_DAP"

    const-string/jumbo v11, "TPM_CommandTZ : TPM_Quote ----------------------------"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string/jumbo v10, "MirrorLink_DAP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "signature length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string/jumbo v10, "MirrorLink_DAP"

    const-string/jumbo v11, "----------------------------------------------------"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v6, Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-direct {v6, v10, v7}, Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;-><init>([B[B)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_de} :catch_df

    .line 244
    .local v6, "quoteResult":Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
    return-object v6

    .line 246
    .end local v6    # "quoteResult":Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
    .end local v7    # "quotesig":[B
    .end local v8    # "sig":Ljava/security/Signature;
    :catch_df
    move-exception v1

    .line 247
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 248
    const/4 v10, 0x0

    return-object v10

    .line 195
    nop

    :array_e6
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 221
    :array_ec
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x51t
        0x55t
        0x4ft
        0x54t
    .end array-data
.end method

.method public TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    .registers 6
    .param p1, "pcrIdx"    # I

    .prologue
    .line 47
    invoke-static {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 48
    invoke-static {}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->getInstance()Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    move-result-object v0

    .line 50
    .local v0, "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    :try_start_a
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->get(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    .line 52
    .local v2, "valueReaded":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    return-object v2

    .line 53
    .end local v2    # "valueReaded":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    :catch_f
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 58
    .end local v0    # "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v3, 0x0

    return-object v3
.end method

.method public TPM_WritePCR(ILcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;)Z
    .registers 6
    .param p1, "pcrIdx"    # I
    .param p2, "pcrValue"    # Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    .prologue
    .line 70
    invoke-static {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 71
    invoke-static {}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->getInstance()Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    move-result-object v0

    .line 73
    .local v0, "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    :try_start_a
    invoke-virtual {v0, p1, p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->set(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result v2

    return v2

    .line 74
    :catch_f
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 79
    .end local v0    # "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    return v2
.end method

.method public setPCROn([BI)V
    .registers 7
    .param p1, "pcrSelect"    # [B
    .param p2, "pcrNum"    # I

    .prologue
    .line 347
    div-int/lit8 v1, p2, 0x8

    .line 348
    .local v1, "byteNum":I
    rem-int/lit8 v0, p2, 0x8

    .line 349
    .local v0, "bitNum":I
    const/4 v3, 0x1

    shl-int/2addr v3, v0

    int-to-byte v2, v3

    .line 350
    .local v2, "mask":B
    aget-byte v3, p1, v1

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 345
    return-void
.end method
