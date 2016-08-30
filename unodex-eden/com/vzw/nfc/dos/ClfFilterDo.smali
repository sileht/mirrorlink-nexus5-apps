.class public Lcom/vzw/nfc/dos/ClfFilterDo;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "ClfFilterDo.java"


# static fields
.field public static final TAGVALUE:I = 0xfe


# instance fields
.field private mFilterEntryAr:Lcom/vzw/nfc/dos/FilterEntryDo;


# direct methods
.method public constructor <init>(Lcom/vzw/nfc/dos/FilterEntryDo;)V
    .registers 5
    .param p1, "filter_entry_do"    # Lcom/vzw/nfc/dos/FilterEntryDo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    const/16 v0, 0xfe

    invoke-direct {p0, v2, v0, v1, v1}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 32
    iput-object v2, p0, Lcom/vzw/nfc/dos/ClfFilterDo;->mFilterEntryAr:Lcom/vzw/nfc/dos/FilterEntryDo;

    .line 40
    iput-object p1, p0, Lcom/vzw/nfc/dos/ClfFilterDo;->mFilterEntryAr:Lcom/vzw/nfc/dos/FilterEntryDo;

    .line 41
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .param p1, "rawData"    # [B
    .param p2, "valueIndex"    # I
    .param p3, "valueLength"    # I

    .prologue
    .line 35
    const/16 v0, 0xfe

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/nfc/dos/ClfFilterDo;->mFilterEntryAr:Lcom/vzw/nfc/dos/FilterEntryDo;

    .line 36
    return-void
.end method


# virtual methods
.method public getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vzw/nfc/dos/ClfFilterDo;->mFilterEntryAr:Lcom/vzw/nfc/dos/FilterEntryDo;

    return-object v0
.end method

.method public translate()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vzw/nfc/dos/ClfFilterDo;->mFilterEntryAr:Lcom/vzw/nfc/dos/FilterEntryDo;

    .line 53
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/ClfFilterDo;->getRawData()[B

    move-result-object v0

    .line 54
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/ClfFilterDo;->getValueIndex()I

    move-result v1

    .line 56
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/ClfFilterDo;->getValueLength()I

    move-result v3

    add-int/2addr v3, v1

    array-length v4, v0

    if-le v3, v4, :cond_1b

    .line 57
    new-instance v3, Lcom/vzw/nfc/dos/DoParserException;

    const-string v4, "Not enough data for CLF_FILTER_DO!"

    invoke-direct {v3, v4}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_1b
    invoke-static {v0, v1}, Lcom/vzw/nfc/dos/VzwTlv;->parse([BI)Lcom/vzw/nfc/dos/VzwTlv;

    move-result-object v2

    .line 63
    .local v2, "temp":Lcom/vzw/nfc/dos/VzwTlv;
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xa1

    if-ne v3, v4, :cond_5c

    .line 64
    new-instance v3, Lcom/vzw/nfc/dos/FilterEntryDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/FilterEntryDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/ClfFilterDo;->mFilterEntryAr:Lcom/vzw/nfc/dos/FilterEntryDo;

    .line 65
    iget-object v3, p0, Lcom/vzw/nfc/dos/ClfFilterDo;->mFilterEntryAr:Lcom/vzw/nfc/dos/FilterEntryDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/FilterEntryDo;->translate()V

    .line 69
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v4

    add-int v1, v3, v4

    .line 70
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/ClfFilterDo;->getValueIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/ClfFilterDo;->getValueLength()I

    move-result v4

    add-int/2addr v3, v4

    .line 60
    if-gt v3, v1, :cond_1b

    .line 72
    iget-object v3, p0, Lcom/vzw/nfc/dos/ClfFilterDo;->mFilterEntryAr:Lcom/vzw/nfc/dos/FilterEntryDo;

    if-nez v3, :cond_64

    .line 73
    new-instance v3, Lcom/vzw/nfc/dos/DoParserException;

    const-string v4, "Invalid FILTER_ENTRY_DO in CLF_FILTER_DO!"

    invoke-direct {v3, v4}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_5c
    new-instance v3, Lcom/vzw/nfc/dos/DoParserException;

    const-string v4, "Invalid FILTER_ENTRY_DO in CLF_FILTER_DO!"

    invoke-direct {v3, v4}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_64
    return-void
.end method
