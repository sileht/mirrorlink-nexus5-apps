.class public Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;
.super Ljava/lang/Object;
.source "ContentAttestation.java"


# static fields
.field public static final ATTESTATION_CONFIG_LEN:I = 0x2

.field public static final EC_ERROR_NOT_IMPLEMENTED:S = 0x81s

.field public static final EC_ERROR_NO_SESSION_KEY:S = 0x80s

.field public static final EC_ERROR_UNKNOWN:S = 0xffs

.field public static final EC_SUCCESS:S = 0x0s

.field public static final EC_SUCCESS_NO_SIG:S = 0x2s

.field public static final EC_SUCCESS_NO_SIG_W_SI_CHANGE:S = 0x3s

.field public static final EC_SUCCESS_W_SI_CHANGE:S = 0x1s

.field public static final NONCE_LEN:I = 0x10

.field public static final REQ_PAYLOAD_MIN_LEN:I = 0x14

.field public static final RES_PAYLOAD_MAX_LEN:I = 0x7a

.field public static final TAG:Ljava/lang/String; = "MirrorLink_VNC"


# instance fields
.field private mAttestationConfig:[B

.field private mNonce:[B

.field private mSendResponseFlag:Z

.field private mSessionkey:[B

.field private mSignatureType:B

.field private mUsedSessionKey:B


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mSendResponseFlag:Z

    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mNonce:[B

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mAttestationConfig:[B

    .line 28
    iput-byte v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mSignatureType:B

    .line 29
    iput-byte v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mUsedSessionKey:B

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mSessionkey:[B

    .line 32
    return-void
.end method

.method private calSha256HashValue([B)[B
    .registers 7
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 126
    if-nez p1, :cond_4

    .line 127
    return-object v4

    .line 129
    :cond_4
    array-length v2, p1

    if-nez v2, :cond_8

    .line 130
    return-object v4

    .line 135
    :cond_8
    :try_start_8
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 136
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_12} :catch_17

    .line 142
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    .line 137
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_17
    move-exception v1

    .line 138
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "generateXmlSignature digest Failed:"

    invoke-static {v2, v3, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    return-object v4
.end method

.method private makeSignedInfoFlag(ZZZ)[B
    .registers 9
    .param p1, "bSigCtxInfo"    # Z
    .param p2, "bSigFrameBuffer"    # Z
    .param p3, "bNumPixel"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 146
    new-array v0, v4, [B

    .line 147
    .local v0, "signedInfoFlag":[B
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 149
    if-eqz p1, :cond_12

    .line 150
    aget-byte v1, v0, v2

    invoke-static {v1, v3}, Lcom/lge/mirrorlink/common/Utility;->setBit(BI)B

    move-result v1

    aput-byte v1, v0, v2

    .line 153
    :cond_12
    if-eqz p2, :cond_1c

    .line 154
    aget-byte v1, v0, v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/Utility;->setBit(BI)B

    move-result v1

    aput-byte v1, v0, v2

    .line 157
    :cond_1c
    if-eqz p3, :cond_26

    .line 158
    aget-byte v1, v0, v2

    invoke-static {v1, v4}, Lcom/lge/mirrorlink/common/Utility;->setBit(BI)B

    move-result v1

    aput-byte v1, v0, v2

    .line 161
    :cond_26
    return-object v0
.end method


# virtual methods
.method public getResponsePayload([B[BI)[B
    .registers 15
    .param p1, "ctxInfo"    # [B
    .param p2, "frameBuffer"    # [B
    .param p3, "pixelNum"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 69
    const/16 v8, 0x7a

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 71
    .local v4, "payload":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mAttestationConfig:[B

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, "errorCode":S
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 76
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mNonce:[B

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "bSigCtxInfo":Z
    const/4 v5, 0x0

    .line 80
    .local v5, "sigCtxInfo":[B
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mAttestationConfig:[B

    aget-byte v8, v8, v9

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 81
    if-eqz p1, :cond_2e

    array-length v8, p1

    if-lez v8, :cond_2e

    .line 82
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->calSha256HashValue([B)[B

    move-result-object v5

    .line 83
    .local v5, "sigCtxInfo":[B
    if-eqz v5, :cond_2e

    .line 84
    const/4 v1, 0x1

    .line 89
    .end local v5    # "sigCtxInfo":[B
    :cond_2e
    const/4 v2, 0x0

    .line 90
    .local v2, "bSigFrameBuffer":Z
    const/4 v6, 0x0

    .line 91
    .local v6, "sigFrameBuffer":[B
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mAttestationConfig:[B

    aget-byte v8, v8, v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 92
    if-eqz p2, :cond_46

    array-length v8, p2

    if-lez v8, :cond_46

    .line 93
    invoke-direct {p0, p2}, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->calSha256HashValue([B)[B

    move-result-object v6

    .line 94
    .local v6, "sigFrameBuffer":[B
    if-eqz v6, :cond_46

    .line 95
    const/4 v2, 0x1

    .line 100
    .end local v6    # "sigFrameBuffer":[B
    :cond_46
    const/4 v0, 0x0

    .line 101
    .local v0, "bNumPixel":Z
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mAttestationConfig:[B

    aget-byte v8, v8, v9

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 102
    const/4 v0, 0x1

    .line 105
    :cond_53
    invoke-direct {p0, v1, v2, v0}, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->makeSignedInfoFlag(ZZZ)[B

    move-result-object v7

    .line 106
    .local v7, "signedInfoFlag":[B
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    if-eqz v1, :cond_5f

    .line 109
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    :cond_5f
    if-eqz v2, :cond_64

    .line 112
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 114
    :cond_64
    if-eqz v0, :cond_69

    .line 115
    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    :cond_69
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    return-object v8
.end method

.method public needToSendResponse()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mSendResponseFlag:Z

    return v0
.end method

.method public parsePayload([B)Z
    .registers 10
    .param p1, "payload"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 37
    if-nez p1, :cond_5

    .line 38
    return v6

    .line 41
    :cond_5
    array-length v3, p1

    int-to-short v2, v3

    .line 42
    .local v2, "payloadLength":S
    const/16 v3, 0x14

    if-ge v2, v3, :cond_2d

    .line 43
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payload length is too short. Attestation request will be ignored. (length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return v6

    .line 47
    :cond_2d
    const/4 v0, 0x0

    .line 48
    .local v0, "offset":I
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mNonce:[B

    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mNonce:[B

    array-length v4, v4

    invoke-static {p1, v0, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 49
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mNonce:[B

    array-length v3, v3

    add-int/lit8 v0, v3, 0x0

    .line 51
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mAttestationConfig:[B

    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mAttestationConfig:[B

    array-length v4, v4

    invoke-static {p1, v0, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 52
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mAttestationConfig:[B

    array-length v3, v3

    add-int/2addr v0, v3

    .line 54
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v3, p1, v0

    iput-byte v3, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mSignatureType:B

    .line 55
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mSignatureType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mSignatureType:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v3, p1, v1

    iput-byte v3, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mUsedSessionKey:B

    .line 57
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mUsedSessionKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mUsedSessionKey:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-byte v3, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mUsedSessionKey:B

    if-ne v3, v7, :cond_9d

    .line 60
    add-int/lit8 v3, v2, -0x14

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mSessionkey:[B

    .line 61
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mSessionkey:[B

    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mSessionkey:[B

    array-length v4, v4

    invoke-static {p1, v0, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 64
    :cond_9d
    iput-boolean v7, p0, Lcom/lge/mirrorlink/vnc/lib/ContentAttestation;->mSendResponseFlag:Z

    .line 65
    return v7
.end method
