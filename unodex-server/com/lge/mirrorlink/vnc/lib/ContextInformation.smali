.class public Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
.super Ljava/lang/Object;
.source "ContextInformation.java"


# instance fields
.field public appCategory:J

.field public appID:I

.field public contentCategory:J

.field public contentRules:J

.field public h:I

.field public pkgName:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public trustLvlForAppCategory:J

.field public trustLvlForContentCategory:J

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V
    .registers 20
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "appID"    # I
    .param p4, "trustLvlForAppCategory"    # J
    .param p6, "trustLvlForContentCategory"    # J
    .param p8, "appCategory"    # J
    .param p10, "contentCategory"    # J
    .param p12, "contentRules"    # J
    .param p14, "x"    # I
    .param p15, "y"    # I
    .param p16, "w"    # I
    .param p17, "h"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->pkgName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->title:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appID:I

    .line 29
    iput-wide p4, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForAppCategory:J

    .line 30
    iput-wide p6, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForContentCategory:J

    .line 31
    iput-wide p8, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appCategory:J

    .line 32
    iput-wide p10, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->contentCategory:J

    .line 33
    iput-wide p12, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->contentRules:J

    .line 34
    move/from16 v0, p14

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->x:I

    .line 35
    move/from16 v0, p15

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->y:I

    .line 36
    move/from16 v0, p16

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->w:I

    .line 37
    move/from16 v0, p17

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->h:I

    .line 24
    return-void
.end method


# virtual methods
.method public getBytesWithoutHeader()[B
    .registers 5

    .prologue
    .line 64
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->x:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 66
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->y:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 67
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->w:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 68
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->h:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 69
    const/16 v1, -0x20c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 70
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appID:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForAppCategory:J

    long-to-int v1, v2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 72
    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForContentCategory:J

    long-to-int v1, v2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 73
    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appCategory:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 74
    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->contentCategory:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->contentRules:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public setTrustLevel(IJJJ)V
    .registers 8
    .param p1, "appid"    # I
    .param p2, "trustLvlForAppCategory"    # J
    .param p4, "trustLvlForContentCategory"    # J
    .param p6, "contentRules"    # J

    .prologue
    .line 42
    iput p1, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appID:I

    .line 43
    iput-wide p2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForAppCategory:J

    .line 44
    iput-wide p4, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForContentCategory:J

    .line 45
    iput-wide p6, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->contentRules:J

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UniqueAppID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v1, ", pkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v1, ", TrustLevel (App): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForAppCategory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v1, ", TrustLevel (Content): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->trustLvlForContentCategory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v1, ", AppCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appCategory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, ", ContentCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->contentCategory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v1, ", position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
