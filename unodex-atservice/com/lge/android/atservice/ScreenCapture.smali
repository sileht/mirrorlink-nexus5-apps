.class public Lcom/lge/android/atservice/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# instance fields
.field private mCaptureDepth:I

.field private mCaptureHeight:I

.field private mCaptureLeft:I

.field private mCaptureTop:I

.field private mCaptureWidth:I

.field private mScreenCaptureData:[B

.field private mScreenCaptureDataSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureLeft:I

    .line 22
    iput v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureTop:I

    .line 23
    const/16 v0, 0x140

    iput v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureWidth:I

    .line 24
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureHeight:I

    .line 25
    const/16 v0, 0x10

    iput v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureDepth:I

    .line 20
    return-void
.end method

.method private rgb565tobw([B[BIIB)I
    .registers 20
    .param p1, "dest"    # [B
    .param p2, "src"    # [B
    .param p3, "bytePerWidth"    # I
    .param p4, "height"    # I
    .param p5, "threshold"    # B

    .prologue
    .line 100
    move/from16 v0, p5

    and-int/lit16 v10, v0, 0xff

    or-int/lit8 v3, v10, 0x0

    .line 102
    .local v3, "calThreshold":I
    add-int/lit8 v10, p3, 0x3f

    div-int/lit8 v10, v10, 0x40

    mul-int/lit8 v2, v10, 0x40

    .line 104
    .local v2, "bytePerLine":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_d
    mul-int v10, v2, p4

    div-int/lit8 v10, v10, 0x8

    if-ge v7, v10, :cond_19

    .line 105
    const/4 v10, 0x0

    aput-byte v10, p1, v7

    .line 104
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 108
    :cond_19
    const/4 v7, 0x0

    .line 109
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1b
    move/from16 v0, p4

    if-ge v6, v0, :cond_6a

    .line 110
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    move/from16 v0, p3

    if-ge v5, v0, :cond_62

    .line 111
    mul-int v10, v6, p3

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, p2, v10

    int-to-short v9, v10

    .line 112
    .local v9, "rgb":S
    mul-int v10, v6, p3

    add-int/2addr v10, v5

    aget-byte v10, p2, v10

    shl-int/lit8 v10, v10, 0x8

    int-to-short v10, v10

    or-int/2addr v10, v9

    int-to-short v9, v10

    .line 114
    const v10, 0xf800

    and-int/2addr v10, v9

    shr-int/lit8 v10, v10, 0xb

    int-to-byte v8, v10

    .line 115
    .local v8, "r":B
    and-int/lit16 v10, v9, 0x7e0

    shr-int/lit8 v10, v10, 0x5

    int-to-byte v4, v10

    .line 116
    .local v4, "g":B
    and-int/lit8 v10, v9, 0x1f

    int-to-byte v1, v10

    .line 118
    .local v1, "b":B
    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v4

    mul-int/lit8 v11, v1, 0x2

    add-int/2addr v10, v11

    if-ge v3, v10, :cond_5d

    .line 119
    div-int/lit8 v10, v7, 0x8

    aget-byte v11, p1, v10

    rem-int/lit8 v12, v7, 0x8

    rsub-int/lit8 v12, v12, 0x7

    const/4 v13, 0x1

    shl-int v12, v13, v12

    int-to-byte v12, v12

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, p1, v10

    .line 122
    :cond_5d
    add-int/lit8 v7, v7, 0x1

    .line 110
    add-int/lit8 v5, v5, 0x2

    goto :goto_20

    .line 125
    .end local v1    # "b":B
    .end local v4    # "g":B
    .end local v8    # "r":B
    .end local v9    # "rgb":S
    :cond_62
    sub-int v10, v2, v5

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v7, v10

    .line 109
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 128
    .end local v5    # "i":I
    :cond_6a
    div-int/lit8 v10, v7, 0x8

    return v10
.end method


# virtual methods
.method public CaptureScreen()I
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public CaptureScreen2([B)I
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public CaptureScreenWithBW(B)I
    .registers 11
    .param p1, "threshold"    # B

    .prologue
    const/4 v5, 0x0

    .line 134
    iget v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureWidth:I

    iget v1, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    .line 136
    .local v2, "data":[B
    iget v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureLeft:I

    iget v1, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureTop:I

    iget v3, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureWidth:I

    iget v4, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureHeight:I

    invoke-static {v2, v0, v1, v3, v4}, Lcom/lge/android/atservice/LGATCMDNative;->capture_screen([BIIII)I

    move-result v8

    .line 138
    .local v8, "size":I
    if-gez v8, :cond_19

    .line 139
    return v5

    .line 142
    :cond_19
    mul-int/lit8 v0, v8, 0x8

    iget v1, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureWidth:I

    iget v3, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureHeight:I

    mul-int/2addr v1, v3

    div-int/2addr v0, v1

    int-to-byte v7, v0

    .line 144
    .local v7, "depth":B
    const/16 v0, 0x10

    if-ne v7, v0, :cond_4b

    .line 145
    iget v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureWidth:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v6, v0, 0x8

    .line 147
    .local v6, "bufWidth":I
    iget v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureHeight:I

    mul-int/2addr v0, v6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mScreenCaptureData:[B

    .line 148
    iget-object v1, p0, Lcom/lge/android/atservice/ScreenCapture;->mScreenCaptureData:[B

    .line 149
    iget v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureWidth:I

    mul-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureHeight:I

    move-object v0, p0

    move v5, p1

    .line 148
    invoke-direct/range {v0 .. v5}, Lcom/lge/android/atservice/ScreenCapture;->rgb565tobw([B[BIIB)I

    move-result v0

    iput v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mScreenCaptureDataSize:I

    .line 150
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureDepth:I

    .line 156
    iget v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mScreenCaptureDataSize:I

    return v0

    .line 152
    .end local v6    # "bufWidth":I
    :cond_4b
    const-string/jumbo v0, "Can not convert black&white type!"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/lge/android/atservice/ScreenCapture;->CaptureScreen()I

    move-result v0

    return v0
.end method

.method public GetScreenCaptureData()[B
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mScreenCaptureData:[B

    return-object v0
.end method

.method public GetScreenCaptureDataSize()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mScreenCaptureDataSize:I

    return v0
.end method

.method public NativeCaptureScreen([B)I
    .registers 3
    .param p1, "cmd"    # [B

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public SetCaptureRange(IIII)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureLeft:I

    .line 30
    iput p2, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureTop:I

    .line 31
    iput p3, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureWidth:I

    .line 32
    iput p4, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureHeight:I

    .line 28
    return-void
.end method

.method public getBitsPixel()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/lge/android/atservice/ScreenCapture;->mCaptureDepth:I

    return v0
.end method
