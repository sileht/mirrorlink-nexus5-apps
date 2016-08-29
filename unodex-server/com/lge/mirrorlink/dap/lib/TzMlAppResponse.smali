.class public Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;
.super Ljava/lang/Object;
.source "TzMlAppResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DAP"


# instance fields
.field public data:[B

.field public length:I

.field public result:I

.field public status:I


# direct methods
.method public constructor <init>([B)V
    .registers 6
    .param p1, "buffer"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->result:I

    .line 10
    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->length:I

    .line 11
    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->status:I

    .line 12
    iput-object v3, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->data:[B

    .line 16
    if-eqz p1, :cond_8a

    .line 17
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 18
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 17
    add-int/2addr v1, v2

    .line 18
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 17
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->result:I

    .line 20
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 21
    const/4 v2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 20
    add-int/2addr v1, v2

    .line 21
    const/4 v2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 20
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->length:I

    .line 23
    const/16 v1, 0x8

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x9

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 24
    const/16 v2, 0xa

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 23
    add-int/2addr v1, v2

    .line 24
    const/16 v2, 0xb

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 23
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->status:I

    .line 26
    iget v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->length:I

    if-lez v1, :cond_93

    .line 27
    iget v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->length:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->data:[B

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7b
    iget v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->length:I

    if-ge v0, v1, :cond_93

    .line 29
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->data:[B

    add-int/lit8 v2, v0, 0xc

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 33
    .end local v0    # "i":I
    :cond_8a
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "Buffer for reponse is null!!"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_93
    return-void
.end method
