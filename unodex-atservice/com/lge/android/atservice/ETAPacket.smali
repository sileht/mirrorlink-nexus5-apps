.class public Lcom/lge/android/atservice/ETAPacket;
.super Ljava/lang/Object;
.source "ETAPacket.java"


# instance fields
.field protected mDecodedCmd:[B

.field protected mEncodedCmd:Ljava/lang/String;

.field private mId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)V
    .registers 4
    .param p1, "encodedCmd"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/android/atservice/ETAPacket;->mEncodedCmd:Ljava/lang/String;

    .line 20
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/ETAPacket;->mDecodedCmd:[B

    .line 21
    iget-object v0, p0, Lcom/lge/android/atservice/ETAPacket;->mDecodedCmd:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    iput v0, p0, Lcom/lge/android/atservice/ETAPacket;->mId:I

    .line 17
    return-void
.end method

.method public dumpCmd()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/android/atservice/ETAPacket;->mDecodedCmd:[B

    if-eqz v0, :cond_21

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Decoded Cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/android/atservice/ETAPacket;->mDecodedCmd:[B

    invoke-static {v1}, Lcom/lge/android/atservice/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 53
    :cond_21
    return-void
.end method

.method public encode([B)V
    .registers 3
    .param p1, "decodedCmd"    # [B

    .prologue
    .line 26
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/lge/android/atservice/ETAPacket;->mId:I

    .line 27
    iput-object p1, p0, Lcom/lge/android/atservice/ETAPacket;->mDecodedCmd:[B

    .line 28
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/ETAPacket;->mEncodedCmd:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public encodeSize([BI)V
    .registers 5
    .param p1, "decodedCmd"    # [B
    .param p2, "size"    # I

    .prologue
    .line 33
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/lge/android/atservice/ETAPacket;->mId:I

    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/ETAPacket;->mEncodedCmd:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public getDecoded()[B
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/android/atservice/ETAPacket;->mDecodedCmd:[B

    return-object v0
.end method

.method public getEncoded()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/android/atservice/ETAPacket;->mEncodedCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/lge/android/atservice/ETAPacket;->mId:I

    return v0
.end method

.method public setEncoded(Ljava/lang/String;)V
    .registers 2
    .param p1, "encodedCmd"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/android/atservice/ETAPacket;->mEncodedCmd:Ljava/lang/String;

    .line 49
    return-void
.end method
