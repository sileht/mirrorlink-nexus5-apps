.class Lcom/lge/mirrorlink/commonapi/ContextManager$1;
.super Lcom/mirrorlink/android/commonapi/IContextManager$Stub;
.source "ContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/commonapi/ContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/commonapi/ContextManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/commonapi/ContextManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/commonapi/ContextManager;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/ContextManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ContextManager;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/IContextManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setAudioContextInformation(Z[IZ)V
    .registers 10
    .param p1, "audioContent"    # Z
    .param p2, "audioCategories"    # [I
    .param p3, "handleBlocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p2, :cond_c

    .line 88
    const-string/jumbo v3, "MirrorLink_CAPI"

    const-string/jumbo v4, "setAudioContextInformation : audioCategories is null"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void

    .line 91
    :cond_c
    const/4 v1, 0x0

    .line 92
    .local v1, "audioCategory":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, p2

    if-ge v2, v3, :cond_17

    .line 93
    aget v3, p2, v2

    or-int/2addr v1, v3

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 95
    :cond_17
    const-string/jumbo v3, "MirrorLink_CAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAudioContextInformation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 98
    .local v0, "appListMgr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-nez v0, :cond_41

    .line 99
    const-string/jumbo v3, "MirrorLink_CAPI"

    const-string/jumbo v4, "appListMgr is null"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 102
    :cond_41
    const-string/jumbo v3, "MirrorLink_CAPI"

    const-string/jumbo v4, "appListMgr is not null"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/lge/mirrorlink/commonapi/ContextManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ContextManager;

    invoke-static {v3}, Lcom/lge/mirrorlink/commonapi/ContextManager;->-get0(Lcom/lge/mirrorlink/commonapi/ContextManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1, v1, p3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->setContextInformationAudioCategory(Ljava/lang/String;ZIZ)V

    .line 86
    return-void
.end method

.method public setFramebufferContextInformation(Ljava/util/List;Z)V
    .registers 32
    .param p2, "handleBlocking"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v27, "ctxInfo":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    const/16 v28, 0x0

    .line 39
    .local v28, "rect":Landroid/os/Bundle;
    const/16 v22, 0x0

    .line 40
    .local v22, "appCategory":I
    const/16 v26, 0x0

    .line 41
    .local v26, "contentCategory":I
    const/16 v18, 0x0

    .line 42
    .local v18, "x":I
    const/16 v19, 0x0

    .line 43
    .local v19, "y":I
    const/16 v20, 0x0

    .line 44
    .local v20, "w":I
    const/16 v21, 0x0

    .line 46
    .local v21, "h":I
    if-nez p1, :cond_1f

    .line 47
    const-string/jumbo v4, "MirrorLink_CAPI"

    const-string/jumbo v5, "setFramebufferContextInformation :content is null"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 50
    :cond_1f
    const-string/jumbo v4, "MirrorLink_CAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFramebufferContextInformation:num:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .end local v28    # "rect":Landroid/os/Bundle;
    .local v25, "bundle$iterator":Ljava/util/Iterator;
    :cond_41
    :goto_41
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_129

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Bundle;

    .line 53
    .local v24, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "RECT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v28

    .line 54
    .local v28, "rect":Landroid/os/Bundle;
    if-eqz v28, :cond_11e

    .line 55
    const-string/jumbo v4, "X"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 56
    const-string/jumbo v4, "Y"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 57
    const-string/jumbo v4, "WIDTH"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 58
    const-string/jumbo v4, "HEIGHT"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 62
    :goto_7c
    const-string/jumbo v4, "APPLICATION_CATEGORY"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 63
    const-string/jumbo v4, "CONTENT_CATEGORY"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 65
    const-string/jumbo v4, "MirrorLink_CAPI"

    const-string/jumbo v5, "Bundle bundle content "

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v4, "MirrorLink_CAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "context info x:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " w:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " h:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 67
    const-string/jumbo v6, " appCategory:0x"

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 67
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 68
    const-string/jumbo v6, " contentCategory:0x"

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 68
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-nez v22, :cond_fc

    if-eqz v26, :cond_41

    .line 70
    :cond_fc
    new-instance v4, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/mirrorlink/commonapi/ContextManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ContextManager;

    invoke-static {v5}, Lcom/lge/mirrorlink/commonapi/ContextManager;->-get0(Lcom/lge/mirrorlink/commonapi/ContextManager;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move/from16 v0, v22

    int-to-long v12, v0

    move/from16 v0, v26

    int-to-long v14, v0

    .line 71
    const-wide/16 v16, 0x0

    .line 70
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v21}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    .line 60
    :cond_11e
    const-string/jumbo v4, "MirrorLink_CAPI"

    const-string/jumbo v5, "RECT bundle value is null !"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7c

    .line 75
    .end local v24    # "bundle":Landroid/os/Bundle;
    .end local v28    # "rect":Landroid/os/Bundle;
    :cond_129
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v23

    .line 76
    .local v23, "appListMgr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-nez v23, :cond_139

    .line 77
    const-string/jumbo v4, "MirrorLink_CAPI"

    const-string/jumbo v5, "appListMgr is null"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 80
    :cond_139
    const-string/jumbo v4, "MirrorLink_CAPI"

    const-string/jumbo v5, "appListMgr is not null"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/commonapi/ContextManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ContextManager;

    invoke-static {v4}, Lcom/lge/mirrorlink/commonapi/ContextManager;->-get0(Lcom/lge/mirrorlink/commonapi/ContextManager;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move/from16 v1, p2

    move-object/from16 v2, v27

    invoke-virtual {v0, v4, v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->setFramebufferContextInformation(Ljava/lang/String;ZLjava/util/List;)V

    .line 36
    return-void
.end method

.method public unregister()V
    .registers 6

    .prologue
    .line 109
    const-string/jumbo v2, "MirrorLink_CAPI"

    const-string/jumbo v3, "[START] unregister"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 112
    .local v0, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v0, :cond_4f

    .line 113
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/ContextManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ContextManager;

    invoke-static {v2}, Lcom/lge/mirrorlink/commonapi/ContextManager;->-get0(Lcom/lge/mirrorlink/commonapi/ContextManager;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/ContextManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ContextManager;

    invoke-static {v2}, Lcom/lge/mirrorlink/commonapi/ContextManager;->-get0(Lcom/lge/mirrorlink/commonapi/ContextManager;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.carconnectivity.testapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 114
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/ContextManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ContextManager;

    invoke-static {v2}, Lcom/lge/mirrorlink/commonapi/ContextManager;->-get0(Lcom/lge/mirrorlink/commonapi/ContextManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->resetContextInformation(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v2, "MirrorLink_CAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset context information for packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mirrorlink/commonapi/ContextManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ContextManager;

    invoke-static {v4}, Lcom/lge/mirrorlink/commonapi/ContextManager;->-get0(Lcom/lge/mirrorlink/commonapi/ContextManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_4f
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v1

    .line 120
    .local v1, "sCommonAPIManager":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v1, :cond_5e

    .line 121
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/ContextManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ContextManager;

    invoke-static {v2}, Lcom/lge/mirrorlink/commonapi/ContextManager;->-get0(Lcom/lge/mirrorlink/commonapi/ContextManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->unregisterContextManager(Ljava/lang/String;)V

    .line 108
    :cond_5e
    return-void
.end method
