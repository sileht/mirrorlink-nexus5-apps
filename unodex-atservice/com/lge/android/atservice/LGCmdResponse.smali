.class public Lcom/lge/android/atservice/LGCmdResponse;
.super Ljava/lang/Object;
.source "LGCmdResponse.java"


# instance fields
.field public length:I

.field public response:[B

.field public result:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget v0, Lcom/lge/android/atservice/LGATCMDBaseSetting;->MAX_LG_COMMAND_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    .line 14
    return-void
.end method


# virtual methods
.method public ReadData()[B
    .registers 9

    .prologue
    const/high16 v7, 0xff0000

    const v6, 0xff00

    const/high16 v5, -0x1000000

    .line 38
    sget v3, Lcom/lge/android/atservice/LGATCMDBaseSetting;->MAX_LG_COMMAND_SIZE:I

    add-int/lit8 v3, v3, 0xc

    new-array v0, v3, [B

    .line 40
    .local v0, "data":[B
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 41
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    and-int/2addr v3, v6

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 42
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    and-int/2addr v3, v7

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    .line 43
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v0, v4

    .line 45
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v0, v4

    .line 46
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    and-int/2addr v3, v6

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v0, v4

    .line 47
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    and-int/2addr v3, v7

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v0, v4

    .line 48
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x7

    aput-byte v3, v0, v4

    .line 50
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->status:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/16 v4, 0x8

    aput-byte v3, v0, v4

    .line 51
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->status:I

    and-int/2addr v3, v6

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x9

    aput-byte v3, v0, v4

    .line 52
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->status:I

    and-int/2addr v3, v7

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xa

    aput-byte v3, v0, v4

    .line 53
    iget v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->status:I

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    const/16 v4, 0xb

    aput-byte v3, v0, v4

    .line 55
    sget v2, Lcom/lge/android/atservice/LGATCMDBaseSetting;->MAX_LG_COMMAND_SIZE:I

    .line 56
    .local v2, "length":I
    iget-object v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    array-length v3, v3

    sget v4, Lcom/lge/android/atservice/LGATCMDBaseSetting;->MAX_LG_COMMAND_SIZE:I

    if-ge v3, v4, :cond_86

    .line 57
    iget-object v3, p0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    array-length v2, v3

    .line 59
    :cond_86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_87
    if-ge v1, v2, :cond_94

    .line 60
    add-int/lit8 v3, v1, 0xc

    iget-object v4, p0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    aget-byte v4, v4, v1

    aput-byte v4, v0, v3

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 63
    :cond_94
    return-object v0
.end method

.method public WriteData([B)V
    .registers 5
    .param p1, "data"    # [B

    .prologue
    .line 21
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 22
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 21
    add-int/2addr v1, v2

    .line 22
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 21
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/android/atservice/LGCmdResponse;->result:I

    .line 24
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 25
    const/4 v2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 24
    add-int/2addr v1, v2

    .line 25
    const/4 v2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 24
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    .line 27
    const/16 v1, 0x8

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x9

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 28
    const/16 v2, 0xa

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 27
    add-int/2addr v1, v2

    .line 28
    const/16 v2, 0xb

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 27
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/android/atservice/LGCmdResponse;->status:I

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_62
    iget v1, p0, Lcom/lge/android/atservice/LGCmdResponse;->length:I

    if-ge v0, v1, :cond_71

    .line 31
    iget-object v1, p0, Lcom/lge/android/atservice/LGCmdResponse;->response:[B

    add-int/lit8 v2, v0, 0xc

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 18
    :cond_71
    return-void
.end method
