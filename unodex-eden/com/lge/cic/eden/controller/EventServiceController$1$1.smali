.class Lcom/lge/cic/eden/controller/EventServiceController$1$1;
.super Ljava/lang/Object;
.source "EventServiceController.java"

# interfaces
.implements Lcom/lge/cic/eden/generator/EventGenerator$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/controller/EventServiceController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prevProgress:I

.field final synthetic this$1:Lcom/lge/cic/eden/controller/EventServiceController$1;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/controller/EventServiceController$1;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/controller/EventServiceController$1$1;->this$1:Lcom/lge/cic/eden/controller/EventServiceController$1;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/cic/eden/controller/EventServiceController$1$1;->prevProgress:I

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .registers 5
    .param p1, "progress"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/lge/cic/eden/controller/EventServiceController$1$1;->prevProgress:I

    if-eq v0, p1, :cond_22

    .line 93
    iput p1, p0, Lcom/lge/cic/eden/controller/EventServiceController$1$1;->prevProgress:I

    .line 94
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EventServiceController$1$1;->this$1:Lcom/lge/cic/eden/controller/EventServiceController$1;

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController$1;->this$0:Lcom/lge/cic/eden/controller/EventServiceController;
    invoke-static {v0}, Lcom/lge/cic/eden/controller/EventServiceController$1;->access$0(Lcom/lge/cic/eden/controller/EventServiceController$1;)Lcom/lge/cic/eden/controller/EventServiceController;

    move-result-object v0

    # getter for: Lcom/lge/cic/eden/controller/EventServiceController;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v0}, Lcom/lge/cic/eden/controller/EventServiceController;->access$1(Lcom/lge/cic/eden/controller/EventServiceController;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EventGenerator Progress : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 96
    :cond_22
    return-void
.end method
