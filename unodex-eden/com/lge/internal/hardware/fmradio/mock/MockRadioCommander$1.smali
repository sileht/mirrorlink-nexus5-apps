.class Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;
.super Ljava/lang/Object;
.source "MockRadioCommander.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->startAutoScan()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;


# direct methods
.method constructor <init>(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "index":I
    const/4 v0, 0x0

    .line 172
    .local v0, "freq":I
    :goto_4
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    # getter for: Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interrupt:Z
    invoke-static {v3}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->access$0(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 185
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-static {v3, v6}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->access$2(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;Z)V

    .line 186
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    iput-boolean v6, v3, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->isOnAutoScan:Z

    .line 187
    return-void

    .line 173
    :cond_16
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    # getter for: Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->virtualRadioChannel:[I
    invoke-static {v3}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->access$1(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;)[I

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget v0, v3, v1

    .line 174
    const/16 v3, 0x1e

    if-ne v2, v3, :cond_30

    .line 175
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-static {v3, v7}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->access$2(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;Z)V

    .line 176
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    sget-object v4, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3, v4, v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;I)V

    .line 178
    :cond_30
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    sget-object v4, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3, v4, v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->sendMessageToActivity(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;I)V

    .line 180
    const-wide/16 v4, 0x3e8

    :try_start_39
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_3e

    move v1, v2

    .line 181
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_4

    .line 182
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :catch_3e
    move-exception v3

    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-static {v3, v7}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->access$2(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;Z)V

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_4
.end method
