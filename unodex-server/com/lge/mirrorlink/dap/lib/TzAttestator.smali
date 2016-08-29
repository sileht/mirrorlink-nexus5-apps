.class public Lcom/lge/mirrorlink/dap/lib/TzAttestator;
.super Ljava/lang/Object;
.source "TzAttestator.java"

# interfaces
.implements Lcom/lge/mirrorlink/dap/lib/AttestatorInterface;


# static fields
.field public static final DAP_PCR_IDX:I = 0xa

.field public static final PCR_VALUE_LENGTH:I = 0x14

.field public static final SHA1_DIGEST_LEN:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MirrorLink_DAP"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    .line 23
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mContext:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    .line 21
    return-void
.end method


# virtual methods
.method public isAttestatorReady()Z
    .registers 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    if-nez v0, :cond_6

    .line 39
    const/4 v0, 0x0

    return v0

    .line 41
    :cond_6
    const-string/jumbo v0, "MirrorLink_DAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAttestatorReady(), mTzMlAppService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method public makeAttestationResponse(Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;Ljava/lang/String;[B)Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    .registers 20
    .param p1, "request"    # Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
    .param p2, "protocolURL"    # Ljava/lang/String;
    .param p3, "applicationPublicKey"    # [B

    .prologue
    .line 47
    if-nez p1, :cond_d

    .line 48
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "makeAttestationResponse : unable to start, no request data"

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v13, 0x0

    return-object v13

    .line 52
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    if-nez v13, :cond_1e

    .line 53
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "mTzMlAppService is null !"

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v13, 0x0

    return-object v13

    .line 57
    :cond_1e
    new-instance v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;

    invoke-direct {v10}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;-><init>()V

    .line 58
    .local v10, "response":Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->majorVersion:I

    iput v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->majorVersion:I

    .line 59
    move-object/from16 v0, p1

    iget v13, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->minorVersion:I

    iput v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->minorVersion:I

    .line 60
    const/4 v13, 0x5

    iput v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 61
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    iput-object v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->componentID:Ljava/lang/String;

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->isValid()I

    move-result v12

    .line 64
    .local v12, "validity":I
    if-eqz v12, :cond_5b

    .line 65
    const-string/jumbo v13, "MirrorLink_DAP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "makeAttestationResponse : unable to start, invalid request data "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput v12, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 67
    return-object v10

    .line 70
    :cond_5b
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "makeAttestationResponse-------------------------------"

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v13, "MirrorLink_DAP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "componentID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/16 v13, 0x14

    new-array v7, v13, [B

    .line 78
    .local v7, "oldPCR":[B
    :try_start_86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    const/16 v14, 0xa

    invoke-virtual {v13, v7, v14}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->tzReadPCR([BI)I

    move-result v13

    if-eqz v13, :cond_a9

    .line 80
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "tzReadPCR fails ! "

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_9b} :catch_9d

    .line 81
    const/4 v13, 0x0

    return-object v13

    .line 83
    :catch_9d
    move-exception v3

    .line 84
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "RemoteException happens ! "

    invoke-static {v13, v14, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    const/4 v13, 0x0

    return-object v13

    .line 88
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_a9
    invoke-static {v7}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "oldPCRString":Ljava/lang/String;
    const-string/jumbo v13, "MirrorLink_DAP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Old PCR value = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "H1":[B
    if-eqz p3, :cond_da

    .line 98
    :try_start_ca
    const-string/jumbo v13, "SHA-1"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 99
    .local v5, "md":Ljava/security/MessageDigest;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 103
    .end local v1    # "H1":[B
    .end local v5    # "md":Ljava/security/MessageDigest;
    :cond_da
    const-string/jumbo v13, "SHA-1"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 104
    .restart local v5    # "md":Ljava/security/MessageDigest;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 106
    if-eqz v1, :cond_f8

    .line 107
    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    :cond_f8
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 111
    .local v2, "digest":[B
    const-string/jumbo v13, "TPM_Verification"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "TPM_Extend inDigest="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v2}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    array-length v13, v2
    :try_end_11b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ca .. :try_end_11b} :catch_1b7

    const/16 v14, 0x14

    if-ne v13, v14, :cond_1aa

    .line 115
    :try_start_11f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    const/16 v14, 0xa

    invoke-virtual {v13, v2, v14}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->tzTPMExtend([BI)I

    move-result v13

    if-eqz v13, :cond_142

    .line 116
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "tzTPMExtend fails ! "

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Landroid/os/RemoteException; {:try_start_11f .. :try_end_134} :catch_136
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11f .. :try_end_134} :catch_1b7

    .line 117
    const/4 v13, 0x0

    return-object v13

    .line 119
    :catch_136
    move-exception v3

    .line 120
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_137
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "RemoteException happens ! "

    invoke-static {v13, v14, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    const/4 v13, 0x0

    return-object v13

    .line 123
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_142
    const/16 v13, 0x14

    new-array v6, v13, [B
    :try_end_146
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_137 .. :try_end_146} :catch_1b7

    .line 125
    .local v6, "newPCR":[B
    :try_start_146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    const/16 v14, 0xa

    invoke-virtual {v13, v6, v14}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->tzReadPCR([BI)I

    move-result v13

    if-eqz v13, :cond_169

    .line 126
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "tzReadPCR fails ! "

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15b
    .catch Landroid/os/RemoteException; {:try_start_146 .. :try_end_15b} :catch_15d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_146 .. :try_end_15b} :catch_1b7

    .line 127
    const/4 v13, 0x0

    return-object v13

    .line 129
    :catch_15d
    move-exception v3

    .line 130
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_15e
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "RemoteException happens ! "

    invoke-static {v13, v14, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    const/4 v13, 0x0

    return-object v13

    .line 133
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_169
    const-string/jumbo v13, "MirrorLink_DAP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "New PCR value = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_187
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15e .. :try_end_187} :catch_1b7

    .line 149
    const/16 v13, 0x100

    new-array v9, v13, [B

    .line 150
    .local v9, "quoteSignature":[B
    const/16 v13, 0x30

    new-array v11, v13, [B

    .line 152
    .local v11, "tzQuoteInfo":[B
    :try_start_18f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->nonce:[B

    const/16 v15, 0xa

    invoke-virtual {v13, v14, v15, v9, v11}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->tzTPMQuote([BI[B[B)I

    move-result v13

    if-eqz v13, :cond_1d4

    .line 153
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "tzTPMQuote fails ! "

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a8
    .catch Landroid/os/RemoteException; {:try_start_18f .. :try_end_1a8} :catch_1c8

    .line 154
    const/4 v13, 0x0

    return-object v13

    .line 135
    .end local v6    # "newPCR":[B
    .end local v9    # "quoteSignature":[B
    .end local v11    # "tzQuoteInfo":[B
    :cond_1aa
    :try_start_1aa
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "calculateDigest : Unexpected Error - SHA-1 Digest length is not 20"

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v13, 0x5

    iput v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I
    :try_end_1b6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1aa .. :try_end_1b6} :catch_1b7

    .line 137
    return-object v10

    .line 140
    .end local v2    # "digest":[B
    .end local v5    # "md":Ljava/security/MessageDigest;
    :catch_1b7
    move-exception v4

    .line 141
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "calculateDigest : Unexpected Error - SHA-1 Not supported"

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 143
    const/4 v13, 0x5

    iput v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 144
    return-object v10

    .line 156
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "digest":[B
    .restart local v5    # "md":Ljava/security/MessageDigest;
    .restart local v6    # "newPCR":[B
    .restart local v9    # "quoteSignature":[B
    .restart local v11    # "tzQuoteInfo":[B
    :catch_1c8
    move-exception v3

    .line 157
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "RemoteException happens ! "

    invoke-static {v13, v14, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    const/4 v13, 0x0

    return-object v13

    .line 161
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1d4
    if-eqz v9, :cond_1d8

    if-nez v11, :cond_1e5

    .line 162
    :cond_1d8
    const-string/jumbo v13, "MirrorLink_DAP"

    const-string/jumbo v14, "TPM_Quote failed (Please check the private key file)"

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v13, 0x5

    iput v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 164
    return-object v10

    .line 166
    :cond_1e5
    const-string/jumbo v13, "MirrorLink_DAP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[TZ] quoteInfo : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v11}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v13, "MirrorLink_DAP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[TZ] quoteSignature : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/lge/mirrorlink/common/ExtLog;->BytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p1

    iget v13, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->majorVersion:I

    iput v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->majorVersion:I

    .line 175
    move-object/from16 v0, p1

    iget v13, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->minorVersion:I

    iput v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->minorVersion:I

    .line 176
    const/4 v13, 0x0

    iput v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 177
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    iput-object v13, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->componentID:Ljava/lang/String;

    .line 178
    iput-object v7, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->oldvalue:[B

    .line 179
    iput-object v11, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteInfo:[B

    .line 180
    iput-object v9, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteSignature:[B

    .line 181
    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->protocolURL:Ljava/lang/String;

    .line 183
    return-object v10
.end method

.method public startServer()Z
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method public stopServer()V
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzAttestator;->mTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    .line 32
    return-void
.end method
