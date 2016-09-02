.class public Lcom/lge/android/atservice/LGCmdRequest;
.super Ljava/lang/Object;
.source "LGCmdRequest.java"


# instance fields
.field public body:[B

.field public length:I

.field public opcode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget v0, Lcom/lge/android/atservice/LGATCMDBaseSetting;->MAX_LG_COMMAND_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    .line 13
    return-void
.end method


# virtual methods
.method public ReadData()[B
    .registers 9

    .prologue
    const/high16 v7, 0xff0000

    const v6, 0xff00

    const/high16 v5, -0x1000000

    .line 34
    sget v3, Lcom/lge/android/atservice/LGATCMDBaseSetting;->MAX_LG_COMMAND_SIZE:I

    add-int/lit8 v3, v3, 0x8

    new-array v0, v3, [B

    .line 36
    .local v0, "data":[B
    iget v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 37
    iget v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    and-int/2addr v3, v6

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 38
    iget v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    and-int/2addr v3, v7

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    .line 39
    iget v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v0, v4

    .line 41
    iget v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v0, v4

    .line 42
    iget v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    and-int/2addr v3, v6

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v0, v4

    .line 43
    iget v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    and-int/2addr v3, v7

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v0, v4

    .line 44
    iget v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x7

    aput-byte v3, v0, v4

    .line 45
    sget v2, Lcom/lge/android/atservice/LGATCMDBaseSetting;->MAX_LG_COMMAND_SIZE:I

    .line 47
    .local v2, "length":I
    iget-object v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    if-eqz v3, :cond_71

    .line 48
    iget-object v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    array-length v3, v3

    sget v4, Lcom/lge/android/atservice/LGATCMDBaseSetting;->MAX_LG_COMMAND_SIZE:I

    if-ge v3, v4, :cond_63

    .line 49
    iget-object v3, p0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    array-length v2, v3

    .line 51
    :cond_63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_64
    if-ge v1, v2, :cond_71

    .line 52
    add-int/lit8 v3, v1, 0x8

    iget-object v4, p0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    aget-byte v4, v4, v1

    aput-byte v4, v0, v3

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 55
    .end local v1    # "i":I
    :cond_71
    return-object v0
.end method

.method public WriteData([B)V
    .registers 5
    .param p1, "data"    # [B

    .prologue
    .line 20
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 21
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 20
    add-int/2addr v1, v2

    .line 21
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 20
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    .line 23
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 24
    const/4 v2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 23
    add-int/2addr v1, v2

    .line 24
    const/4 v2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 23
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    iget v1, p0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    if-ge v0, v1, :cond_4e

    .line 27
    iget-object v1, p0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    add-int/lit8 v2, v0, 0x8

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 17
    :cond_4e
    return-void
.end method
