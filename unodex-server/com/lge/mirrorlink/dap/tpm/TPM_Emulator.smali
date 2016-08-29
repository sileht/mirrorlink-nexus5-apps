.class public Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;
.super Ljava/lang/Object;
.source "TPM_Emulator.java"


# static fields
.field public static final TMDAPPCRIDX:I = 0xa


# instance fields
.field private TPMCmd:Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;

.field private TPMPcr:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

.field private devicePrivateKey:Ljava/security/PrivateKey;

.field private initialized:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->initialized:Z

    .line 44
    new-instance v0, Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;

    invoke-direct {v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_CommandTZ;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMCmd:Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;

    .line 48
    invoke-static {}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->getInstance()Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMPcr:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    .line 49
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMPcr:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->setFlag(IZ)Z

    .line 40
    return-void
.end method


# virtual methods
.method public TPM_Extend(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Z
    .registers 4
    .param p1, "pcrIdx"    # I
    .param p2, "inDigest"    # Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMCmd:Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    .line 82
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMCmd:Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;

    invoke-interface {v0, p1, p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;->TPM_Extend(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 83
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public TPM_Quote(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
    .registers 5
    .param p1, "pcrIdx"    # I
    .param p2, "externalData"    # Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMCmd:Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->devicePrivateKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_14

    if-eqz p2, :cond_14

    .line 99
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMCmd:Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;

    iget-object v1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->devicePrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v0, v1, p1, p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;->TPM_Quote(Ljava/security/PrivateKey;ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;

    move-result-object v0

    return-object v0

    .line 101
    :cond_14
    return-object v1
.end method

.method public TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
    .registers 4
    .param p1, "pcrIdx"    # I

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMCmd:Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;

    if-eqz v0, :cond_c

    .line 107
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMCmd:Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;

    invoke-interface {v0, p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;->TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    move-result-object v0

    return-object v0

    .line 109
    :cond_c
    return-object v1
.end method

.method public TPM_ResetPCR()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMPcr:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    if-eqz v0, :cond_9

    .line 124
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMPcr:Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/tpm/TPM_PCR;->reset()Z

    .line 121
    :cond_9
    return-void
.end method

.method public TPM_WritePCR(ILcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;)Z
    .registers 4
    .param p1, "pcrIdx"    # I
    .param p2, "pcrValue"    # Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMCmd:Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;

    if-eqz v0, :cond_b

    .line 115
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->TPMCmd:Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;

    invoke-interface {v0, p1, p2}, Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;->TPM_WritePCR(ILcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;)Z

    move-result v0

    return v0

    .line 118
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getDevicePrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->devicePrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->initialized:Z

    return v0
.end method

.method public setDevicePrivateKey(Ljava/security/PrivateKey;)V
    .registers 2
    .param p1, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_Emulator;->devicePrivateKey:Ljava/security/PrivateKey;

    .line 62
    return-void
.end method
