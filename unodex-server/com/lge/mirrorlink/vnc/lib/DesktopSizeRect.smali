.class public Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;
.super Lcom/lge/mirrorlink/vnc/lib/Rectangle;
.source "DesktopSizeRect.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MirrorLink_VNC"


# instance fields
.field bufdata:[B


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "newW"    # I
    .param p2, "newH"    # I

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->bufdata:[B

    .line 19
    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->x:I

    .line 20
    iput v1, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->y:I

    .line 21
    iput p1, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->w:I

    .line 22
    iput p2, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->h:I

    .line 17
    return-void

    .line 33
    nop

    :array_16
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        0x21t
    .end array-data
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
    .line 29
    invoke-super/range {p0 .. p8}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->encode([BIILcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;IIII)V

    .line 27
    return-void
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 69
    const/16 v0, -0xdf

    return v0
.end method

.method public getEncodingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const-string/jumbo v0, "(Pseudo) Desktop Size"

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DesktopSizePseudoEncoding: x("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->x:I

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    const-string/jumbo v2, "), y("

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->y:I

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    const-string/jumbo v2, "), w("

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->w:I

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    const-string/jumbo v2, "), h("

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->h:I

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    const/16 v2, 0x29

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToStream(Ljava/io/OutputStream;)I
    .registers 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->writeToStream(Ljava/io/OutputStream;)I

    move-result v0

    .line 38
    .local v0, "written":I
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->bufdata:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 39
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;->bufdata:[B

    array-length v1, v1

    add-int/2addr v1, v0

    return v1
.end method
