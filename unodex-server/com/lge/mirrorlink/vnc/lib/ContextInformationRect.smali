.class public Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;
.super Lcom/lge/mirrorlink/vnc/lib/Rectangle;
.source "ContextInformationRect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_VNC"


# instance fields
.field private mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/vnc/lib/ContextInformation;)V
    .registers 3
    .param p1, "contextInformation"    # Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 23
    iget v0, p1, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->x:I

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->x:I

    .line 24
    iget v0, p1, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->y:I

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->y:I

    .line 25
    iget v0, p1, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->w:I

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->w:I

    .line 26
    iget v0, p1, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->h:I

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->h:I

    .line 20
    return-void
.end method

.method private getBytes()[B
    .registers 5

    .prologue
    .line 71
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, -0x20c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget v1, v1, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appID:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 74
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-wide v2, v1, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForAppCategory:J

    long-to-int v1, v2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 75
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-wide v2, v1, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForContentCategory:J

    long-to-int v1, v2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 76
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-wide v2, v1, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appCategory:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 77
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-wide v2, v1, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->contentCategory:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 78
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-wide v2, v1, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->contentRules:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
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
    .line 31
    return-void
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 86
    const/16 v0, -0x20c

    return v0
.end method

.method public getEncodingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string/jumbo v0, "(Pseudo) Context Information"

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 65
    const/16 v0, 0x18

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 54
    const-string/jumbo v0, "ContextInformation: (%d, %d, %d, %d) pkg:%s appid: 0x%X, trustlvl: (%X, %X), category: (%08X, %08X), content rule: %X"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-object v2, v2, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->pkgName:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget v2, v2, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 56
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-wide v2, v2, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForAppCategory:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-wide v2, v2, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForContentCategory:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 57
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-wide v2, v2, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appCategory:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-wide v2, v2, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->contentCategory:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 58
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->mContextInfo:Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    iget-wide v2, v2, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->contentRules:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 54
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 39
    invoke-super {p0, p1}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->writeToStream(Ljava/io/OutputStream;)I

    move-result v0

    .line 41
    .local v0, "written":I
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 42
    add-int/lit8 v1, v0, 0x18

    return v1
.end method
