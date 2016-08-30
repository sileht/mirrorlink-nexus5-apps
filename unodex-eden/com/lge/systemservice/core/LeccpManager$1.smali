.class Lcom/lge/systemservice/core/LeccpManager$1;
.super Lcom/lge/systemservice/core/ILeccpManagerListener$Stub;
.source "LeccpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/LeccpManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/LeccpManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    .line 545
    invoke-direct {p0}, Lcom/lge/systemservice/core/ILeccpManagerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBLEServerStatusChanged(Z)V
    .registers 7
    .param p1, "isEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 663
    sget-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v0, :cond_23

    .line 664
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onBLEServerStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_23
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v4, v1}, Lcom/lge/systemservice/core/LeccpManager;->access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V

    .line 668
    return-void
.end method

.method public onCardActionUpdated(Ljava/lang/String;Lcom/lge/systemservice/core/LeccpInfo$Action;)V
    .registers 7
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/lge/systemservice/core/LeccpInfo$Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    if-eqz p1, :cond_4

    if-nez p2, :cond_1f

    .line 650
    :cond_4
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onCardActionUpdated null parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :goto_1e
    return-void

    .line 653
    :cond_1f
    sget-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v0, :cond_4d

    .line 654
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onCardActionUpdated card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 655
    iget-object v2, p2, Lcom/lge/systemservice/core/LeccpInfo$Action;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_4d
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/systemservice/core/LeccpManager;->access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method public onCardAdded(Lcom/lge/systemservice/core/LeccpInfo$Card;)V
    .registers 6
    .param p1, "card"    # Lcom/lge/systemservice/core/LeccpInfo$Card;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 622
    if-nez p1, :cond_1d

    .line 623
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onCardAdded null parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_1c
    return-void

    .line 627
    :cond_1d
    sget-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v0, :cond_3f

    .line 628
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onCardAdded card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_3f
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/systemservice/core/LeccpManager;->access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public onCardRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "cardId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 608
    if-nez p1, :cond_1d

    .line 609
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onCardRemoved null parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_1c
    return-void

    .line 613
    :cond_1d
    sget-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v0, :cond_3f

    .line 614
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onCardRemoved cardId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_3f
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    const/4 v1, 0x6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/systemservice/core/LeccpManager;->access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public onCardUpdated(Lcom/lge/systemservice/core/LeccpInfo$Card;)V
    .registers 6
    .param p1, "card"    # Lcom/lge/systemservice/core/LeccpInfo$Card;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 636
    if-nez p1, :cond_1d

    .line 637
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onCardUpdated null parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_1c
    return-void

    .line 640
    :cond_1d
    sget-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v0, :cond_3f

    .line 641
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onCardUpdated card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_3f
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    const/4 v1, 0x7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/systemservice/core/LeccpManager;->access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public onDeadListenerCheck()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 672
    sget-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v0, :cond_1e

    .line 673
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onDeadListenerCheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_1e
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    const/16 v1, 0x9

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/systemservice/core/LeccpManager;->access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V

    .line 677
    return-void
.end method

.method public onMyCardAdded(Lcom/lge/systemservice/core/LeccpInfo$Card;)V
    .registers 6
    .param p1, "card"    # Lcom/lge/systemservice/core/LeccpInfo$Card;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 594
    if-nez p1, :cond_1d

    .line 595
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onMyCardAdded null parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_1c
    return-void

    .line 598
    :cond_1d
    sget-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v0, :cond_3f

    .line 599
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onMyCardAdded card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_3f
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/systemservice/core/LeccpManager;->access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public onMyCardRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "cardId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 579
    if-nez p1, :cond_1d

    .line 580
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onMyCardRemoved null parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_1c
    return-void

    .line 584
    :cond_1d
    sget-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v0, :cond_3f

    .line 585
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onMyCardRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_3f
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lge/systemservice/core/LeccpManager;->access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public onResponseAction(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 10
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "result"    # Z
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 564
    if-nez p1, :cond_1e

    .line 565
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onResponseAction null parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_1d
    return-void

    .line 569
    :cond_1e
    sget-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v0, :cond_5e

    .line 570
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onResponseAction requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 571
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_5e
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v4, v1}, Lcom/lge/systemservice/core/LeccpManager;->access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method public onStatusChanged(Lcom/lge/systemservice/core/LeccpInfo$Status;)V
    .registers 6
    .param p1, "status"    # Lcom/lge/systemservice/core/LeccpInfo$Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 549
    if-nez p1, :cond_1e

    .line 550
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onStatusChanged null parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_1d
    return-void

    .line 554
    :cond_1e
    sget-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v0, :cond_40

    .line 555
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "onStatusChanged status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_40
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager$1;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    # invokes: Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V
    invoke-static {v0, v3, v1}, Lcom/lge/systemservice/core/LeccpManager;->access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V

    goto :goto_1d
.end method
