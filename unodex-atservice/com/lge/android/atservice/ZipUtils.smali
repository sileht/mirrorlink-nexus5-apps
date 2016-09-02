.class public Lcom/lge/android/atservice/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final COMPRESSION_LEVEL:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v4, "sourceFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 35
    :cond_11
    const/4 v2, 0x0

    .line 36
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 37
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 40
    .local v5, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_14
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_4c

    .line 41
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_19
    new-instance v1, Ljava/io/BufferedOutputStream;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_63

    .line 42
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1e
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    invoke-direct {v6, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_66

    .line 43
    .local v6, "zos":Ljava/util/zip/ZipOutputStream;
    const/4 v7, 0x1

    :try_start_24
    invoke-virtual {v6, v7}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 44
    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    invoke-static {v4, p0, v6}, Lcom/lge/android/atservice/ZipUtils;->zipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 45
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_6a

    .line 47
    const-string/jumbo v7, "(MTS)Logsave zip complete"

    invoke-static {v7}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 48
    if-eqz v6, :cond_38

    .line 49
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 51
    :cond_38
    if-eqz v1, :cond_3d

    .line 52
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 54
    :cond_3d
    if-eqz v3, :cond_42

    .line 55
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 27
    :cond_42
    return-void

    .line 32
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_43
    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "Can not Find File or Directory!"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 46
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_4c
    move-exception v7

    .line 47
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_4d
    const-string/jumbo v8, "(MTS)Logsave zip complete"

    invoke-static {v8}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 48
    if-eqz v5, :cond_58

    .line 49
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 51
    :cond_58
    if-eqz v0, :cond_5d

    .line 52
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 54
    :cond_5d
    if-eqz v2, :cond_62

    .line 55
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 46
    :cond_62
    throw v7

    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_63
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_4d

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_66
    move-exception v7

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4d

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_6a
    move-exception v7

    move-object v5, v6

    .end local v6    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v5, "zos":Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4d
.end method

.method private static zipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .registers 15
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "zos"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ".metadata"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 72
    return-void

    .line 74
    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 75
    .local v5, "fileArray":[Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_19
    array-length v10, v5

    if-ge v6, v10, :cond_88

    .line 76
    aget-object v10, v5, v6

    invoke-static {v10, p1, p2}, Lcom/lge/android/atservice/ZipUtils;->zipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 79
    .end local v5    # "fileArray":[Ljava/io/File;
    .end local v6    # "i":I
    :cond_24
    const/4 v0, 0x0

    .line 81
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_25
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "sFilePath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sFile Paht : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "zipEntryName":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_58} :catch_9c
    .catchall {:try_start_25 .. :try_end_58} :catchall_92

    .line 86
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_58
    new-instance v8, Ljava/util/zip/ZipEntry;

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    invoke-direct {v8, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 87
    .local v8, "zentry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 88
    invoke-virtual {p2, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 90
    const/16 v10, 0x800

    new-array v2, v10, [B

    .line 91
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 92
    .local v3, "cnt":I
    :goto_6c
    const/4 v10, 0x0

    const/16 v11, 0x800

    invoke-virtual {v1, v2, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_89

    .line 93
    const/4 v10, 0x0

    invoke-virtual {p2, v2, v10, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_7a} :catch_7b
    .catchall {:try_start_58 .. :try_end_7a} :catchall_99

    goto :goto_6c

    .line 96
    .end local v2    # "buffer":[B
    .end local v3    # "cnt":I
    .end local v8    # "zentry":Ljava/util/zip/ZipEntry;
    :catch_7b
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    move-object v0, v1

    .line 97
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "sFilePath":Ljava/lang/String;
    .end local v9    # "zipEntryName":Ljava/lang/String;
    :goto_7d
    :try_start_7d
    const-string/jumbo v10, "Write Zip Fail. But Go On...."

    invoke-static {v10}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_92

    .line 99
    if-eqz v0, :cond_88

    .line 100
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 67
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_88
    :goto_88
    return-void

    .line 95
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "cnt":I
    .restart local v7    # "sFilePath":Ljava/lang/String;
    .restart local v8    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipEntryName":Ljava/lang/String;
    :cond_89
    :try_start_89
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_7b
    .catchall {:try_start_89 .. :try_end_8c} :catchall_99

    .line 99
    if-eqz v1, :cond_88

    .line 100
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_88

    .line 98
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "cnt":I
    .end local v7    # "sFilePath":Ljava/lang/String;
    .end local v8    # "zentry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipEntryName":Ljava/lang/String;
    :catchall_92
    move-exception v10

    .line 99
    :goto_93
    if-eqz v0, :cond_98

    .line 100
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 98
    :cond_98
    throw v10

    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "sFilePath":Ljava/lang/String;
    .restart local v9    # "zipEntryName":Ljava/lang/String;
    :catchall_99
    move-exception v10

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v0, "bis":Ljava/io/BufferedInputStream;
    goto :goto_93

    .line 96
    .end local v7    # "sFilePath":Ljava/lang/String;
    .end local v9    # "zipEntryName":Ljava/lang/String;
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :catch_9c
    move-exception v4

    .restart local v4    # "ex":Ljava/lang/Exception;
    goto :goto_7d
.end method
