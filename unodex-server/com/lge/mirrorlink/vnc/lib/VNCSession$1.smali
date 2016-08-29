.class Lcom/lge/mirrorlink/vnc/lib/VNCSession$1;
.super Ljava/lang/Thread;
.source "VNCSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mirrorlink/vnc/lib/VNCSession;->readByeBye()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/VNCSession;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/vnc/lib/VNCSession;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession$1;->this$0:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 671
    const-wide/16 v2, 0x1388

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 672
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession$1;->this$0:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-static {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->-get0(Lcom/lge/mirrorlink/vnc/lib/VNCSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 673
    const-string/jumbo v1, "MirrorLink_VNC"

    const-string/jumbo v2, "Client didn\'t disconnect the connection. Server disconnects connection now."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCSession$1;->this$0:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->close()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_1f} :catch_20

    .line 669
    :cond_1f
    :goto_1f
    return-void

    .line 676
    :catch_20
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1f
.end method
