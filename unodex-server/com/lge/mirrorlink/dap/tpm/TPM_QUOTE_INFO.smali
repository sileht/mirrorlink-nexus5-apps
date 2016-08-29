.class public Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;
.super Ljava/lang/Object;
.source "TPM_QUOTE_INFO.java"


# instance fields
.field public quoteInfo:[B

.field public quoteSignature:[B


# direct methods
.method public constructor <init>([B[B)V
    .registers 4
    .param p1, "quoteInfo"    # [B
    .param p2, "quoteSig"    # [B

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;->quoteInfo:[B

    .line 25
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;->quoteSignature:[B

    .line 29
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;->quoteInfo:[B

    .line 30
    iput-object p2, p0, Lcom/lge/mirrorlink/dap/tpm/TPM_QUOTE_INFO;->quoteSignature:[B

    .line 27
    return-void
.end method
