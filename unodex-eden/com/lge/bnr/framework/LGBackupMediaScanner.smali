.class public Lcom/lge/bnr/framework/LGBackupMediaScanner;
.super Ljava/lang/Object;
.source "LGBackupMediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mIsCompleteMediaScan:Z

.field protected mMediaFileToUriMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaScan:Landroid/media/MediaScannerConnection;

.field protected mMediaScanCount:I

.field protected mMediaScanFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaScannerContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pMediaScanFile"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "BNR Media Scanner"

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->LOG_TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScanFileList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaFileToUriMapper:Ljava/util/HashMap;

    .line 22
    iput-boolean v1, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mIsCompleteMediaScan:Z

    .line 23
    iput v1, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScanCount:I

    .line 31
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScannerContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScanFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "pMediaScanFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "BNR Media Scanner"

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->LOG_TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScanFileList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaFileToUriMapper:Ljava/util/HashMap;

    .line 22
    iput-boolean v1, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mIsCompleteMediaScan:Z

    .line 23
    iput v1, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScanCount:I

    .line 26
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScannerContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScanFileList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public static sendMediaScan(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method


# virtual methods
.method public IsCompleteScanning()Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mIsCompleteMediaScan:Z

    return v0
.end method

.method public getMediaFileToUriMapper()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaFileToUriMapper:Ljava/util/HashMap;

    return-object v0
.end method

.method public onMediaScannerConnected()V
    .registers 6

    .prologue
    .line 51
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScanFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 55
    return-void

    .line 51
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "sFile":Ljava/lang/String;
    const-string v2, "BNR Media Scanner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[media scanning file] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScan:Landroid/media/MediaScannerConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .param p1, "pFile"    # Ljava/lang/String;
    .param p2, "pUri"    # Landroid/net/Uri;

    .prologue
    .line 60
    const-string v0, "BNR Media Scanner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[complete media scanning file] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaFileToUriMapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScanCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScanCount:I

    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScanFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_40

    .line 64
    const-string v0, "BNR Media Scanner"

    const-string v1, "[complete all media scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mIsCompleteMediaScan:Z

    .line 66
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScan:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 68
    :cond_40
    return-void
.end method

.method public runMediaScan()V
    .registers 3

    .prologue
    .line 44
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScannerContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScan:Landroid/media/MediaScannerConnection;

    .line 45
    iget-object v0, p0, Lcom/lge/bnr/framework/LGBackupMediaScanner;->mMediaScan:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 46
    return-void
.end method
