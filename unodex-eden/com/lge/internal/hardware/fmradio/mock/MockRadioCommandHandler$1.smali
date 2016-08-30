.class Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler$1;
.super Ljava/lang/Object;
.source "MockRadioCommandHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;


# direct methods
.method constructor <init>(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler$1;->this$0:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;

    # getter for: Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;
    invoke-static {v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->access$0(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;)Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->turnOn()Z

    .line 62
    return-void
.end method
