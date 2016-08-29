.class Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;
.super Ljava/lang/Thread;
.source "DevStatReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;


# direct methods
.method private constructor <init>(Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;->this$0:Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;-><init>(Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;)V

    return-void
.end method

.method private sleep(I)V
    .registers 6
    .param p1, "mSec"    # I

    .prologue
    .line 31
    if-gtz p1, :cond_3

    .line 32
    return-void

    .line 35
    :cond_3
    int-to-long v2, p1

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    .line 30
    :goto_7
    return-void

    .line 36
    :catch_8
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "MirrorLink_DevStatReporter"

    const-string/jumbo v2, "InterruptedException Happens !"

    invoke-static {v1, v2, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;->this$0:Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;

    invoke-static {v0}, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;->-get0(Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;)Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;

    move-result-object v0

    if-nez v0, :cond_12

    .line 23
    const-string/jumbo v0, "MirrorLink_DevStatReporter"

    const-string/jumbo v1, "mDevStatMsg is null !"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void

    .line 26
    :cond_12
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;->this$0:Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;

    invoke-static {v0}, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;->-get0(Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;)Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;->getDelayTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;->sleep(I)V

    .line 27
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;->this$0:Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;

    invoke-static {v0}, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;->-get0(Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;)Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;->send()V

    .line 21
    return-void
.end method
