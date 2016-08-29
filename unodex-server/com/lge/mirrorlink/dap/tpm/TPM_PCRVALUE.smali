.class public Lcom/lge/mirrorlink/dap/tpm/TPM_PCRVALUE;
.super Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;
.source "TPM_PCRVALUE.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "source"    # [B

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/dap/tpm/TPM_DIGEST;-><init>([B)V

    .line 14
    return-void
.end method
