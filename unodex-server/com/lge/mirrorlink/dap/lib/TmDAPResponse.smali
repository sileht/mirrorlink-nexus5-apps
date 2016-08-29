.class public Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;
.super Ljava/lang/Object;
.source "TmDAPResponse.java"


# static fields
.field public static final COMPONENT_NOT_EXIST:I = 0x1

.field public static final FAIL:I = 0x5

.field public static MAJORVERSION_SUPPORTED:I = 0x0

.field public static MINORVERSION_SUPPORTED:I = 0x0

.field public static final NONE:I = -0x1

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN_COMPONENT:I = 0x4

.field public static final UNKNOWN_TRUSTROOT:I = 0x3

.field public static final UNSUPPORTED_VERSION:I = 0x2


# instance fields
.field public componentID:Ljava/lang/String;

.field public deviceCertificate:[B

.field public majorVersion:I

.field public manufacturerCertificate:[B

.field public minorVersion:I

.field public oldvalue:[B

.field public protocolURL:Ljava/lang/String;

.field public quoteInfo:[B

.field public quoteSignature:[B

.field public result:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x1

    .line 6
    sput v0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->MAJORVERSION_SUPPORTED:I

    .line 7
    sput v0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->MINORVERSION_SUPPORTED:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->majorVersion:I

    .line 33
    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->minorVersion:I

    .line 34
    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    .line 35
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->componentID:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->oldvalue:[B

    .line 37
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteInfo:[B

    .line 38
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteSignature:[B

    .line 39
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->protocolURL:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->deviceCertificate:[B

    .line 41
    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->manufacturerCertificate:[B

    .line 30
    return-void
.end method

.method public static isValidVersion(II)Z
    .registers 4
    .param p0, "majorVersion"    # I
    .param p1, "minorVersion"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    if-lez p0, :cond_11

    .line 73
    sget v0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->MAJORVERSION_SUPPORTED:I

    if-lt p0, v0, :cond_f

    .line 74
    sget v0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->MAJORVERSION_SUPPORTED:I

    if-ne p0, v0, :cond_11

    sget v0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->MINORVERSION_SUPPORTED:I

    if-gt p1, v0, :cond_11

    .line 75
    :cond_f
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_11
    return v1
.end method


# virtual methods
.method public hasValidOldValue()Z
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->oldvalue:[B

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->oldvalue:[B

    array-length v0, v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_d

    .line 84
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public hasValidQuoteInfo()Z
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteInfo:[B

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteInfo:[B

    array-length v0, v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_d

    .line 93
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public hasValidQuoteSignature()Z
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteSignature:[B

    if-eqz v0, :cond_14

    .line 102
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteSignature:[B

    array-length v0, v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->quoteSignature:[B

    array-length v0, v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_14

    .line 103
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public hasValidVersion()Z
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->majorVersion:I

    iget v1, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->minorVersion:I

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->isValidVersion(II)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->hasValidVersion()Z

    move-result v0

    if-nez v0, :cond_9

    .line 47
    return v1

    .line 50
    :cond_9
    iget v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->result:I

    if-nez v0, :cond_37

    .line 51
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->hasValidVersion()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->componentID:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 54
    :cond_17
    return v1

    .line 51
    :cond_18
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->hasValidOldValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 52
    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->hasValidQuoteInfo()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->hasValidQuoteSignature()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->protocolURL:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 53
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->deviceCertificate:[B

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TmDAPResponse;->manufacturerCertificate:[B

    if-eqz v0, :cond_17

    .line 57
    return v2

    .line 59
    :cond_37
    return v2
.end method
