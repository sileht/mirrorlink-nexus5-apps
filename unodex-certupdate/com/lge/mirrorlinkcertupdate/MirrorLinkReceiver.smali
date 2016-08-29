.class public Lcom/lge/mirrorlinkcertupdate/MirrorLinkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLinkReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLinkReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlinkcertupdate/MirrorLinkReceiver;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 58
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_3f

    .line 59
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_7
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_41

    .line 60
    .local v6, "os":Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_e
    new-array v0, v7, [B

    .line 62
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v0, "buf":[B
    :goto_10
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_2e

    .line 63
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1b

    goto :goto_10

    .line 65
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    :catchall_1b
    move-exception v7

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    move-object v3, v4

    .line 66
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    :goto_1e
    if-eqz v3, :cond_23

    .line 67
    :try_start_20
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 70
    :cond_23
    if-eqz v5, :cond_28

    .line 71
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 65
    :cond_28
    throw v7
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_29

    .line 74
    :catch_29
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/IOException;
    :goto_2a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2d
    return-void

    .line 66
    .restart local v0    # "buf":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_2e
    if-eqz v4, :cond_33

    .line 67
    :try_start_30
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 70
    :cond_33
    if-eqz v6, :cond_38

    .line 71
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_3b

    :cond_38
    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    goto :goto_2d

    .line 74
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_3b
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_2a

    .line 65
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "e":Ljava/io/IOException;
    .local v3, "is":Ljava/io/InputStream;
    .local v5, "os":Ljava/io/OutputStream;
    :catchall_3f
    move-exception v7

    goto :goto_1e

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_41
    move-exception v7

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    goto :goto_1e
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 26
    iput-object p1, p0, Lcom/lge/mirrorlinkcertupdate/MirrorLinkReceiver;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "com.lge.mirrorlink.server.STOP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 29
    const-string/jumbo v8, "MirrorLinkReceiver"

    const-string/jumbo v9, "Received intent: com.lge.mirrorlink.server.STOP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v1, Ljava/io/File;

    const-string/jumbo v8, "/data/misc/mirrorlink/"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "dirfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 32
    .local v4, "files":[Ljava/io/File;
    array-length v8, v4

    if-nez v8, :cond_31

    .line 33
    const-string/jumbo v8, "MirrorLinkReceiver"

    const-string/jumbo v9, "empty dir"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_31
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_32
    array-length v8, v4

    if-ge v5, v8, :cond_7c

    .line 36
    aget-object v2, v4, v5

    .line 37
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "filename":Ljava/lang/String;
    const-string/jumbo v8, ".update"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 39
    .local v7, "str_index":I
    if-lez v7, :cond_53

    .line 40
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/misc/mirrorlink/"

    invoke-virtual {v3, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v8}, Lcom/lge/mirrorlinkcertupdate/MirrorLinkReceiver;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 35
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 43
    .end local v1    # "dirfile":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "i":I
    .end local v7    # "str_index":I
    :cond_56
    const-string/jumbo v8, "com.lge.mirrorlink.server.dap.prikey.VALIDATION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 44
    const-string/jumbo v8, "MirrorLinkReceiver"

    const-string/jumbo v9, "Received intent: com.lge.mirrorlink.server.dap.prikey.VALIDATION"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v6, "i":Landroid/content/Intent;
    iget-object v8, p0, Lcom/lge/mirrorlinkcertupdate/MirrorLinkReceiver;->mContext:Landroid/content/Context;

    const-class v9, Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    const/high16 v8, 0x30000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    .end local v6    # "i":Landroid/content/Intent;
    :cond_7c
    return-void
.end method
