.class public Lcom/lge/mirrorlink/dap/tpm/TPM_Command;
.super Ljava/lang/Object;
.source "TPM_Command.java"

# interfaces
.implements Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DAP"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculatePCRDigest(Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;)Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    .registers 19
    .param p1, "pcrSelection"    # Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    .prologue
    .line 186
    const-string/jumbo v14, "TPM_Command"

    const-string/jumbo v15, "calculatePCRDigest start"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz p1, :cond_13

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getNumPCRs()I

    move-result v14

    const/16 v15, 0x18

    if-le v14, v15, :cond_15

    .line 193
    :cond_13
    const/4 v14, 0x0

    return-object v14

    .line 192
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getSizeOfSelect()S

    move-result v14

    if-eqz v14, :cond_13

    .line 199
    const-string/jumbo v14, "TPM_Command"

    const-string/jumbo v15, "create TPM_PCR_COMPOSITE"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getNumPCRs()I

    move-result v7

    .line 203
    .local v7, "numPCRs":I
    new-instance v10, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;

    invoke-direct {v10, v7}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;-><init>(I)V

    .line 205
    .local v10, "pcrComposite":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;
    const-string/jumbo v14, "TPM_Command"

    const-string/jumbo v15, "setup TPM_PCR_COMPOSITE (start)"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v10}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->getPcrValues()[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    move-result-object v12

    .line 209
    .local v12, "pcrValues":[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    const/4 v8, 0x0

    .line 210
    .local v8, "numSelected":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v9, v8

    .end local v8    # "numSelected":I
    .local v9, "numSelected":I
    :goto_3d
    if-ge v5, v7, :cond_69

    .line 211
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->isPCROn(I)Z

    move-result v14

    if-eqz v14, :cond_5e

    .line 212
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/mirrorlink/dap/tpm/TPM_Command;->TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    move-result-object v11

    .line 213
    .local v11, "pcrRead":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    invoke-virtual {v11}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;->toBytes()[B

    move-result-object v13

    .line 214
    .local v13, "srcBytes":[B
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "numSelected":I
    .restart local v8    # "numSelected":I
    new-instance v14, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    invoke-direct {v14, v13}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;-><init>([B)V

    aput-object v14, v12, v9

    .line 210
    .end local v11    # "pcrRead":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    .end local v13    # "srcBytes":[B
    :goto_5a
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "numSelected":I
    .restart local v9    # "numSelected":I
    goto :goto_3d

    .line 216
    :cond_5e
    const-string/jumbo v14, "TPM_Command"

    const-string/jumbo v15, "skip"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .end local v9    # "numSelected":I
    .restart local v8    # "numSelected":I
    goto :goto_5a

    .line 220
    .end local v8    # "numSelected":I
    .restart local v9    # "numSelected":I
    :cond_69
    const-string/jumbo v14, "TPM_Command"

    const-string/jumbo v15, "setup TPM_PCR_COMPOSITE (end)"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    mul-int/lit8 v14, v9, 0x14

    invoke-virtual {v10, v14}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->setValueSize(I)V

    .line 224
    const-string/jumbo v14, "TPM_Command"

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

    .line 228
    const-string/jumbo v14, "TPM_Command"

    const-string/jumbo v15, "TPM_PCR_COMPOSITE.setSelect"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->setSelect(Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;)V

    .line 233
    const-string/jumbo v14, "TPM_Command"

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

    .line 234
    invoke-virtual {v10}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->getValueSize()I

    move-result v14

    if-lez v14, :cond_157

    .line 236
    invoke-virtual {v10}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->toBytes()[B

    move-result-object v2

    .line 237
    .local v2, "bytesPcrComposite":[B
    if-nez v2, :cond_d6

    .line 238
    const-string/jumbo v14, "TPM_Command"

    const-string/jumbo v15, "bytesPcrComposite is null"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v14, 0x0

    return-object v14

    .line 244
    :cond_d6
    :try_start_d6
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "calculate SHA-1 hash"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
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

    .line 248
    const-string/jumbo v14, "SHA-1"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 249
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 250
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 252
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

    .line 254
    array-length v14, v3

    const/16 v15, 0x14

    if-ne v14, v15, :cond_13d

    .line 255
    const-string/jumbo v14, "TPM_Command"

    const-string/jumbo v15, "create TPM_DIGEST from digest"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v1, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    invoke-direct {v1, v3}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;-><init>([B)V

    .line 257
    .local v1, "PCRDigest":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    return-object v1

    .line 260
    .end local v1    # "PCRDigest":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    :cond_13d
    const-string/jumbo v14, "TPM_Command"

    const-string/jumbo v15, "TPM_Command : Unexpected Error - SHA-1 Digest length is not 20"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d6 .. :try_end_146} :catch_148

    .line 261
    const/4 v14, 0x0

    return-object v14

    .line 264
    .end local v3    # "digest":[B
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_148
    move-exception v4

    .line 265
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v14, "MirrorLink_DAP"

    const-string/jumbo v15, "TPM_Command : Unexpected Error - SHA-1 Not supported"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 267
    const/4 v14, 0x0

    return-object v14

    .line 271
    .end local v2    # "bytesPcrComposite":[B
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_157
    const-string/jumbo v14, "TPM_Command"

    const-string/jumbo v15, "calculatePCRDigest end, return"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v14, 0x0

    return-object v14
.end method


# virtual methods
.method public TPM_Extend(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    .registers 13
    .param p1, "pcrIdx"    # I
    .param p2, "inDigest"    # Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    .prologue
    const/4 v9, 0x0

    .line 77
    invoke-static {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v7

    if-eqz v7, :cond_9

    if-nez p2, :cond_13

    .line 78
    :cond_9
    const-string/jumbo v7, "MirrorLink_DAP"

    const-string/jumbo v8, "[TPM_Command:TPM_Extend] Invalid Arguments"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v9

    .line 85
    :cond_13
    :try_start_13
    const-string/jumbo v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 86
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_Command;->TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    move-result-object v6

    .line 87
    .local v6, "pcrVal":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    invoke-virtual {v6}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 88
    invoke-virtual {p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 89
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 92
    .local v1, "digest":[B
    array-length v7, v1

    const/16 v8, 0x14

    if-ne v7, v8, :cond_42

    .line 93
    new-instance v5, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    invoke-direct {v5, v1}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;-><init>([B)V

    .line 99
    .local v5, "newPcrVal":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    invoke-static {}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->getInstance()Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    move-result-object v0

    .line 102
    .local v0, "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    invoke-virtual {v0, p1, v5}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->set(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Z

    .line 105
    return-object v5

    .line 95
    .end local v0    # "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    .end local v5    # "newPcrVal":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    :cond_42
    const-string/jumbo v7, "MirrorLink_DAP"

    const-string/jumbo v8, "[TPM_Command:TPM_Extend] Unexpected Error - SHA-1 Digest length is not 20"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_4b} :catch_51
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4b} :catch_4c

    .line 96
    return-object v9

    .line 109
    .end local v1    # "digest":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v6    # "pcrVal":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    :catch_4c
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_50
    return-object v9

    .line 106
    :catch_51
    move-exception v3

    .line 107
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v7, "MirrorLink_DAP"

    const-string/jumbo v8, "[TPM_Command:TPM_Extend] Unexpected Error - SHA-1 Not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_50
.end method

.method public TPM_Quote(Ljava/security/PrivateKey;ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
    .registers 16
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "pcrIdx"    # I
    .param p3, "externalData"    # Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 126
    if-nez p1, :cond_5

    .line 127
    return-object v11

    .line 129
    :cond_5
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    .line 130
    .local v2, "keyEncoded":[B
    array-length v8, v2

    if-nez v8, :cond_d

    .line 131
    return-object v11

    .line 134
    :cond_d
    invoke-static {p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v8

    if-eqz v8, :cond_15

    if-nez p3, :cond_1f

    .line 135
    :cond_15
    const-string/jumbo v8, "MirrorLink_DAP"

    const-string/jumbo v9, "[TPM_Command:TPM_Quote] Invalid Arguments"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-object v11

    .line 140
    :cond_1f
    new-instance v3, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    const/4 v8, 0x1

    new-array v8, v8, [I

    aput p2, v8, v9

    const/16 v9, 0x18

    invoke-direct {v3, v9, v8}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;-><init>(I[I)V

    .line 141
    .local v3, "pcrSelection":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;
    invoke-direct {p0, v3}, Lcom/lge/mirrorlink/dap/tpm/TPM_Command;->calculatePCRDigest(Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;)Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    move-result-object v1

    .line 143
    .local v1, "hash":Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
    if-nez v1, :cond_3b

    .line 144
    const-string/jumbo v8, "MirrorLink_DAP"

    const-string/jumbo v9, "[TPM_Command:TPM_Quote] Fail to calculate PCR digest"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v11

    .line 156
    :cond_3b
    const/16 v8, 0x30

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 157
    .local v4, "quoteInfo":Ljava/nio/ByteBuffer;
    const/16 v8, 0x8

    new-array v8, v8, [B

    fill-array-data v8, :array_aa

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 158
    invoke-virtual {v1}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 159
    invoke-virtual {p3}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 163
    :try_start_59
    const-string/jumbo v8, "SHA1WithRSA"

    invoke-static {v8}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v7

    .line 164
    .local v7, "sig":Ljava/security/Signature;
    invoke-virtual {v7, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 165
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/Signature;->update([B)V

    .line 166
    invoke-virtual {v7}, Ljava/security/Signature;->sign()[B

    move-result-object v6

    .line 168
    .local v6, "quotesig":[B
    const-string/jumbo v8, "MirrorLink_DAP"

    const-string/jumbo v9, "TPM_Command : TPM_Quote ----------------------------"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string/jumbo v8, "MirrorLink_DAP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "signature length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string/jumbo v8, "MirrorLink_DAP"

    const-string/jumbo v9, "----------------------------------------------------"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v5, Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v5, v8, v6}, Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;-><init>([B[B)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_a4} :catch_a5

    .line 174
    .local v5, "quoteResult":Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
    return-object v5

    .line 176
    .end local v5    # "quoteResult":Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
    .end local v6    # "quotesig":[B
    .end local v7    # "sig":Ljava/security/Signature;
    :catch_a5
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 178
    return-object v11

    .line 157
    :array_aa
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
    .line 32
    invoke-static {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 33
    invoke-static {}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->getInstance()Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    move-result-object v0

    .line 35
    .local v0, "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    :try_start_a
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->get(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    .line 37
    .local v2, "valueReaded":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    return-object v2

    .line 38
    .end local v2    # "valueReaded":Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    :catch_f
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 43
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
    .line 55
    invoke-static {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 56
    invoke-static {}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->getInstance()Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    move-result-object v0

    .line 58
    .local v0, "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    :try_start_a
    invoke-virtual {v0, p1, p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->set(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result v2

    return v2

    .line 59
    :catch_f
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 64
    .end local v0    # "PCRs":Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    return v2
.end method
