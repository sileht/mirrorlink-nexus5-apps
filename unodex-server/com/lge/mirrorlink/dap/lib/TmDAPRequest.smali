.class public Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;
.super Ljava/lang/Object;
.source "TmDAPRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DAP"


# instance fields
.field public componentID:Ljava/lang/String;

.field public majorVersion:I

.field public minorVersion:I

.field public nonce:[B

.field public trustRoot:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->majorVersion:I

    .line 22
    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->minorVersion:I

    .line 23
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

    .line 24
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->nonce:[B

    .line 25
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public hasValidComponentID()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 85
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "[FAIL] componentID is null "

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return v3

    .line 88
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    sget-object v1, Lcom/lge/mirrorlink/common/ComponentID;->MirrorLinkComponentIDs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 89
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->componentID:Ljava/lang/String;

    sget-object v2, Lcom/lge/mirrorlink/common/ComponentID;->MirrorLinkComponentIDs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 90
    const/4 v1, 0x1

    return v1

    .line 88
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 93
    :cond_26
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "[FAIL] has invalid componentID"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v3
.end method

.method public hasValidNonce()Z
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->nonce:[B

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->nonce:[B

    array-length v0, v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_d

    .line 76
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_d
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "[FAIL] hasValidNonce "

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public hasValidTrustRoot()Z
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_d

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_d
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

    if-eqz v0, :cond_30

    .line 66
    const-string/jumbo v0, "MirrorLink_DAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid trustRoot length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->trustRoot:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_2e
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_30
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "trustRoot is null "

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public hasValidVersion()Z
    .registers 4

    .prologue
    .line 55
    const-string/jumbo v0, "MirrorLinkServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version check : majorVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->majorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " minorVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->minorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->majorVersion:I

    iget v1, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->minorVersion:I

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->isValidVersion(II)Z

    move-result v0

    return v0
.end method

.method public isValid()I
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->hasValidVersion()Z

    move-result v0

    if-nez v0, :cond_11

    .line 31
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "hasinValidVersion"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x2

    return v0

    .line 35
    :cond_11
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->hasValidTrustRoot()Z

    move-result v0

    if-nez v0, :cond_22

    .line 36
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "hasinValidTrustRoot"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x3

    return v0

    .line 40
    :cond_22
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->hasValidComponentID()Z

    move-result v0

    if-nez v0, :cond_33

    .line 41
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "hasinValidComponentID"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x4

    return v0

    .line 45
    :cond_33
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/TmDAPRequest;->hasValidNonce()Z

    move-result v0

    if-nez v0, :cond_44

    .line 46
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "hasinValidNonce"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x5

    return v0

    .line 50
    :cond_44
    const/4 v0, 0x0

    return v0
.end method
