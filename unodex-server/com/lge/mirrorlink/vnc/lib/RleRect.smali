.class public Lcom/lge/mirrorlink/vnc/lib/RleRect;
.super Lcom/lge/mirrorlink/vnc/lib/Rectangle;
.source "RleRect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_VNC"

.field private static final dumpPath:Ljava/lang/String;

.field private static final mSDCardPath:Ljava/lang/String;


# instance fields
.field private dumpNo:I

.field private mDumpEnable:Z

.field private mEncodingNumArray:[B

.field private mOutputData:[B

.field private mOutputDataLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mSDCardPath:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mSDCardPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mllog/rle/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->dumpPath:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;-><init>()V

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B

    .line 27
    iput v2, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputDataLength:I

    .line 29
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mEncodingNumArray:[B

    .line 30
    iput-boolean v2, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mDumpEnable:Z

    .line 126
    iput v2, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->dumpNo:I

    .line 34
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mEncodingNumArray:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 35
    .local v0, "wrap":Ljava/nio/ByteBuffer;
    const/16 v1, -0x20d

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 32
    return-void
.end method

.method private dump()V
    .registers 1

    .prologue
    .line 127
    return-void
.end method

.method public static native encodeNativeFromByteArray([B[BIIIIIIIZZ)I
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B

    .line 71
    return-void
.end method

.method public encode([BIILcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;IIII)V
    .registers 22
    .param p1, "image"    # [B
    .param p2, "imgW"    # I
    .param p3, "imgH"    # I
    .param p4, "pixelFormat"    # Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I

    .prologue
    .line 42
    invoke-super/range {p0 .. p8}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->encode([BIILcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;IIII)V

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputDataLength:I

    .line 45
    invoke-virtual/range {p4 .. p4}, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->getPixelFormatType()I

    move-result v9

    .line 46
    .local v9, "pixelFormatType":I
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B

    array-length v1, v1

    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_5c

    .line 47
    :cond_17
    const-string/jumbo v1, "MirrorLink_VNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Allocate RLE buffer with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " * 4 bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B

    .line 50
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    :try_start_4c
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B
    :try_end_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4c .. :try_end_50} :catch_7d

    .line 55
    :goto_50
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B

    if-nez v1, :cond_5c

    .line 57
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    :try_start_58
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B
    :try_end_5c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_58 .. :try_end_5c} :catch_9d

    .line 64
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B

    if-eqz v1, :cond_7c

    .line 65
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B

    .line 66
    move-object/from16 v0, p4

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    .line 67
    move-object/from16 v0, p4

    iget-boolean v10, v0, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bigEndian:Z

    sget-boolean v11, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->redBlueSwitched:Z

    move-object v1, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move v7, p2

    .line 65
    invoke-static/range {v1 .. v11}, Lcom/lge/mirrorlink/vnc/lib/RleRect;->encodeNativeFromByteArray([B[BIIIIIIIZZ)I

    move-result v1

    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputDataLength:I

    .line 40
    :cond_7c
    return-void

    .line 51
    :catch_7d
    move-exception v12

    .line 53
    .local v12, "oome":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v1, "MirrorLink_VNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v12}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 58
    .end local v12    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_9d
    move-exception v12

    .line 59
    .restart local v12    # "oome":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v1, "MirrorLink_VNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v12}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5c
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 120
    const/16 v0, -0x20d

    return v0
.end method

.method public getEncodingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const-string/jumbo v0, "RLE"

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputDataLength:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputDataLength:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Kbytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)I
    .registers 6
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->writeToStream(Ljava/io/OutputStream;)I

    move-result v0

    .line 84
    .local v0, "written":I
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mEncodingNumArray:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 85
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->w:I

    if-nez v1, :cond_21

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->h:I

    if-nez v1, :cond_21

    .line 86
    const-string/jumbo v1, "MirrorLink_VNC"

    const-string/jumbo v2, "MirrorLink_VNC.scanlineRLE: identical image."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 88
    add-int/lit8 v1, v0, 0x4

    return v1

    .line 90
    :cond_21
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputDataLength:I

    if-lez v1, :cond_30

    .line 91
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputData:[B

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputDataLength:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 93
    :cond_30
    iget-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mDumpEnable:Z

    if-eqz v1, :cond_37

    .line 94
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/RleRect;->dump()V

    .line 96
    :cond_37
    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/RleRect;->mOutputDataLength:I

    add-int/2addr v1, v2

    return v1
.end method
