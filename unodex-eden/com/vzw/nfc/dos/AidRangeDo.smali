.class public Lcom/vzw/nfc/dos/AidRangeDo;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "AidRangeDo.java"


# static fields
.field public static final TAGVALUE:I = 0xc2


# instance fields
.field private mAidRange:[B


# direct methods
.method public constructor <init>([B)V
    .registers 5
    .param p1, "aid_range"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    const/16 v0, 0xc2

    invoke-direct {p0, v2, v0, v1, v1}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 27
    iput-object v2, p0, Lcom/vzw/nfc/dos/AidRangeDo;->mAidRange:[B

    .line 35
    iput-object p1, p0, Lcom/vzw/nfc/dos/AidRangeDo;->mAidRange:[B

    .line 36
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .param p1, "rawData"    # [B
    .param p2, "valueIndex"    # I
    .param p3, "valueLength"    # I

    .prologue
    .line 30
    const/16 v0, 0xc2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/nfc/dos/AidRangeDo;->mAidRange:[B

    .line 31
    return-void
.end method


# virtual methods
.method public getAidRange()[B
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vzw/nfc/dos/AidRangeDo;->mAidRange:[B

    return-object v0
.end method

.method public translate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vzw/nfc/dos/AidRangeDo;->mAidRange:[B

    .line 48
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/AidRangeDo;->getRawData()[B

    move-result-object v0

    .line 49
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/AidRangeDo;->getValueIndex()I

    move-result v1

    .line 51
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/AidRangeDo;->getValueLength()I

    move-result v2

    add-int/2addr v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_1b

    .line 52
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Not enough data for AID-RANGE-DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_1b
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/AidRangeDo;->getValueLength()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/vzw/nfc/dos/AidRangeDo;->mAidRange:[B

    .line 56
    iget-object v2, p0, Lcom/vzw/nfc/dos/AidRangeDo;->mAidRange:[B

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/AidRangeDo;->getValueLength()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 57
    return-void
.end method
