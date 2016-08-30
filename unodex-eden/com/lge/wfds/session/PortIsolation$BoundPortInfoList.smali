.class Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;
.super Ljava/lang/Object;
.source "PortIsolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/session/PortIsolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundPortInfoList"
.end annotation


# instance fields
.field private mBoundPortInfoList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPeerIpAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/wfds/session/PortIsolation;


# direct methods
.method constructor <init>(Lcom/lge/wfds/session/PortIsolation;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)V
    .registers 8
    .param p2, "peerIpAddress"    # Ljava/lang/String;
    .param p3, "portNumber"    # I
    .param p4, "protocolNum"    # I
    .param p5, "sessionMac"    # Ljava/lang/String;
    .param p6, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->this$0:Lcom/lge/wfds/session/PortIsolation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mPeerIpAddress:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mBoundPortInfoList:Ljava/util/Map;

    .line 226
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->addBoundPortInfo(IILjava/lang/String;Ljava/lang/Integer;)V

    .line 227
    return-void
.end method

.method private checkBoundPortInfo(ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V
    .registers 5
    .param p1, "portNumber"    # I
    .param p2, "boundPortInfo"    # Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    .prologue
    .line 295
    invoke-virtual {p2}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getSessionSize()I

    move-result v0

    if-lez v0, :cond_10

    .line 296
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mBoundPortInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :goto_f
    return-void

    .line 303
    :cond_10
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mBoundPortInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method private getBoundPortInfoList()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mBoundPortInfoList:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 309
    .local v0, "boundPortInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addBoundPortInfo(IILjava/lang/String;Ljava/lang/Integer;)V
    .registers 11
    .param p1, "portNumber"    # I
    .param p2, "protocolNum"    # I
    .param p3, "sessionMac"    # Ljava/lang/String;
    .param p4, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 234
    new-instance v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->this$0:Lcom/lge/wfds/session/PortIsolation;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;-><init>(Lcom/lge/wfds/session/PortIsolation;IILjava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1, v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->addBoundPortInfo(ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V

    .line 235
    return-void
.end method

.method addBoundPortInfo(ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V
    .registers 6
    .param p1, "portNumber"    # I
    .param p2, "boudnPortInfo"    # Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mBoundPortInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    .line 240
    .local v0, "existBoundPortInfo":Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;
    invoke-virtual {p2, p1}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->setPortNumber(I)V

    .line 242
    if-eqz v0, :cond_1e

    .line 243
    invoke-virtual {v0, p2}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->putSession(Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;)Z

    .line 244
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mBoundPortInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_1d
    return-void

    .line 251
    :cond_1e
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mBoundPortInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d
.end method

.method getBoundPortInfoSize()I
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mBoundPortInfoList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method getPeerIpAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mPeerIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method removeAllBoundPortInfo()V
    .registers 4

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->getBoundPortInfoList()Ljava/util/Iterator;

    move-result-object v1

    .line 282
    .local v1, "boundPortList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 287
    iget-object v2, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mBoundPortInfoList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 288
    return-void

    .line 283
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    .line 284
    .local v0, "boundPortInfo":Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;
    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->removeAllSession()V

    .line 285
    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getPortNumber()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->checkBoundPortInfo(ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V

    goto :goto_4
.end method

.method removeBoundPortInfo(IILjava/lang/String;Ljava/lang/Integer;)V
    .registers 11
    .param p1, "portNumber"    # I
    .param p2, "protocolNum"    # I
    .param p3, "sessionMac"    # Ljava/lang/String;
    .param p4, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 256
    new-instance v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->this$0:Lcom/lge/wfds/session/PortIsolation;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;-><init>(Lcom/lge/wfds/session/PortIsolation;IILjava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1, v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->removeBoundPortInfo(ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V

    .line 257
    return-void
.end method

.method removeBoundPortInfo(ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V
    .registers 6
    .param p1, "portNumber"    # I
    .param p2, "boudnPortInfo"    # Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->mBoundPortInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    .line 262
    .local v0, "existBoundPortInfo":Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;
    if-eqz v0, :cond_17

    .line 263
    invoke-virtual {p2, p1}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->setPortNumber(I)V

    .line 264
    invoke-virtual {v0, p2}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->removeSession(Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V

    .line 265
    invoke-direct {p0, p1, v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->checkBoundPortInfo(ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V

    .line 267
    :cond_17
    return-void
.end method

.method removeBoundPortInfo(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "sessionMac"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->getBoundPortInfoList()Ljava/util/Iterator;

    move-result-object v1

    .line 271
    .local v1, "boundPortList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;>;"
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 278
    return-void

    .line 272
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    .line 273
    .local v0, "boundPortInfo":Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;
    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getPortNumber()I

    move-result v2

    const/16 v3, 0x1c43

    if-eq v2, v3, :cond_4

    .line 274
    invoke-virtual {v0, p1, p2}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->removeSession(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;->getPortNumber()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->checkBoundPortInfo(ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V

    goto :goto_4
.end method
