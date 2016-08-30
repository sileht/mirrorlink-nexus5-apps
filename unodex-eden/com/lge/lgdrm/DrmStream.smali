.class public final Lcom/lge/lgdrm/DrmStream;
.super Ljava/io/InputStream;
.source "DrmStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmStream"


# instance fields
.field private b:[B

.field protected filename:Ljava/lang/String;

.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;J)V
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "nativeHandle"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    .line 51
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_16

    .line 52
    const-string v0, "DrmStream"

    const-string v1, "DrmStream() : Invalid native handle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_15
    return-void

    .line 56
    :cond_16
    iput-object p1, p0, Lcom/lge/lgdrm/DrmStream;->filename:Ljava/lang/String;

    .line 57
    iput-wide p2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    goto :goto_15
.end method

.method private native nativeAvailable(J)I
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeRead(J[BII)I
.end method

.method private native nativeSkip(JJ)J
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 73
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_10
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmStream;->nativeAvailable(J)I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 87
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_10
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmStream;->nativeClose(J)V

    .line 92
    iput-wide v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    .line 93
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lge/lgdrm/DrmStream;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    .prologue
    .line 97
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 118
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 119
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File was not opened properly"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_12
    iget-object v2, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v6, v3}, Lcom/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    .line 123
    .local v0, "nRead":I
    if-ne v0, v1, :cond_1c

    .line 127
    :goto_1b
    return v1

    :cond_1c
    iget-object v1, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    goto :goto_1b
.end method

.method public read([B)I
    .registers 6
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 142
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_10
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 14
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "nRead":I
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_11

    .line 171
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File was not opened properly"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_11
    if-nez p1, :cond_1b

    .line 175
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "parameter b is NULL"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1b
    or-int v1, p2, p3

    if-ltz v1, :cond_23

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_29

    .line 178
    :cond_23
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 181
    :cond_29
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lge/lgdrm/DrmStream;->nativeRead(J[BII)I

    move-result v0

    .line 182
    if-nez v0, :cond_37

    .line 184
    const/4 v0, -0x1

    .line 191
    .end local v0    # "nRead":I
    :cond_36
    return v0

    .line 185
    .restart local v0    # "nRead":I
    :cond_37
    if-gez v0, :cond_36

    .line 186
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    invoke-direct {p0, v2, v3}, Lcom/lge/lgdrm/DrmStream;->nativeClose(J)V

    .line 187
    iput-wide v8, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    .line 188
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method public declared-synchronized reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 204
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 205
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmStream;->nativeClose(J)V

    .line 206
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    .line 209
    :cond_12
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    .line 204
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 224
    iget-wide v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_10

    .line 225
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_10
    cmp-long v2, p1, v0

    if-gtz v2, :cond_15

    .line 236
    :goto_14
    return-wide v0

    :cond_15
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lge/lgdrm/DrmStream;->nativeSkip(JJ)J

    move-result-wide v0

    goto :goto_14
.end method
