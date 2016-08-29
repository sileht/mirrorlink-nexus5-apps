.class public Lcom/lge/mirrorlinkcertupdate/CrtUpdater;
.super Ljava/lang/Object;
.source "CrtUpdater.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrtUpdater"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsboundTZMirrorLinkService:Z

.field private mTZMirrorLinkInterfaceService:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mTZMirrorLinkInterfaceService:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mIsboundTZMirrorLinkService:Z

    .line 26
    iput-object p1, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-direct {v0, p1}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mTZMirrorLinkInterfaceService:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    .line 25
    return-void
.end method

.method private initCrtFiles()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5e

    .line 32
    sget-object v1, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 33
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/misc/mirrorlink/"

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".crt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, v1, v2}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->writeResfile(Ljava/lang/String;Ljava/io/File;)V

    .line 35
    sget-object v1, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 36
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/misc/mirrorlink/"

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".crt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".update.20150317"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, v1, v2}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->writeResfile(Ljava/lang/String;Ljava/io/File;)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :cond_5e
    return-void
.end method

.method private writeResfile(Ljava/lang/String;Ljava/io/File;)V
    .registers 12
    .param p1, "crtFileName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 177
    const-string/jumbo v4, "CrtUpdater"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeResfile() filename="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v4, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 179
    iget-object v5, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 181
    const-string/jumbo v6, "raw"

    iget-object v7, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-virtual {v5, p1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 178
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 182
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 184
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 186
    .local v0, "buf":[B
    :goto_45
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_4f

    .line 187
    invoke-virtual {v3, v0, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_45

    .line 189
    :cond_4f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 190
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 176
    return-void
.end method


# virtual methods
.method public bindTZMirrorLinkService()Z
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mTZMirrorLinkInterfaceService:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->bindTzMlService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mIsboundTZMirrorLinkService:Z

    .line 63
    iget-boolean v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mIsboundTZMirrorLinkService:Z

    if-nez v0, :cond_15

    .line 64
    const-string/jumbo v0, "CrtUpdater"

    const-string/jumbo v1, "TZMirrorLinkInterfaceService connection fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_15
    iget-boolean v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mIsboundTZMirrorLinkService:Z

    return v0
.end method

.method public isEnableCrt()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 42
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/data/misc/mirrorlink/"

    const-string/jumbo v5, "device.cert.enable"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_23

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 45
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 46
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 47
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 48
    return v6

    .line 51
    .end local v2    # "out":Ljava/io/OutputStream;
    :cond_23
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 53
    .local v3, "result":I
    const/16 v4, 0x31

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_3a

    .line 54
    const/4 v4, 0x1

    return v4

    .line 56
    :cond_3a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 58
    return v6
.end method

.method public isNewerVersion()Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v8, 0x0

    .line 90
    .local v8, "isNewer":Z
    new-instance v3, Ljava/io/File;

    const-string/jumbo v13, "/data/misc/mirrorlink/"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, "dirfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 93
    .local v6, "files":[Ljava/io/File;
    if-nez v6, :cond_1a

    .line 94
    const-string/jumbo v13, "CrtUpdater"

    const-string/jumbo v14, "/data/misc/mirrorlink not found"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v13, 0x0

    return v13

    .line 98
    :cond_1a
    array-length v13, v6

    if-nez v13, :cond_2b

    .line 99
    const-string/jumbo v13, "CrtUpdater"

    const-string/jumbo v14, "isNewerVersion()==false, init files"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->initCrtFiles()V

    .line 101
    const/4 v13, 0x0

    return v13

    .line 105
    :cond_2b
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2c
    sget-object v13, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    array-length v13, v13

    if-ge v7, v13, :cond_146

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "crt_file_exists":Z
    const/4 v11, 0x0

    .line 108
    .local v11, "update_file_exists":Z
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".crt"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "crt_filename":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".crt"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".update"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, "update_filename":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_6b
    array-length v13, v6

    if-ge v9, v13, :cond_86

    .line 111
    aget-object v13, v6, v9

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "filename":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7e

    .line 113
    const/4 v1, 0x1

    .line 110
    :cond_7b
    :goto_7b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    .line 114
    :cond_7e
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7b

    .line 115
    const/4 v11, 0x1

    goto :goto_7b

    .line 119
    .end local v5    # "filename":Ljava/lang/String;
    :cond_86
    if-nez v1, :cond_dd

    .line 120
    const-string/jumbo v13, "CrtUpdater"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isNewerVersion(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".crt"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is not found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v13, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v13, v13, v7

    .line 122
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/data/misc/mirrorlink/"

    .line 123
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ".crt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 122
    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->writeResfile(Ljava/lang/String;Ljava/io/File;)V

    .line 125
    :cond_dd
    if-nez v11, :cond_142

    .line 126
    const-string/jumbo v13, "CrtUpdater"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isNewerVersion(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 127
    const-string/jumbo v15, ".crt"

    .line 126
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 127
    const-string/jumbo v15, ".update.20150317"

    .line 126
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 127
    const-string/jumbo v15, " is not found"

    .line 126
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v13, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v13, v13, v7

    .line 129
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/data/misc/mirrorlink/"

    .line 130
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ".crt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ".update.20150317"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 129
    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->writeResfile(Ljava/lang/String;Ljava/io/File;)V

    .line 105
    :cond_142
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2c

    .line 136
    .end local v1    # "crt_file_exists":Z
    .end local v2    # "crt_filename":Ljava/lang/String;
    .end local v9    # "j":I
    .end local v11    # "update_file_exists":Z
    .end local v12    # "update_filename":Ljava/lang/String;
    :cond_146
    const/4 v7, 0x0

    :goto_147
    array-length v13, v6

    if-ge v7, v13, :cond_187

    .line 137
    aget-object v4, v6, v7

    .line 138
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 139
    .restart local v5    # "filename":Ljava/lang/String;
    const-string/jumbo v13, ".update"

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 140
    .local v10, "str_index":I
    if-lez v10, :cond_184

    const-string/jumbo v13, ".update.20150317"

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_184

    .line 141
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 142
    const-string/jumbo v13, "CrtUpdater"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "delete file="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v8, 0x1

    .line 136
    :cond_184
    add-int/lit8 v7, v7, 0x1

    goto :goto_147

    .line 146
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v10    # "str_index":I
    :cond_187
    const-string/jumbo v13, "CrtUpdater"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isNewerVersion()=="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v8
.end method

.method public setTZMirrorLinkConnCallback(Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;)V
    .registers 3
    .param p1, "conn"    # Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mTZMirrorLinkInterfaceService:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->setCallback(Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;)V

    .line 193
    return-void
.end method

.method public unbindTZMirrorLinkService()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mTZMirrorLinkInterfaceService:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    if-eqz v0, :cond_c

    .line 71
    iget-object v0, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mTZMirrorLinkInterfaceService:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->unbindTzMlService()V

    .line 72
    iput-object v1, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mTZMirrorLinkInterfaceService:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    .line 69
    :cond_c
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "crtFileName"    # Ljava/lang/String;
    .param p2, "destDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".crt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v0, "dstFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 81
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".crt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->writeResfile(Ljava/lang/String;Ljava/io/File;)V

    .line 84
    :cond_3e
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".crt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".update.20150317"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->writeResfile(Ljava/lang/String;Ljava/io/File;)V

    .line 85
    const/4 v1, 0x1

    return v1
.end method

.method public verifyPrivateKey()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x30

    const/4 v5, -0x2

    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "rt":I
    iget-boolean v3, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mIsboundTZMirrorLinkService:Z

    if-nez v3, :cond_12

    .line 153
    const-string/jumbo v3, "CrtUpdater"

    const-string/jumbo v4, "TZMirrorLinkInterfaceService connection fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v5

    .line 157
    :cond_12
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/misc/mirrorlink/"

    const-string/jumbo v4, "device.cert.enable"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 159
    .local v1, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->mTZMirrorLinkInterfaceService:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->tzVerifyPrivateKeyPair()I

    move-result v2

    .line 161
    if-nez v2, :cond_3c

    .line 162
    const-string/jumbo v3, "CrtUpdater"

    const-string/jumbo v4, "verifyPrivateKey():RESULT_SUCCESS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 171
    :cond_38
    :goto_38
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 173
    return v2

    .line 164
    :cond_3c
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4c

    .line 165
    const-string/jumbo v3, "CrtUpdater"

    const-string/jumbo v4, "verifyPrivateKey():RESULT_FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write(I)V

    goto :goto_38

    .line 167
    :cond_4c
    if-ne v2, v5, :cond_38

    .line 168
    const-string/jumbo v3, "CrtUpdater"

    const-string/jumbo v4, "verifyPrivateKey():RESULT_SERVICE_FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write(I)V

    goto :goto_38
.end method
