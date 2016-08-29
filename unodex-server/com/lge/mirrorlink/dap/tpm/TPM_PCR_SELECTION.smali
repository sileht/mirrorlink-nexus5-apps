.class public Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;
.super Ljava/lang/Object;
.source "TPM_PCR_SELECTION.java"


# instance fields
.field private pcrSelect:[B


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "numPCRs"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->setPcrSelect([B)V

    .line 31
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->setAllOff()V

    .line 28
    return-void
.end method

.method public varargs constructor <init>(I[I)V
    .registers 3
    .param p1, "numPCRs"    # I
    .param p2, "onPCRs"    # [I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;-><init>(I)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->setPCRsOn([I)V

    .line 34
    return-void
.end method


# virtual methods
.method public fromBytes([BI)V
    .registers 8
    .param p1, "source"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 137
    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {p1, p2, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 139
    .local v1, "numBytes":I
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    .line 140
    add-int/lit8 v2, p2, 0x4

    iget-object v3, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 135
    return-void
.end method

.method public getNumPCRs()I
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getSizeOfSelect()S

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getPcrSelect()[B
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    return-object v0
.end method

.method public getSizeOfSelect()S
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    array-length v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getTotalStructSize()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isPCROn(I)Z
    .registers 9
    .param p1, "pcrNum"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 77
    div-int/lit8 v2, p1, 0x8

    .line 78
    .local v2, "byteNum":I
    rem-int/lit8 v0, p1, 0x8

    .line 79
    .local v0, "bitNum":I
    shl-int v6, v4, v0

    int-to-byte v3, v6

    .line 80
    .local v3, "mask":B
    iget-object v6, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    aget-byte v6, v6, v2

    and-int/2addr v6, v3

    int-to-byte v1, v6

    .line 81
    .local v1, "bitOn":B
    if-eqz v1, :cond_12

    :goto_11
    return v4

    :cond_12
    move v4, v5

    goto :goto_11
.end method

.method public setAllOff()V
    .registers 4

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 48
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_e
    return-void
.end method

.method public setAllOn()V
    .registers 4

    .prologue
    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 55
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_e
    return-void
.end method

.method public setPCROff(I)V
    .registers 8
    .param p1, "pcrNum"    # I

    .prologue
    .line 69
    div-int/lit8 v1, p1, 0x8

    .line 70
    .local v1, "byteNum":I
    rem-int/lit8 v0, p1, 0x8

    .line 71
    .local v0, "bitNum":I
    const/4 v3, 0x1

    shl-int/2addr v3, v0

    int-to-byte v2, v3

    .line 72
    .local v2, "mask":B
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    aget-byte v4, v3, v1

    not-int v5, v2

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 67
    return-void
.end method

.method public setPCROn(I)V
    .registers 7
    .param p1, "pcrNum"    # I

    .prologue
    .line 61
    div-int/lit8 v1, p1, 0x8

    .line 62
    .local v1, "byteNum":I
    rem-int/lit8 v0, p1, 0x8

    .line 63
    .local v0, "bitNum":I
    const/4 v3, 0x1

    shl-int/2addr v3, v0

    int-to-byte v2, v3

    .line 64
    .local v2, "mask":B
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    aget-byte v4, v3, v1

    or-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 59
    return-void
.end method

.method public varargs setPCRsOff([I)V
    .registers 5
    .param p1, "pcrNums"    # [I

    .prologue
    .line 93
    const/4 v1, 0x0

    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_c

    aget v0, p1, v1

    .line 94
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->setPCROff(I)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public varargs setPCRsOn([I)V
    .registers 5
    .param p1, "pcrNums"    # [I

    .prologue
    .line 86
    const/4 v1, 0x0

    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_c

    aget v0, p1, v1

    .line 87
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->setPCROn(I)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public setPcrSelect([B)V
    .registers 2
    .param p1, "pcrSelect"    # [B

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    .line 110
    return-void
.end method

.method public toBytes()[B
    .registers 5

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getTotalStructSize()I

    move-result v1

    .line 124
    .local v1, "bytesLen":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getSizeOfSelect()S

    move-result v2

    .line 128
    .local v2, "sizeOfSelect":S
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 129
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getNumPCRs()I

    move-result v4

    .line 146
    .local v4, "numEntries":I
    const-string/jumbo v3, ""

    .line 147
    .local v3, "list":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v4, :cond_2b

    .line 148
    invoke-virtual {p0, v2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->isPCROn(I)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 152
    :cond_2b
    new-instance v0, Ljava/math/BigInteger;

    iget-object v6, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->pcrSelect:[B

    invoke-direct {v0, v6}, Ljava/math/BigInteger;-><init>([B)V

    .line 153
    .local v0, "data":Ljava/math/BigInteger;
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "hexStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TPM_PCR_SELECTION for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " PCRs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "(0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "ret":Ljava/lang/String;
    return-object v5
.end method
