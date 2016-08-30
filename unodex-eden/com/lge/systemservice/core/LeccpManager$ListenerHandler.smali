.class Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;
.super Landroid/os/Handler;
.source "LeccpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 513
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;)V
    .registers 2

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 516
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListenerMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LeccpManager;->access$1(ILjava/lang/Object;)V

    .line 517
    return-void
.end method
