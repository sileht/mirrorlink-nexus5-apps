.class Lcom/lge/wfds/WfdsEvent$1;
.super Landroid/os/RemoteCallbackList;
.source "WfdsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsEvent;->checkAndCreateRemoteCbList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcom/lge/wfds/IWfdsEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsEvent;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsEvent;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wfds/WfdsEvent$1;->this$0:Lcom/lge/wfds/WfdsEvent;

    .line 249
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/lge/wfds/IWfdsEventListener;

    invoke-virtual {p0, p1, p2}, Lcom/lge/wfds/WfdsEvent$1;->onCallbackDied(Lcom/lge/wfds/IWfdsEventListener;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Lcom/lge/wfds/IWfdsEventListener;Ljava/lang/Object;)V
    .registers 7
    .param p1, "callback"    # Lcom/lge/wfds/IWfdsEventListener;
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 252
    .local v0, "eventListenerId":I
    const-string v1, "WfdsEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCallbackDied id["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    # getter for: Lcom/lge/wfds/WfdsEvent;->mRegisteredListenerList:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;
    invoke-static {}, Lcom/lge/wfds/WfdsEvent;->access$0()Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;->remove(I)V

    .line 254
    return-void
.end method
