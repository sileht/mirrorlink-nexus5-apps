.class final Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;
.super Landroid/os/Handler;
.source "GlanceViewManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/GlanceViewManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlanceViewListenerDelegate"
.end annotation


# static fields
.field private static final MSG_SET_VISIBILITY:I = 0x1

.field private static final MSG_UPDATE_STATUSBAR:I = 0x2


# instance fields
.field public final mListener:Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;


# direct methods
.method public constructor <init>(Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 240
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 241
    iput-object p1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->mListener:Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;

    .line 242
    return-void

    .line 240
    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public clearEvents()V
    .registers 2

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 267
    :goto_5
    return-void

    .line 262
    :pswitch_6
    iget-object v0, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->mListener:Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;->onVisibilityChanged(II)V

    goto :goto_5

    .line 265
    :pswitch_10
    iget-object v1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->mListener:Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/systemui/GlanceViewStatusBar;

    invoke-interface {v1, v0}, Lcom/lge/systemservice/core/GlanceViewManager$GlanceViewListener;->onStatusBarChanged(Lcom/lge/systemui/GlanceViewStatusBar;)V

    goto :goto_5

    .line 260
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method public setVisibility(II)V
    .registers 5
    .param p1, "visibility"    # I
    .param p2, "mode"    # I

    .prologue
    .line 249
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 250
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 251
    return-void
.end method

.method public updateStatusBar(Lcom/lge/systemui/GlanceViewStatusBar;)V
    .registers 4
    .param p1, "statusBar"    # Lcom/lge/systemui/GlanceViewStatusBar;

    .prologue
    .line 254
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method
