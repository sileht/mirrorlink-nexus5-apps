.class public Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
.super Ljava/lang/Object;
.source "TPM_PCR.java"


# static fields
.field public static final TPM_NUM_PCR:I = 0x18

.field private static _instance:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;


# instance fields
.field private flags:[Z

.field private values:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->_instance:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x18

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->values:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    .line 49
    iput-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->flags:[Z

    .line 56
    new-array v1, v3, [Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    iput-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->values:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v3, :cond_1d

    .line 58
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->values:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    new-instance v2, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    invoke-direct {v2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;-><init>()V

    aput-object v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 61
    :cond_1d
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->flags:[Z

    .line 62
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->reset()Z

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->_instance:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    invoke-direct {v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->_instance:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    .line 37
    :cond_b
    sget-object v0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->_instance:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    return-object v0
.end method

.method public static isValidIndex(I)Z
    .registers 3
    .param p0, "idx"    # I

    .prologue
    const/4 v1, 0x0

    .line 121
    if-ltz p0, :cond_9

    const/16 v0, 0x18

    if-ge p0, v0, :cond_9

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_9
    return v1
.end method


# virtual methods
.method public get(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    .registers 3
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->values:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    aget-object v0, v0, p1

    return-object v0

    .line 86
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getFlag(I)Z
    .registers 3
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 104
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->flags:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 106
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public reset()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->values:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->flags:[Z

    if-eqz v1, :cond_1e

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    const/16 v1, 0x18

    if-ge v0, v1, :cond_1c

    .line 72
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->values:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;->init()Z

    .line 73
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->flags:[Z

    aput-boolean v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 75
    :cond_1c
    const/4 v1, 0x1

    return v1

    .line 77
    .end local v0    # "i":I
    :cond_1e
    return v2
.end method

.method public set(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Z
    .registers 6
    .param p1, "idx"    # I
    .param p2, "val"    # Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 93
    invoke-virtual {p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;->toBytes()[B

    move-result-object v0

    .line 94
    .local v0, "bytesVal":[B
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->values:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, v2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;->fromBytes([BI)V

    .line 95
    const/4 v1, 0x1

    return v1

    .line 97
    .end local v0    # "bytesVal":[B
    :cond_14
    return v2
.end method

.method public setFlag(IZ)Z
    .registers 4
    .param p1, "idx"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 112
    invoke-static {p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 113
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->flags:[Z

    aput-boolean p2, v0, p1

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_c
    const/4 v0, 0x0

    return v0
.end method
