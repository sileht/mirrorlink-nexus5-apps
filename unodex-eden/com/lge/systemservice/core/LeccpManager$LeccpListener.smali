.class public abstract Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
.super Ljava/lang/Object;
.source "LeccpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LeccpListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBLEServerStatusChanged(Z)V
    .registers 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 1559
    return-void
.end method

.method public onCardActionUpdated(Ljava/lang/String;Lcom/lge/systemservice/core/LeccpInfo$Action;)V
    .registers 3
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/lge/systemservice/core/LeccpInfo$Action;

    .prologue
    .line 1591
    return-void
.end method

.method public onCardAdded(Lcom/lge/systemservice/core/LeccpInfo$Card;)V
    .registers 2
    .param p1, "card"    # Lcom/lge/systemservice/core/LeccpInfo$Card;

    .prologue
    .line 1569
    return-void
.end method

.method public onCardRemoved(Ljava/lang/String;)V
    .registers 2
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 1601
    return-void
.end method

.method public onCardUpdated(Lcom/lge/systemservice/core/LeccpInfo$Card;)V
    .registers 2
    .param p1, "card"    # Lcom/lge/systemservice/core/LeccpInfo$Card;

    .prologue
    .line 1579
    return-void
.end method

.method public onDeadListenerCheck()V
    .registers 1

    .prologue
    .line 1644
    return-void
.end method

.method public onMyCardAdded(Lcom/lge/systemservice/core/LeccpInfo$Card;)V
    .registers 2
    .param p1, "card"    # Lcom/lge/systemservice/core/LeccpInfo$Card;

    .prologue
    .line 1611
    return-void
.end method

.method public onMyCardRemoved(Ljava/lang/String;)V
    .registers 2
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 1621
    return-void
.end method

.method public onResponseAction(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "result"    # Z
    .param p4, "reason"    # I

    .prologue
    .line 1636
    return-void
.end method

.method public onStatusChanged(Lcom/lge/systemservice/core/LeccpInfo$Status;)V
    .registers 2
    .param p1, "status"    # Lcom/lge/systemservice/core/LeccpInfo$Status;

    .prologue
    .line 1549
    return-void
.end method
