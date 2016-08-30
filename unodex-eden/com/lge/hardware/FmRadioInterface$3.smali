.class Lcom/lge/hardware/FmRadioInterface$3;
.super Ljava/lang/Object;
.source "FmRadioInterface.java"

# interfaces
.implements Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hardware/FmRadioInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hardware/FmRadioInterface;


# direct methods
.method constructor <init>(Lcom/lge/hardware/FmRadioInterface;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/hardware/FmRadioInterface$3;->this$0:Lcom/lge/hardware/FmRadioInterface;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreExecute(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Landroid/os/Message;)Z
    .registers 7
    .param p1, "cmd"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 318
    const-class v2, Lcom/lge/hardware/FmRadioInterface;

    monitor-enter v2

    .line 319
    :try_start_3
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$3;->this$0:Lcom/lge/hardware/FmRadioInterface;

    # getter for: Lcom/lge/hardware/FmRadioInterface;->mPreOperationListeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/lge/hardware/FmRadioInterface;->access$1(Lcom/lge/hardware/FmRadioInterface;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 324
    monitor-exit v2

    const/4 v1, 0x1

    :goto_15
    return v1

    .line 319
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;

    .line 320
    .local v0, "l":Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;->onPreExecute(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Landroid/os/Message;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 321
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_15

    .line 318
    .end local v0    # "l":Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method
