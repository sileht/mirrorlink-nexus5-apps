.class public Lcom/lge/mirrorlink/certificate/InputStreamUtil;
.super Ljava/lang/Object;
.source "InputStreamUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_Cert"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByteArrayFromInputStream(Ljava/io/InputStream;)[B
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 50
    .local v1, "data":[B
    :goto_9
    :try_start_9
    array-length v4, v1

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 51
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_9

    .line 53
    .end local v3    # "len":I
    :catch_17
    move-exception v2

    .line 54
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "getByteArrayFromInputStream, IOException:"

    invoke-static {v4, v5, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v2    # "e":Ljava/io/IOException;
    :cond_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .local v4, "sb":Ljava/lang/StringBuilder;
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_61
    .catchall {:try_start_6 .. :try_end_10} :catchall_4c

    .line 23
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2f

    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v5, "\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1f} :catch_20
    .catchall {:try_start_10 .. :try_end_1f} :catchall_5e

    goto :goto_10

    .line 27
    .end local v3    # "line":Ljava/lang/String;
    :catch_20
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 28
    .end local v1    # "br":Ljava/io/BufferedReader;
    :goto_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_4c

    .line 30
    if-eqz v0, :cond_2a

    .line 32
    :try_start_27
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_41

    .line 39
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2a
    :goto_2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 30
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2f
    if-eqz v1, :cond_34

    .line 32
    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_36

    :cond_34
    :goto_34
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_2a

    .line 33
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_36
    move-exception v2

    .line 34
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "getStringFromInputStream, IOException:"

    invoke-static {v5, v6, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34

    .line 33
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_41
    move-exception v2

    .line 34
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "getStringFromInputStream, IOException:"

    invoke-static {v5, v6, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 29
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_4c
    move-exception v5

    .line 30
    :goto_4d
    if-eqz v0, :cond_52

    .line 32
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 29
    :cond_52
    :goto_52
    throw v5

    .line 33
    :catch_53
    move-exception v2

    .line 34
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MirrorLink_Cert"

    const-string/jumbo v7, "getStringFromInputStream, IOException:"

    invoke-static {v6, v7, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_52

    .line 29
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_5e
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4d

    .line 27
    .local v0, "br":Ljava/io/BufferedReader;
    :catch_61
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_22
.end method
