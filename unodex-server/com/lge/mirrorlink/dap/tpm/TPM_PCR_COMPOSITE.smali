.class public Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;
.super Ljava/lang/Object;
.source "TPM_PCR_COMPOSITE.java"


# instance fields
.field private pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

.field private select:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

.field private valueSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "numPCRs"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    invoke-direct {v1, p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;-><init>(I)V

    iput-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->select:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    .line 30
    new-array v1, p1, [Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    iput-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, p1, :cond_24

    .line 32
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    new-instance v2, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    invoke-direct {v2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;-><init>()V

    aput-object v2, v1, v0

    .line 33
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;->init()Z

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 35
    :cond_24
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->valueSize:I

    .line 27
    return-void
.end method

.method public varargs constructor <init>(Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;)V
    .registers 3
    .param p1, "select"    # Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;
    .param p2, "pcrValues"    # [Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->select:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    .line 47
    invoke-virtual {p0, p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->setPcrValues([Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;)V

    .line 44
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "pcrBytes"    # [B

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->fromBytes([BI)V

    .line 38
    return-void
.end method


# virtual methods
.method public fromBytes([BI)V
    .registers 11
    .param p1, "source"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 133
    array-length v6, p1

    sub-int/2addr v6, p2

    invoke-static {p1, p2, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 136
    .local v5, "srcValueSize":I
    div-int/lit8 v3, v5, 0x14

    .line 138
    .local v3, "numValues":I
    new-instance v6, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    invoke-direct {v6, v3}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;-><init>(I)V

    iput-object v6, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->select:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    .line 139
    new-array v6, v3, [Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    iput-object v6, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    .line 140
    mul-int/lit8 v6, v3, 0x14

    iput v6, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->valueSize:I

    .line 143
    const/4 v1, 0x4

    .line 144
    .local v1, "buffIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v3, :cond_35

    .line 146
    const/16 v6, 0x14

    new-array v4, v6, [B

    .line 147
    .local v4, "pcrBytes":[B
    array-length v6, v4

    invoke-virtual {v0, v4, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 148
    array-length v6, v4

    add-int/2addr v1, v6

    .line 151
    iget-object v6, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    new-instance v7, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    invoke-direct {v7, v4}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;-><init>([B)V

    aput-object v7, v6, v2

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 131
    .end local v4    # "pcrBytes":[B
    :cond_35
    return-void
.end method

.method public getNumPcrValues()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    array-length v0, v0

    return v0
.end method

.method public getPcrValues()[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    return-object v0
.end method

.method public getSelect()Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->select:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    return-object v0
.end method

.method public getTotalStructSize()I
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->select:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->getTotalStructSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->valueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getValueSize()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->valueSize:I

    return v0
.end method

.method public setPcrValues([Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;)V
    .registers 2
    .param p1, "pcrValues"    # [Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    .line 56
    return-void
.end method

.method public setSelect(Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;)V
    .registers 2
    .param p1, "select"    # Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->select:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    .line 68
    return-void
.end method

.method public setValueSize(I)V
    .registers 4
    .param p1, "newValueSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 88
    if-gez p1, :cond_b

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TPM_PCR_COMPOSITE : valueSize can not be less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x14

    if-le p1, v0, :cond_1b

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TPM_PCR_COMPOSITE : valueSize can not be greater than the size of pcrValues"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1b
    iput p1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->valueSize:I

    .line 86
    return-void
.end method

.method public toBytes()[B
    .registers 9

    .prologue
    .line 104
    iget-object v7, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    array-length v3, v7

    .line 105
    .local v3, "numValues":I
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->getTotalStructSize()I

    move-result v5

    .line 108
    .local v5, "totalStructSize":I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    .local v0, "buff":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->select:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    invoke-virtual {v7}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;->toBytes()[B

    move-result-object v1

    .line 112
    .local v1, "bytesOfSelect":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 113
    iget v7, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->valueSize:I

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 115
    const/4 v6, 0x0

    .line 116
    .local v6, "valueSizeWritten":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v3, :cond_31

    .line 117
    iget v7, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->valueSize:I

    if-ge v6, v7, :cond_31

    .line 118
    iget-object v7, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;->toBytes()[B

    move-result-object v4

    .line 119
    .local v4, "pcrValueBytes":[B
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    array-length v7, v4

    add-int/2addr v6, v7

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 127
    .end local v4    # "pcrValueBytes":[B
    :cond_31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TPM_PCR_COMPOSITE:\nselect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->select:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_SELECTION;

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    const-string/jumbo v3, "\nPcrValues (numValues="

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    iget-object v3, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    array-length v3, v3

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    const-string/jumbo v3, ", valueSize="

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    iget v3, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->valueSize:I

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    const-string/jumbo v3, "): "

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    const-string/jumbo v3, "\n"

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    iget-object v2, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    array-length v2, v2

    if-ge v0, v2, :cond_64

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR_COMPOSITE;->pcrValues:[Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 164
    :cond_64
    return-object v1
.end method
