.class final Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsListenerDelegate;
.super Landroid/os/Handler;
.source "QuickToolsManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/QuickToolsManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QuickToolsListenerDelegate"
.end annotation


# static fields
.field private static final MSG_SET_VISIBILITY:I = 0x1


# instance fields
.field public final mListener:Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;


# direct methods
.method public constructor <init>(Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 204
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 205
    iput-object p1, p0, Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsListenerDelegate;->mListener:Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;

    .line 206
    return-void

    .line 204
    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public clearEvents()V
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 224
    :goto_5
    return-void

    .line 221
    :pswitch_6
    iget-object v0, p0, Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsListenerDelegate;->mListener:Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;->onVisibilityChanged(II)V

    goto :goto_5

    .line 219
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public setVisibility(II)V
    .registers 5
    .param p1, "visibility"    # I
    .param p2, "mode"    # I

    .prologue
    .line 213
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 214
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method
