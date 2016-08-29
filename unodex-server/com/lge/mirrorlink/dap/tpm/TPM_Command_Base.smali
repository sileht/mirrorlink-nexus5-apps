.class public interface abstract Lcom/lge/mirrorlink/dap/tpm/TPM_Command_Base;
.super Ljava/lang/Object;
.source "TPM_Command_Base.java"


# virtual methods
.method public abstract TPM_Extend(ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
.end method

.method public abstract TPM_Quote(Ljava/security/PrivateKey;ILcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;)Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
.end method

.method public abstract TPM_ReadPCR(I)Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
.end method

.method public abstract TPM_WritePCR(ILcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;)Z
.end method
