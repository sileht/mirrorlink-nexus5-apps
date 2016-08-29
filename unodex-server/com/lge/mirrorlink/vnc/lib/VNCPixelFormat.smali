.class public Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
.super Ljava/lang/Object;
.source "VNCPixelFormat.java"


# static fields
.field public static final TYPE_ARGB888:I = 0x1

.field public static final TYPE_GRAY16:I = 0x7

.field public static final TYPE_GRAY8:I = 0x8

.field private static final TYPE_NAME:[Ljava/lang/String;

.field public static final TYPE_RGB343:I = 0x6

.field public static final TYPE_RGB444:I = 0x5

.field public static final TYPE_RGB555:I = 0x4

.field public static final TYPE_RGB565:I = 0x3

.field public static final TYPE_RGB888:I = 0x2

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public bigEndian:Z

.field public bitsPerPixel:I

.field public blueMax:I

.field public blueShift:I

.field public depth:I

.field public greenMax:I

.field public greenShift:I

.field private mPixelFormatType:I

.field public redMax:I

.field public redShift:I

.field public trueColour:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 41
    const-string/jumbo v1, "Unknown"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "ARGB8888"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "RGB888"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "RGB565"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "RGB555"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "RGB444"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "RGB343"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "GRAY16"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "GRAY8"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 40
    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->TYPE_NAME:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(IIZZIIIIII)V
    .registers 12
    .param p1, "bitsPerPixel"    # I
    .param p2, "depth"    # I
    .param p3, "bigEndian"    # Z
    .param p4, "trueColour"    # Z
    .param p5, "redMax"    # I
    .param p6, "greenMax"    # I
    .param p7, "blueMax"    # I
    .param p8, "redShift"    # I
    .param p9, "greenShift"    # I
    .param p10, "blueShift"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->mPixelFormatType:I

    .line 48
    iput p1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    .line 49
    iput p2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    .line 50
    iput-boolean p3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bigEndian:Z

    .line 51
    iput-boolean p4, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->trueColour:Z

    .line 52
    iput p5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    .line 53
    iput p6, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    .line 54
    iput p7, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    .line 55
    iput p8, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    .line 56
    iput p9, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    .line 57
    iput p10, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    .line 58
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->decidePixelFormatType()I

    move-result v0

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->mPixelFormatType:I

    .line 46
    return-void
.end method

.method private decidePixelFormatType()I
    .registers 8

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x5

    const/16 v4, 0x1f

    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 78
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_37

    .line 79
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_c4

    .line 80
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    if-nez v0, :cond_c4

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_37
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c4

    .line 84
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_61

    .line 85
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    if-ne v0, v4, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    if-ne v0, v4, :cond_c4

    .line 86
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    if-ne v0, v5, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    if-nez v0, :cond_c4

    .line 87
    const/4 v0, 0x3

    return v0

    .line 89
    :cond_61
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    if-ne v0, v3, :cond_81

    .line 90
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    if-ne v0, v4, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    if-ne v0, v4, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    if-ne v0, v4, :cond_c4

    .line 91
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    if-ne v0, v5, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    if-nez v0, :cond_c4

    .line 92
    const/4 v0, 0x4

    return v0

    .line 94
    :cond_81
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a3

    .line 95
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    if-ne v0, v3, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    if-ne v0, v3, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    if-ne v0, v3, :cond_c4

    .line 96
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    if-nez v0, :cond_c4

    .line 97
    return v5

    .line 99
    :cond_a3
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c4

    .line 100
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    if-ne v0, v6, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    if-ne v0, v3, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    if-ne v0, v6, :cond_c4

    .line 101
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    if-ne v0, v6, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c4

    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    if-nez v0, :cond_c4

    .line 102
    const/4 v0, 0x6

    return v0

    .line 106
    :cond_c4
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    instance-of v3, p1, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    if-nez v3, :cond_7

    .line 149
    return v2

    :cond_7
    move-object v0, p1

    .line 151
    check-cast v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    .line 152
    .local v0, "format":Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->mPixelFormatType:I

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->mPixelFormatType:I

    if-ne v3, v4, :cond_11

    .line 153
    return v1

    .line 155
    :cond_11
    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    if-ne v3, v4, :cond_50

    .line 156
    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    if-ne v3, v4, :cond_50

    .line 157
    iget-boolean v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bigEndian:Z

    iget-boolean v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bigEndian:Z

    if-ne v3, v4, :cond_50

    .line 158
    iget-boolean v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->trueColour:Z

    iget-boolean v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->trueColour:Z

    if-ne v3, v4, :cond_50

    .line 159
    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    if-ne v3, v4, :cond_50

    .line 160
    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    if-ne v3, v4, :cond_50

    .line 161
    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    if-ne v3, v4, :cond_50

    .line 162
    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    if-ne v3, v4, :cond_50

    .line 163
    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    if-ne v3, v4, :cond_50

    .line 164
    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    iget v4, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    if-ne v3, v4, :cond_4e

    .line 155
    :goto_4d
    return v1

    :cond_4e
    move v1, v2

    .line 164
    goto :goto_4d

    :cond_50
    move v1, v2

    .line 155
    goto :goto_4d
.end method

.method public getPixelFormatName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 111
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->TYPE_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->mPixelFormatType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPixelFormatType()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->mPixelFormatType:I

    return v0
.end method

.method public getPixelFormatTypes()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "BITS_PER_PIXEL"

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string/jumbo v1, "DEPTH"

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string/jumbo v1, "RED_MAX"

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string/jumbo v1, "GREEN_MAX"

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string/jumbo v1, "BLUE_MAX"

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    .line 169
    const/16 v0, 0x1f

    .line 171
    .local v0, "prime":I
    iget-boolean v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bigEndian:Z

    if-eqz v2, :cond_4c

    move v2, v3

    :goto_b
    add-int/lit8 v1, v2, 0x1f

    .line 172
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    add-int v1, v2, v5

    .line 173
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    add-int v1, v2, v5

    .line 174
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    add-int v1, v2, v5

    .line 175
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    add-int v1, v2, v5

    .line 176
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    add-int v1, v2, v5

    .line 177
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    add-int v1, v2, v5

    .line 178
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->mPixelFormatType:I

    add-int v1, v2, v5

    .line 179
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    add-int v1, v2, v5

    .line 180
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    add-int v1, v2, v5

    .line 181
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->trueColour:Z

    if-eqz v5, :cond_4e

    :goto_49
    add-int v1, v2, v3

    .line 182
    return v1

    .end local v1    # "result":I
    :cond_4c
    move v2, v4

    .line 171
    goto :goto_b

    .restart local v1    # "result":I
    :cond_4e
    move v3, v4

    .line 181
    goto :goto_49
.end method

.method public toByteArray()[B
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 118
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    iget-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bigEndian:Z

    if-eqz v1, :cond_4e

    move v1, v2

    :goto_19
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 120
    iget-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->trueColour:Z

    if-eqz v1, :cond_50

    :goto_21
    int-to-byte v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 121
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 122
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 123
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 124
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 126
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    :cond_4e
    move v1, v3

    .line 119
    goto :goto_19

    :cond_50
    move v2, v3

    .line 120
    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x29

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->getPixelFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v1, "bpp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    const-string/jumbo v2, ", depth: "

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->depth:I

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    const-string/jumbo v2, ", endian: "

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    iget-boolean v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bigEndian:Z

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    const-string/jumbo v2, ", trueColour: "

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    iget-boolean v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->trueColour:Z

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    const-string/jumbo v2, ", red: ("

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redMax:I

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    const-string/jumbo v2, ", "

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->redShift:I

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    const-string/jumbo v2, ", green: ("

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenMax:I

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    const-string/jumbo v2, ", "

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->greenShift:I

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    const-string/jumbo v2, ", blue: ("

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueMax:I

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    const-string/jumbo v2, ", "

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->blueShift:I

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
