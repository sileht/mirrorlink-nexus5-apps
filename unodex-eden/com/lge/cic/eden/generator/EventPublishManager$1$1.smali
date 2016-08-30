.class Lcom/lge/cic/eden/generator/EventPublishManager$1$1;
.super Landroid/os/Handler;
.source "EventPublishManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/generator/EventPublishManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/cic/eden/generator/EventPublishManager$1;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/generator/EventPublishManager$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/generator/EventPublishManager$1$1;->this$1:Lcom/lge/cic/eden/generator/EventPublishManager$1;

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_25

    .line 139
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;

    .line 140
    .local v0, "publishParams":Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager$1$1;->this$1:Lcom/lge/cic/eden/generator/EventPublishManager$1;

    # getter for: Lcom/lge/cic/eden/generator/EventPublishManager$1;->this$0:Lcom/lge/cic/eden/generator/EventPublishManager;
    invoke-static {v1}, Lcom/lge/cic/eden/generator/EventPublishManager$1;->access$0(Lcom/lge/cic/eden/generator/EventPublishManager$1;)Lcom/lge/cic/eden/generator/EventPublishManager;

    move-result-object v1

    iget-object v2, v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;->type:Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;

    iget-object v3, v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;->mediaInfo:Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-object v4, v0, Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;->eventId:Ljava/lang/Integer;

    # invokes: Lcom/lge/cic/eden/generator/EventPublishManager;->publishLocked(Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/lge/cic/eden/generator/EventPublishManager;->access$1(Lcom/lge/cic/eden/generator/EventPublishManager;Lcom/lge/cic/eden/generator/EventPublishManager$PublishType;Lcom/lge/cic/eden/db/type/MediaInfo;Ljava/lang/Integer;)Z

    .line 141
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager$1$1;->this$1:Lcom/lge/cic/eden/generator/EventPublishManager$1;

    # getter for: Lcom/lge/cic/eden/generator/EventPublishManager$1;->this$0:Lcom/lge/cic/eden/generator/EventPublishManager;
    invoke-static {v1}, Lcom/lge/cic/eden/generator/EventPublishManager$1;->access$0(Lcom/lge/cic/eden/generator/EventPublishManager$1;)Lcom/lge/cic/eden/generator/EventPublishManager;

    move-result-object v1

    # getter for: Lcom/lge/cic/eden/generator/EventPublishManager;->remainCnt:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/lge/cic/eden/generator/EventPublishManager;->access$2(Lcom/lge/cic/eden/generator/EventPublishManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 150
    .end local v0    # "publishParams":Lcom/lge/cic/eden/generator/EventPublishManager$PublishParams;
    :goto_24
    return-void

    .line 143
    :cond_25
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    .line 144
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager$1$1;->this$1:Lcom/lge/cic/eden/generator/EventPublishManager$1;

    # getter for: Lcom/lge/cic/eden/generator/EventPublishManager$1;->this$0:Lcom/lge/cic/eden/generator/EventPublishManager;
    invoke-static {v1}, Lcom/lge/cic/eden/generator/EventPublishManager$1;->access$0(Lcom/lge/cic/eden/generator/EventPublishManager$1;)Lcom/lge/cic/eden/generator/EventPublishManager;

    move-result-object v1

    # getter for: Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v1}, Lcom/lge/cic/eden/generator/EventPublishManager;->access$3(Lcom/lge/cic/eden/generator/EventPublishManager;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v1

    const-string v2, "quit looper"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_24

    .line 148
    :cond_41
    iget-object v1, p0, Lcom/lge/cic/eden/generator/EventPublishManager$1$1;->this$1:Lcom/lge/cic/eden/generator/EventPublishManager$1;

    # getter for: Lcom/lge/cic/eden/generator/EventPublishManager$1;->this$0:Lcom/lge/cic/eden/generator/EventPublishManager;
    invoke-static {v1}, Lcom/lge/cic/eden/generator/EventPublishManager$1;->access$0(Lcom/lge/cic/eden/generator/EventPublishManager$1;)Lcom/lge/cic/eden/generator/EventPublishManager;

    move-result-object v1

    # getter for: Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v1}, Lcom/lge/cic/eden/generator/EventPublishManager;->access$3(Lcom/lge/cic/eden/generator/EventPublishManager;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "illegal msg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_24
.end method
