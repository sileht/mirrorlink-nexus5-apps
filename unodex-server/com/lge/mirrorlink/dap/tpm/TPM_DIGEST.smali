.class public Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
.super Ljava/lang/Object;
.source "TPM_DIGEST.java"


# static fields
.field public static final SIZE:I = 0x14


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->bytes:[B

    .line 12
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->bytes:[B

    .line 13
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->init()Z

    .line 10
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "source"    # [B

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x14

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->bytes:[B

    .line 43
    if-nez p1, :cond_f

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->bytes:[B

    .line 41
    :goto_e
    return-void

    .line 45
    :cond_f
    array-length v0, p1

    if-eq v0, v1, :cond_18

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 48
    :cond_18
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->bytes:[B

    goto :goto_e
.end method


# virtual methods
.method public fromBytes([BI)V
    .registers 6
    .param p1, "source"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->bytes:[B

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 57
    return-void
.end method

.method public init()Z
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->init(B)Z

    move-result v0

    return v0
.end method

.method public init(B)Z
    .registers 4
    .param p1, "initVal"    # B

    .prologue
    .line 23
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->bytes:[B

    if-eqz v1, :cond_12

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    const/16 v1, 0x14

    if-ge v0, v1, :cond_10

    .line 25
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->bytes:[B

    aput-byte p1, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 28
    :cond_10
    const/4 v1, 0x1

    return v1

    .line 30
    .end local v0    # "i":I
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public toBytes()[B
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->bytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
