.class Lcom/lge/wfds/session/PortIsolation$PortIsolationList;
.super Ljava/lang/Object;
.source "PortIsolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/session/PortIsolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PortIsolationList"
.end annotation


# instance fields
.field private mPortIsolationList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/wfds/session/PortIsolation;


# direct methods
.method constructor <init>(Lcom/lge/wfds/session/PortIsolation;)V
    .registers 3

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->this$0:Lcom/lge/wfds/session/PortIsolation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->mPortIsolationList:Ljava/util/Map;

    .line 130
    return-void
.end method

.method private checkBoundPortInfoList(Ljava/lang/String;Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;)V
    .registers 4
    .param p1, "peerIpAddress"    # Ljava/lang/String;
    .param p2, "boundPortInfoList"    # Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;

    .prologue
    .line 197
    invoke-virtual {p2}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->getBoundPortInfoSize()I

    move-result v0

    if-lez v0, :cond_c

    .line 198
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->mPortIsolationList:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :goto_b
    return-void

    .line 205
    :cond_c
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->mPortIsolationList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method private getPortIsolationList()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->mPortIsolationList:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 211
    .local v0, "portIsolationList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPortIsolation(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)V
    .registers 15
    .param p1, "peerIpAddress"    # Ljava/lang/String;
    .param p2, "portNumber"    # I
    .param p3, "protocolNum"    # I
    .param p4, "sessionMac"    # Ljava/lang/String;
    .param p5, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->mPortIsolationList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;

    .line 134
    .local v7, "existBoundPortInfoList":Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;
    if-eqz v7, :cond_13

    .line 135
    invoke-virtual {v7, p2, p3, p4, p5}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->addBoundPortInfo(IILjava/lang/String;Ljava/lang/Integer;)V

    .line 136
    iget-object v0, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->mPortIsolationList:Ljava/util/Map;

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :goto_12
    return-void

    .line 143
    :cond_13
    iget-object v8, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->mPortIsolationList:Ljava/util/Map;

    .line 144
    new-instance v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;

    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->this$0:Lcom/lge/wfds/session/PortIsolation;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;-><init>(Lcom/lge/wfds/session/PortIsolation;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)V

    .line 143
    invoke-interface {v8, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12
.end method

.method removeAllPortIsolation()V
    .registers 4

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->getPortIsolationList()Ljava/util/Iterator;

    move-result-object v1

    .line 188
    .local v1, "portIsolationList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 193
    iget-object v2, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->mPortIsolationList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 194
    return-void

    .line 189
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;

    .line 190
    .local v0, "boundPortInfoList":Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;
    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->removeAllBoundPortInfo()V

    .line 191
    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->getPeerIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->checkBoundPortInfoList(Ljava/lang/String;Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;)V

    goto :goto_4
.end method

.method removePortIsolation(Ljava/lang/String;)V
    .registers 5
    .param p1, "peerIpAddress"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->getPortIsolationList()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    .local v1, "portIsolationList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;>;"
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 184
    return-void

    .line 178
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;

    .line 179
    .local v0, "boundPortInfoList":Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;
    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->getPeerIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->removeAllBoundPortInfo()V

    .line 181
    invoke-virtual {v0}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->getPeerIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->checkBoundPortInfoList(Ljava/lang/String;Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;)V

    goto :goto_4
.end method

.method removePortIsolation(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)V
    .registers 12
    .param p1, "peerIpAddress"    # Ljava/lang/String;
    .param p2, "portNumber"    # I
    .param p3, "protocolNum"    # I
    .param p4, "sessionMac"    # Ljava/lang/String;
    .param p5, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 152
    new-instance v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->this$0:Lcom/lge/wfds/session/PortIsolation;

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;-><init>(Lcom/lge/wfds/session/PortIsolation;IILjava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->removePortIsolation(Ljava/lang/String;ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V

    .line 153
    return-void
.end method

.method removePortIsolation(Ljava/lang/String;ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V
    .registers 7
    .param p1, "peerIpAddress"    # Ljava/lang/String;
    .param p2, "portNumber"    # I
    .param p3, "boudnPortInfo"    # Lcom/lge/wfds/session/PortIsolation$BoundPortInfo;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->mPortIsolationList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;

    .line 157
    .local v0, "existBoundPortInfoList":Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;
    if-eqz v0, :cond_11

    .line 158
    invoke-virtual {v0, p2, p3}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->removeBoundPortInfo(ILcom/lge/wfds/session/PortIsolation$BoundPortInfo;)V

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->checkBoundPortInfoList(Ljava/lang/String;Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;)V

    .line 163
    :goto_10
    return-void

    .line 161
    :cond_11
    const-string v1, "WfdsSession:PortIsolation"

    const-string v2, "removePortIsolation : existBoundPortInfoList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method removePortIsolation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "peerIpAddress"    # Ljava/lang/String;
    .param p2, "sessionMac"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/Integer;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->mPortIsolationList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;

    .line 167
    .local v0, "existBoundPortInfoList":Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;
    if-eqz v0, :cond_11

    .line 168
    invoke-virtual {v0, p2, p3}, Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;->removeBoundPortInfo(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/lge/wfds/session/PortIsolation$PortIsolationList;->checkBoundPortInfoList(Ljava/lang/String;Lcom/lge/wfds/session/PortIsolation$BoundPortInfoList;)V

    .line 173
    :goto_10
    return-void

    .line 171
    :cond_11
    const-string v1, "WfdsSession:PortIsolation"

    const-string v2, "removePortIsolation : existBoundPortInfoList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method
