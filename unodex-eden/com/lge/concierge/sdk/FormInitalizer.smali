.class public Lcom/lge/concierge/sdk/FormInitalizer;
.super Ljava/lang/Object;
.source "FormInitalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;
    }
.end annotation


# static fields
.field private static final EXTENSION_HTM:Ljava/lang/String; = ".html"

.field private static final EXTENSION_HTML:Ljava/lang/String; = ".htm"

.field private static final EXTENSION_ZIP:Ljava/lang/String; = ".zip"

.field private static final SUFFIX_FORM_DIR:Ljava/lang/String; = "for_lg_board"

.field private static final TAG:Ljava/lang/String; = "LGBoardSDK"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/io/File;)Z
    .registers 2

    .prologue
    .line 289
    invoke-static {p0}, Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .registers 4

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Lcom/lge/concierge/sdk/FormInitalizer;->copyZipFileToPrivateStorage(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 4

    .prologue
    .line 137
    invoke-static {p0, p1, p2}, Lcom/lge/concierge/sdk/FormInitalizer;->extractZipFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/lge/concierge/sdk/FormInitalizer;->setExecutableParentDirs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 174
    invoke-static {p0, p1}, Lcom/lge/concierge/sdk/FormInitalizer;->getHtmlPath(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static closeSilently(Ljava/io/InputStream;)V
    .registers 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 312
    if-eqz p0, :cond_6

    .line 314
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    .line 315
    const/4 p0, 0x0

    .line 320
    :cond_6
    :goto_6
    return-void

    .line 316
    :catch_7
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method private static closeSilently(Ljava/io/OutputStream;)V
    .registers 2
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 323
    if-eqz p0, :cond_9

    .line 325
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 326
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_a

    .line 327
    const/4 p0, 0x0

    .line 332
    :cond_9
    :goto_9
    return-void

    .line 328
    :catch_a
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static convertToPublishableHtml(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "callback"    # Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/concierge/sdk/FormInitalizer$1;

    invoke-direct {v1, p3, p1, p0, p2}, Lcom/lge/concierge/sdk/FormInitalizer$1;-><init>(Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;Ljava/lang/String;Landroid/content/Context;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    return-void
.end method

.method private static copyZipFileToPrivateStorage(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;

    .prologue
    .line 116
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-static {p1}, Lcom/lge/concierge/sdk/FormInitalizer;->getZipFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v5, "zipFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 118
    .local v2, "output":Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 119
    .local v0, "data":[B
    const/4 v4, 0x0

    .line 122
    .local v4, "size":I
    :try_start_13
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_44
    .catchall {:try_start_13 .. :try_end_18} :catchall_39

    .line 124
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .local v3, "output":Ljava/io/FileOutputStream;
    :goto_18
    :try_start_18
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_2c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_41

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_27

    .line 132
    invoke-static {p2}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/InputStream;)V

    .line 133
    invoke-static {v3}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 130
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .end local v5    # "zipFile":Ljava/io/File;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :goto_26
    return-object v5

    .line 125
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "zipFile":Ljava/io/File;
    :cond_27
    const/4 v6, 0x0

    :try_start_28
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_41

    goto :goto_18

    .line 128
    :catch_2c
    move-exception v1

    move-object v2, v3

    .line 129
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .local v1, "ioe":Ljava/io/IOException;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 132
    invoke-static {p2}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/InputStream;)V

    .line 133
    invoke-static {v2}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/OutputStream;)V

    .line 130
    const/4 v5, 0x0

    goto :goto_26

    .line 131
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_39
    move-exception v6

    .line 132
    :goto_3a
    invoke-static {p2}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/InputStream;)V

    .line 133
    invoke-static {v2}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/OutputStream;)V

    .line 134
    throw v6

    .line 131
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :catchall_41
    move-exception v6

    move-object v2, v3

    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    goto :goto_3a

    .line 128
    :catch_44
    move-exception v1

    goto :goto_2e
.end method

.method private static deleteAllFiles(Ljava/io/File;)Z
    .registers 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 290
    const/4 v0, 0x1

    .line 292
    .local v0, "result":Z
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    .line 293
    :cond_9
    const/4 v3, 0x1

    .line 308
    :goto_a
    return v3

    .line 296
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 297
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 299
    .local v2, "subFiles":[Ljava/io/File;
    if-eqz v2, :cond_1b

    .line 300
    array-length v4, v2

    const/4 v3, 0x0

    :goto_19
    if-lt v3, v4, :cond_22

    .line 306
    .end local v2    # "subFiles":[Ljava/io/File;
    :cond_1b
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    and-int/2addr v0, v3

    move v3, v0

    .line 308
    goto :goto_a

    .line 300
    .restart local v2    # "subFiles":[Ljava/io/File;
    :cond_22
    aget-object v1, v2, v3

    .line 301
    .local v1, "subFile":Ljava/io/File;
    invoke-static {v1}, Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_19
.end method

.method private static extractZipFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "zipFile"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 138
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move-object v0, v2

    .line 154
    :cond_10
    :goto_10
    return-object v0

    .line 142
    :cond_11
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-static {p1}, Lcom/lge/concierge/sdk/FormInitalizer;->getUnzipDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v0, "formDir":Ljava/io/File;
    const/4 v1, 0x1

    .line 145
    .local v1, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 146
    invoke-static {v0}, Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 149
    :cond_2a
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    and-int/2addr v1, v3

    .line 151
    if-eqz v1, :cond_37

    invoke-static {p2, v0}, Lcom/lge/concierge/sdk/FormInitalizer;->unzip(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_37
    move-object v0, v2

    .line 154
    goto :goto_10
.end method

.method private static getHtmlPath(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 175
    if-nez p1, :cond_5

    move-object v1, v3

    .line 197
    :cond_4
    :goto_4
    return-object v1

    .line 179
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".htm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 181
    :cond_23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 183
    :cond_28
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, "htmlPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 186
    .local v0, "fileList":[Ljava/io/File;
    if-eqz v0, :cond_39

    .line 187
    array-length v5, v0

    const/4 v4, 0x0

    :goto_37
    if-lt v4, v5, :cond_3b

    .end local v0    # "fileList":[Ljava/io/File;
    .end local v1    # "htmlPath":Ljava/lang/String;
    :cond_39
    move-object v1, v3

    .line 197
    goto :goto_4

    .line 187
    .restart local v0    # "fileList":[Ljava/io/File;
    .restart local v1    # "htmlPath":Ljava/lang/String;
    :cond_3b
    aget-object v2, v0, v4

    .line 188
    .local v2, "subFile":Ljava/io/File;
    invoke-static {p0, v2}, Lcom/lge/concierge/sdk/FormInitalizer;->getHtmlPath(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 190
    if-nez v1, :cond_4

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_37
.end method

.method private static getUnzipDirName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, "dirName":Ljava/lang/StringBuilder;
    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, "for_lg_board"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getZipFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v0, "fileName":Ljava/lang/StringBuilder;
    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static setExecutableParentDirs(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "fromPath"    # Ljava/lang/String;
    .param p1, "toPath"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "from":Ljava/io/File;
    const/4 v1, 0x1

    .line 162
    .local v1, "result":Z
    :goto_6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 171
    return v1

    .line 163
    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    and-int/2addr v1, v2

    .line 167
    :cond_1c
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v2

    and-int/2addr v1, v2

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_6
.end method

.method private static unzip(Ljava/io/File;Ljava/io/File;)Z
    .registers 16
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "unzipDir"    # Ljava/io/File;

    .prologue
    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 224
    .local v9, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .line 225
    .local v8, "zentry":Ljava/util/zip/ZipEntry;
    const/4 v7, 0x0

    .line 226
    .local v7, "unZipFile":Ljava/io/File;
    const/4 v4, 0x1

    .line 229
    .local v4, "result":Z
    const/4 v1, 0x0

    .line 230
    .local v1, "fileNameToUnzip":Ljava/lang/String;
    const/4 v5, 0x0

    .line 232
    .local v5, "targetFile":Ljava/io/File;
    :try_start_7
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_6e
    .catchall {:try_start_7 .. :try_end_c} :catchall_92

    .line 233
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_c
    new-instance v10, Ljava/util/zip/ZipInputStream;

    invoke-direct {v10, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_a6
    .catchall {:try_start_c .. :try_end_11} :catchall_9a

    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .local v10, "zis":Ljava/util/zip/ZipInputStream;
    move-object v6, v5

    .line 235
    .end local v5    # "targetFile":Ljava/io/File;
    .local v6, "targetFile":Ljava/io/File;
    :goto_12
    :try_start_12
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_a9
    .catchall {:try_start_12 .. :try_end_15} :catchall_9d

    move-result-object v8

    if-nez v8, :cond_23

    .line 264
    invoke-static {v10}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/InputStream;)V

    .line 265
    invoke-static {v3}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/InputStream;)V

    move-object v5, v6

    .end local v6    # "targetFile":Ljava/io/File;
    .restart local v5    # "targetFile":Ljava/io/File;
    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move v11, v4

    .line 268
    :goto_22
    return v11

    .line 236
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "targetFile":Ljava/io/File;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_23
    :try_start_23
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 237
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2c} :catch_a9
    .catchall {:try_start_23 .. :try_end_2c} :catchall_9d

    .line 239
    .end local v6    # "targetFile":Ljava/io/File;
    .restart local v5    # "targetFile":Ljava/io/File;
    :try_start_2c
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_45

    .line 240
    invoke-static {v5}, Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z

    move-result v11

    and-int/2addr v4, v11

    .line 241
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v11

    and-int/2addr v4, v11

    .line 242
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v11

    and-int/2addr v4, v11

    move-object v6, v5

    .line 243
    .end local v5    # "targetFile":Ljava/io/File;
    .restart local v6    # "targetFile":Ljava/io/File;
    goto :goto_12

    .line 244
    .end local v6    # "targetFile":Ljava/io/File;
    .restart local v5    # "targetFile":Ljava/io/File;
    :cond_45
    invoke-static {v5}, Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z

    move-result v11

    and-int/2addr v4, v11

    .line 246
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 246
    invoke-static {v11, v12}, Lcom/lge/concierge/sdk/FormInitalizer;->setExecutableParentDirs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    and-int/2addr v4, v11

    .line 248
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v11

    and-int/2addr v4, v11

    .line 250
    invoke-static {v10, v5}, Lcom/lge/concierge/sdk/FormInitalizer;->unzipEntry(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 252
    if-eqz v7, :cond_6b

    .line 253
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_67} :catch_ae
    .catchall {:try_start_2c .. :try_end_67} :catchall_a2

    move-result v11

    and-int/2addr v4, v11

    move-object v6, v5

    .line 254
    .end local v5    # "targetFile":Ljava/io/File;
    .restart local v6    # "targetFile":Ljava/io/File;
    goto :goto_12

    .line 255
    .end local v6    # "targetFile":Ljava/io/File;
    .restart local v5    # "targetFile":Ljava/io/File;
    :cond_6b
    const/4 v4, 0x0

    move-object v6, v5

    .end local v5    # "targetFile":Ljava/io/File;
    .restart local v6    # "targetFile":Ljava/io/File;
    goto :goto_12

    .line 259
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "targetFile":Ljava/io/File;
    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "targetFile":Ljava/io/File;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_6e
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    :goto_6f
    :try_start_6f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    const-string v11, "LGBoardSDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[FAILED] Extract the file > "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_6f .. :try_end_8a} :catchall_92

    .line 264
    invoke-static {v9}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/InputStream;)V

    .line 265
    invoke-static {v2}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/InputStream;)V

    .line 262
    const/4 v11, 0x0

    goto :goto_22

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_92
    move-exception v11

    .line 264
    :goto_93
    invoke-static {v9}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/InputStream;)V

    .line 265
    invoke-static {v2}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/InputStream;)V

    .line 266
    throw v11

    .line 263
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_9a
    move-exception v11

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_93

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "targetFile":Ljava/io/File;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_9d
    move-exception v11

    move-object v5, v6

    .end local v6    # "targetFile":Ljava/io/File;
    .restart local v5    # "targetFile":Ljava/io/File;
    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_93

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_a2
    move-exception v11

    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_93

    .line 259
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_a6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6f

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "targetFile":Ljava/io/File;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_a9
    move-exception v0

    move-object v5, v6

    .end local v6    # "targetFile":Ljava/io/File;
    .restart local v5    # "targetFile":Ljava/io/File;
    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6f

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_ae
    move-exception v0

    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6f
.end method

.method private static unzipEntry(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Ljava/io/File;
    .registers 7
    .param p0, "zis"    # Ljava/util/zip/ZipInputStream;
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 275
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_21

    .line 277
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    :try_start_8
    new-array v0, v4, [B

    .line 278
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 279
    .local v3, "len":I
    :goto_b
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipInputStream;->read([B)I
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1b

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    .line 283
    invoke-static {v2}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/OutputStream;)V

    .line 286
    return-object p1

    .line 280
    :cond_16
    const/4 v4, 0x0

    :try_start_17
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 282
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    :catchall_1b
    move-exception v4

    move-object v1, v2

    .line 283
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_1d
    invoke-static {v1}, Lcom/lge/concierge/sdk/FormInitalizer;->closeSilently(Ljava/io/OutputStream;)V

    .line 284
    throw v4

    .line 282
    :catchall_21
    move-exception v4

    goto :goto_1d
.end method
