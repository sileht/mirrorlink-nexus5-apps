.class public abstract Lcom/lge/mirrorlink/vnc/lib/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public h:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodingName(I)Ljava/lang/String;
    .registers 2
    .param p0, "encoding"    # I

    .prologue
    .line 60
    sparse-switch p0, :sswitch_data_1c

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :sswitch_8
    const-string/jumbo v0, "Raw"

    return-object v0

    .line 64
    :sswitch_c
    const-string/jumbo v0, "(Pseudo) TM"

    return-object v0

    .line 66
    :sswitch_10
    const-string/jumbo v0, "(Pseudo) ContextInformation"

    return-object v0

    .line 68
    :sswitch_14
    const-string/jumbo v0, "ScanlineBasedRLE"

    return-object v0

    .line 70
    :sswitch_18
    const-string/jumbo v0, "(Pseudo) Desktop Size"

    return-object v0

    .line 60
    :sswitch_data_1c
    .sparse-switch
        -0x20d -> :sswitch_14
        -0x20c -> :sswitch_10
        -0x20b -> :sswitch_c
        -0xdf -> :sswitch_18
        0x0 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public encode([BIILcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;IIII)V
    .registers 9
    .param p1, "image"    # [B
    .param p2, "imgW"    # I
    .param p3, "imgH"    # I
    .param p4, "pixelFormat"    # Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I

    .prologue
    .line 30
    iput p5, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->x:I

    .line 31
    iput p6, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->y:I

    .line 32
    iput p7, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->w:I

    .line 33
    iput p8, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->h:I

    .line 28
    return-void
.end method

.method public abstract getEncoding()I
.end method

.method public getEncodingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    const-string/jumbo v0, "(unknown)"

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)I
    .registers 5
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 44
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->x:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 46
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->y:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 47
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->w:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 48
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->h:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 50
    return v2
.end method
