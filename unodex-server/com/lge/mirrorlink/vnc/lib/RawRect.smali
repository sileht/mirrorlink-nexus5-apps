.class public Lcom/lge/mirrorlink/vnc/lib/RawRect;
.super Lcom/lge/mirrorlink/vnc/lib/Rectangle;
.source "RawRect.java"


# static fields
.field private static emptyRect:Lcom/lge/mirrorlink/vnc/lib/RawRect;


# instance fields
.field bufdata:[B

.field private bytes:[B

.field private imgH:I

.field private imgW:I

.field private pixelFormat:Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/RawRect;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/lib/RawRect;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->emptyRect:Lcom/lge/mirrorlink/vnc/lib/RawRect;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;-><init>()V

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bufdata:[B

    .line 14
    return-void
.end method

.method public static getEmptyRect()Lcom/lge/mirrorlink/vnc/lib/RawRect;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 23
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->emptyRect:Lcom/lge/mirrorlink/vnc/lib/RawRect;

    move v3, v2

    move-object v4, v1

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/lge/mirrorlink/vnc/lib/RawRect;->encode([BIILcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;IIII)V

    .line 24
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->emptyRect:Lcom/lge/mirrorlink/vnc/lib/RawRect;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    .line 43
    return-void
.end method

.method public encode([BIILcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;IIII)V
    .registers 10
    .param p1, "image"    # [B
    .param p2, "imgW"    # I
    .param p3, "imgH"    # I
    .param p4, "pixelFormat"    # Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-super/range {p0 .. p8}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->encode([BIILcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;IIII)V

    .line 32
    iput p2, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->imgW:I

    .line 33
    iput p3, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->imgH:I

    .line 34
    iput-object p4, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->pixelFormat:Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    .line 35
    if-nez p7, :cond_13

    if-nez p8, :cond_13

    .line 36
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    .line 37
    return-void

    .line 39
    :cond_13
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    .line 29
    return-void
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getEncodingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    const-string/jumbo v0, "Raw"

    return-object v0
.end method

.method public getLength()I
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->pixelFormat:Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->pixelFormat:Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    iget v0, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->w:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->h:I

    mul-int/2addr v0, v1

    return v0

    .line 97
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Raw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    if-nez v0, :cond_29

    const/4 v0, 0x0

    :goto_20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    array-length v0, v0

    goto :goto_20
.end method

.method public writeToStream(Ljava/io/OutputStream;)I
    .registers 15
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->writeToStream(Ljava/io/OutputStream;)I

    move-result v7

    .line 52
    .local v7, "written":I
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bufdata:[B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 55
    add-int/lit8 v7, v7, 0x4

    .line 56
    iget v8, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->imgW:I

    iget v9, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->w:I

    if-ne v8, v9, :cond_7e

    iget v8, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->imgH:I

    iget v9, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->h:I

    if-ne v8, v9, :cond_7e

    .line 57
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    iget-object v9, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    array-length v9, v9

    invoke-virtual {p1, v8, v12, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    array-length v8, v8

    add-int/2addr v7, v8

    .line 59
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Raw Rect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->w:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->h:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") write:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_7d
    return v7

    .line 61
    :cond_7e
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->pixelFormat:Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    iget v8, v8, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    div-int/lit8 v1, v8, 0x8

    .line 62
    .local v1, "bytesPerPixel":I
    iget v8, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->imgW:I

    mul-int v4, v8, v1

    .line 63
    .local v4, "imgStride":I
    iget v8, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->w:I

    mul-int v5, v8, v1

    .line 64
    .local v5, "rectStride":I
    iget v3, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->y:I

    .local v3, "i":I
    :goto_8e
    iget v8, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->y:I

    iget v9, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->h:I

    add-int/2addr v8, v9

    if-ge v3, v8, :cond_7d

    .line 65
    mul-int v8, v3, v4

    iget v9, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->x:I

    mul-int/2addr v9, v1

    add-int v6, v8, v9

    .line 66
    .local v6, "start":I
    add-int v8, v6, v5

    iget-object v9, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    array-length v9, v9

    if-le v8, v9, :cond_102

    .line 67
    const-string/jumbo v8, "RawRect: array index error. (x, y, w, h) = (%d, %d, %d, %d)\nimgW: %d, imgH: %d, bytes.length: %d, bytesPerPixel: %d, i: %d"

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Object;

    .line 69
    iget v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    iget v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->w:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    iget v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->h:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    iget v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->imgW:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v9, v11

    iget v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->imgH:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v9, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v9, v11

    .line 67
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "errmsg":Ljava/lang/String;
    const-string/jumbo v8, "MirrorLink_VNC"

    invoke-static {v8, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v2    # "errmsg":Ljava/lang/String;
    :cond_102
    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/RawRect;->bytes:[B

    invoke-virtual {p1, v8, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 73
    add-int/2addr v7, v5

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e
.end method
