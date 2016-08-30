.class public Lcom/vzw/nfc/dos/FilterConditionTagDo;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "FilterConditionTagDo.java"


# static fields
.field public static final SCREEN_OFF_TAG:B = -0xft

.field public static final TAGVALUE:I = 0xd2


# instance fields
.field private mFilterConditionTag:B


# direct methods
.method public constructor <init>(B)V
    .registers 5
    .param p1, "filter_cond_tag"    # B

    .prologue
    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x0

    const/16 v1, 0xd2

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 24
    iput-byte v2, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    .line 32
    iput-byte p1, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    .line 33
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .param p1, "rawData"    # [B
    .param p2, "valueIndex"    # I
    .param p3, "valueLength"    # I

    .prologue
    .line 27
    const/16 v0, 0xd2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 24
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    .line 28
    return-void
.end method


# virtual methods
.method public getFilterConditionTag()B
    .registers 2

    .prologue
    .line 37
    iget-byte v0, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    return v0
.end method

.method public translate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    .line 46
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getRawData()[B

    move-result-object v0

    .line 47
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getValueIndex()I

    move-result v1

    .line 49
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getValueLength()I

    move-result v2

    add-int/2addr v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_1b

    .line 50
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Not enough data for FILTER_CONDITION_TAG_DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_1b
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getValueLength()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    .line 54
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Invalid length of FILTER_CONDITION_TAG_DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_2a
    aget-byte v2, v0, v1

    iput-byte v2, p0, Lcom/vzw/nfc/dos/FilterConditionTagDo;->mFilterConditionTag:B

    .line 57
    return-void
.end method
