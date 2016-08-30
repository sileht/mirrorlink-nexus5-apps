.class public Lcom/vzw/nfc/dos/VzwPermissionDo;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "VzwPermissionDo.java"


# static fields
.field public static final TAGVALUE:I = 0xe3


# instance fields
.field private mVzwAllowed:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 5
    .param p1, "allowed"    # Z

    .prologue
    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x0

    const/16 v1, 0xe3

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 23
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/VzwPermissionDo;->mVzwAllowed:Z

    .line 31
    iput-boolean p1, p0, Lcom/vzw/nfc/dos/VzwPermissionDo;->mVzwAllowed:Z

    .line 32
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .param p1, "rawData"    # [B
    .param p2, "valueIndex"    # I
    .param p3, "valueLength"    # I

    .prologue
    .line 26
    const/16 v0, 0xe3

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/nfc/dos/VzwPermissionDo;->mVzwAllowed:Z

    .line 27
    return-void
.end method


# virtual methods
.method public isVzwAllowed()Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/vzw/nfc/dos/VzwPermissionDo;->mVzwAllowed:Z

    return v0
.end method

.method public translate()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 43
    iput-boolean v3, p0, Lcom/vzw/nfc/dos/VzwPermissionDo;->mVzwAllowed:Z

    .line 45
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwPermissionDo;->getRawData()[B

    move-result-object v0

    .line 46
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwPermissionDo;->getValueIndex()I

    move-result v1

    .line 48
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwPermissionDo;->getValueLength()I

    move-result v4

    add-int/2addr v4, v1

    array-length v5, v0

    if-le v4, v5, :cond_1c

    .line 49
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Not enough data for VZW_AR_DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_1c
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwPermissionDo;->getValueLength()I

    move-result v4

    if-eq v4, v2, :cond_2a

    .line 53
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Invalid length of VZW-AR-DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_2a
    aget-byte v4, v0, v1

    if-ne v4, v2, :cond_31

    :goto_2e
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/VzwPermissionDo;->mVzwAllowed:Z

    .line 56
    return-void

    :cond_31
    move v2, v3

    .line 55
    goto :goto_2e
.end method
