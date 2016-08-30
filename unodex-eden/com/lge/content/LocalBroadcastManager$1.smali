.class Lcom/lge/content/LocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Lcom/lge/content/LocalBroadcastManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/content/LocalBroadcastManager$1;->this$0:Lcom/lge/content/LocalBroadcastManager;

    .line 110
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    :goto_8
    return-void

    .line 116
    :pswitch_9
    iget-object v0, p0, Lcom/lge/content/LocalBroadcastManager$1;->this$0:Lcom/lge/content/LocalBroadcastManager;

    # invokes: Lcom/lge/content/LocalBroadcastManager;->executePendingBroadcasts()V
    invoke-static {v0}, Lcom/lge/content/LocalBroadcastManager;->access$0(Lcom/lge/content/LocalBroadcastManager;)V

    goto :goto_8

    .line 114
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
