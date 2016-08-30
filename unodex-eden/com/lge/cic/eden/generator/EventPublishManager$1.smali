.class Lcom/lge/cic/eden/generator/EventPublishManager$1;
.super Ljava/lang/Object;
.source "EventPublishManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/generator/EventPublishManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/generator/EventPublishManager;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/generator/EventPublishManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/generator/EventPublishManager$1;->this$0:Lcom/lge/cic/eden/generator/EventPublishManager;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/cic/eden/generator/EventPublishManager$1;)Lcom/lge/cic/eden/generator/EventPublishManager;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager$1;->this$0:Lcom/lge/cic/eden/generator/EventPublishManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 134
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager$1;->this$0:Lcom/lge/cic/eden/generator/EventPublishManager;

    # getter for: Lcom/lge/cic/eden/generator/EventPublishManager;->destroyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lge/cic/eden/generator/EventPublishManager;->access$0(Lcom/lge/cic/eden/generator/EventPublishManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 135
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager$1;->this$0:Lcom/lge/cic/eden/generator/EventPublishManager;

    new-instance v1, Lcom/lge/cic/eden/generator/EventPublishManager$1$1;

    invoke-direct {v1, p0}, Lcom/lge/cic/eden/generator/EventPublishManager$1$1;-><init>(Lcom/lge/cic/eden/generator/EventPublishManager$1;)V

    invoke-static {v0, v1}, Lcom/lge/cic/eden/generator/EventPublishManager;->access$4(Lcom/lge/cic/eden/generator/EventPublishManager;Landroid/os/Handler;)V

    .line 153
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 157
    :goto_1c
    return-void

    .line 155
    :cond_1d
    iget-object v0, p0, Lcom/lge/cic/eden/generator/EventPublishManager$1;->this$0:Lcom/lge/cic/eden/generator/EventPublishManager;

    # getter for: Lcom/lge/cic/eden/generator/EventPublishManager;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v0}, Lcom/lge/cic/eden/generator/EventPublishManager;->access$3(Lcom/lge/cic/eden/generator/EventPublishManager;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    const-string v1, "destroyFlag is true."

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1c
.end method
