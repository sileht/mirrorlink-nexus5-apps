.class Lcom/lge/mirrorlinkcertupdate/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mirrorlinkcertupdate/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlinkcertupdate/MainActivity;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlinkcertupdate/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlinkcertupdate/MainActivity;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity$1;->this$0:Lcom/lge/mirrorlinkcertupdate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity$1;->this$0:Lcom/lge/mirrorlinkcertupdate/MainActivity;

    invoke-static {v3}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->-get0(Lcom/lge/mirrorlinkcertupdate/MainActivity;)Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->isNewerVersion()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 61
    const-string/jumbo v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update crt! UPDATE_LIST.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    sget-object v3, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_64

    .line 63
    const-string/jumbo v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UPDATE_LIST filename="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity$1;->this$0:Lcom/lge/mirrorlinkcertupdate/MainActivity;

    invoke-static {v3}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->-get0(Lcom/lge/mirrorlinkcertupdate/MainActivity;)Lcom/lge/mirrorlinkcertupdate/CrtUpdater;

    move-result-object v3

    sget-object v4, Lcom/lge/mirrorlinkcertupdate/CrtUpdateParam;->UPDATE_LIST:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "/data/misc/mirrorlink/"

    invoke-virtual {v3, v4, v5}, Lcom/lge/mirrorlinkcertupdate/CrtUpdater;->update(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5d} :catch_6f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5d} :catch_60

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 81
    .end local v2    # "i":I
    :catch_60
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity$1;->this$0:Lcom/lge/mirrorlinkcertupdate/MainActivity;

    invoke-static {v3}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->-wrap0(Lcom/lge/mirrorlinkcertupdate/MainActivity;)V

    .line 86
    iget-object v3, p0, Lcom/lge/mirrorlinkcertupdate/MainActivity$1;->this$0:Lcom/lge/mirrorlinkcertupdate/MainActivity;

    invoke-virtual {v3}, Lcom/lge/mirrorlinkcertupdate/MainActivity;->finish()V

    .line 58
    return-void

    .line 79
    :catch_6f
    move-exception v1

    .line 80
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64
.end method
