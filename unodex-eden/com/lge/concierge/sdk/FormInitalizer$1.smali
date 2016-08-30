.class Lcom/lge/concierge/sdk/FormInitalizer$1;
.super Ljava/lang/Object;
.source "FormInitalizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/concierge/sdk/FormInitalizer;->convertToPublishableHtml(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$input:Ljava/io/InputStream;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;Ljava/lang/String;Landroid/content/Context;Ljava/io/InputStream;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iput-object p2, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$input:Ljava/io/InputStream;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 67
    .local v2, "strUri":Ljava/lang/String;
    const/4 v3, 0x0

    .line 68
    .local v3, "zipFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 71
    .local v0, "formDir":Ljava/io/File;
    :try_start_4
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$input:Ljava/io/InputStream;

    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->copyZipFileToPrivateStorage(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    invoke-static {v4, v5, v6}, Lcom/lge/concierge/sdk/FormInitalizer;->access$1(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v3

    .line 73
    if-nez v3, :cond_2f

    .line 74
    const-string v4, "LGBoardSDK"

    const-string v5, "[FAILED] copy ZIP file to private storage."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_de

    .line 101
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z
    invoke-static {v3}, Lcom/lge/concierge/sdk/FormInitalizer;->access$0(Ljava/io/File;)Z

    .line 103
    if-eqz v1, :cond_24

    .line 104
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;->onCompleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_23
    return-void

    .line 106
    :cond_24
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z
    invoke-static {v0}, Lcom/lge/concierge/sdk/FormInitalizer;->access$0(Ljava/io/File;)Z

    .line 107
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_23

    .line 78
    :cond_2f
    :try_start_2f
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->extractZipFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    invoke-static {v4, v5, v3}, Lcom/lge/concierge/sdk/FormInitalizer;->access$2(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_53

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$context:Landroid/content/Context;

    .line 83
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 82
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->setExecutableParentDirs(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/lge/concierge/sdk/FormInitalizer;->access$3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 83
    if-nez v4, :cond_89

    .line 85
    :cond_53
    const-string v4, "LGBoardSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[FAILED] Extract ZIP file ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 86
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_2f .. :try_end_71} :catchall_de

    .line 101
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z
    invoke-static {v3}, Lcom/lge/concierge/sdk/FormInitalizer;->access$0(Ljava/io/File;)Z

    .line 103
    if-eqz v1, :cond_7e

    .line 104
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;->onCompleted(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 106
    :cond_7e
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z
    invoke-static {v0}, Lcom/lge/concierge/sdk/FormInitalizer;->access$0(Ljava/io/File;)Z

    .line 107
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_23

    .line 90
    :cond_89
    :try_start_89
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->getHtmlPath(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/lge/concierge/sdk/FormInitalizer;->access$4(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_97

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 93
    :cond_97
    const-string v4, "LGBoardSDK"

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[FAILED] Doesn\'t exist html file at ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_89 .. :try_end_b5} :catchall_de

    .line 101
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z
    invoke-static {v3}, Lcom/lge/concierge/sdk/FormInitalizer;->access$0(Ljava/io/File;)Z

    .line 103
    if-eqz v1, :cond_c3

    .line 104
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;->onCompleted(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 106
    :cond_c3
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z
    invoke-static {v0}, Lcom/lge/concierge/sdk/FormInitalizer;->access$0(Ljava/io/File;)Z

    .line 107
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 99
    :cond_cf
    const/4 v1, 0x1

    .line 101
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z
    invoke-static {v3}, Lcom/lge/concierge/sdk/FormInitalizer;->access$0(Ljava/io/File;)Z

    .line 103
    if-eqz v1, :cond_f7

    .line 104
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;->onCompleted(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 100
    :catchall_de
    move-exception v4

    .line 101
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z
    invoke-static {v3}, Lcom/lge/concierge/sdk/FormInitalizer;->access$0(Ljava/io/File;)Z

    .line 103
    if-eqz v1, :cond_ec

    .line 104
    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iget-object v6, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;->onCompleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_eb
    throw v4

    .line 106
    :cond_ec
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z
    invoke-static {v0}, Lcom/lge/concierge/sdk/FormInitalizer;->access$0(Ljava/io/File;)Z

    .line 107
    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iget-object v6, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_eb

    .line 106
    :cond_f7
    # invokes: Lcom/lge/concierge/sdk/FormInitalizer;->deleteAllFiles(Ljava/io/File;)Z
    invoke-static {v0}, Lcom/lge/concierge/sdk/FormInitalizer;->access$0(Ljava/io/File;)Z

    .line 107
    iget-object v4, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$callback:Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;

    iget-object v5, p0, Lcom/lge/concierge/sdk/FormInitalizer$1;->val$name:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/lge/concierge/sdk/FormInitalizer$HtmlSetupResultCallback;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_23
.end method
