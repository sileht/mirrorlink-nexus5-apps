.class Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;
.super Ljava/lang/Object;
.source "KeyChecker.java"

# interfaces
.implements Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlinkcertupdate/KeyChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlinkcertupdate/KeyChecker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;->this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .registers 8

    .prologue
    .line 43
    :try_start_0
    const-string/jumbo v3, "KeyChecker"

    const-string/jumbo v4, "onServiceConnected()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;->this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    invoke-static {v3}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->-wrap2(Lcom/lge/mirrorlinkcertupdate/KeyChecker;)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "1. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;->this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    sget-object v5, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->-wrap0(Lcom/lge/mirrorlinkcertupdate/KeyChecker;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .local v2, "strbuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n\n2. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;->this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    sget-object v5, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->-wrap0(Lcom/lge/mirrorlinkcertupdate/KeyChecker;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v3, "\n\n3. Key Validation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;->this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    invoke-static {v3}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->-wrap1(Lcom/lge/mirrorlinkcertupdate/KeyChecker;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;->this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->-wrap3(Lcom/lge/mirrorlinkcertupdate/KeyChecker;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_61} :catch_70
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_61} :catch_6b

    .line 55
    .end local v2    # "strbuilder":Ljava/lang/StringBuilder;
    :goto_61
    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/KeyChecker$1;->this$0:Lcom/lge/mirrorlinkcertupdate/KeyChecker;

    invoke-static {v3}, Lcom/lge/mirrorlinkcertupdate/KeyChecker;->-get0(Lcom/lge/mirrorlinkcertupdate/KeyChecker;)Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->unbindTZMirrorLinkService()V

    .line 41
    return-void

    .line 52
    :catch_6b
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_61

    .line 50
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_70
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61
.end method

.method public onServiceDisconnected()V
    .registers 3

    .prologue
    .line 60
    const-string/jumbo v0, "KeyChecker"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
