.class Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
.super Ljava/lang/Object;
.source "TmApplicationServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppStatusType"
.end annotation


# instance fields
.field private appStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;",
            ">;"
        }
    .end annotation
.end field

.field private statusChanged:Z

.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;


# direct methods
.method private constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->statusChanged:Z

    .line 1163
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 4
    .param p1, "profileID"    # I

    .prologue
    const/4 v0, 0x0

    .line 1192
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public get(I)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    .registers 4
    .param p1, "profileID"    # I

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    if-eqz v1, :cond_f

    .line 1198
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    .line 1199
    .local v0, "type":Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    if-eqz v0, :cond_f

    .line 1200
    return-object v0

    .line 1204
    .end local v0    # "type":Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    :cond_f
    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Notrunning:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    return-object v1
.end method

.method public getAppStatus()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    return-object v0
.end method

.method public hasStatus(Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)Z
    .registers 4
    .param p1, "status"    # Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    .prologue
    const/4 v0, 0x0

    .line 1187
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isEmpty()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1238
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method public isStatusChanged()Z
    .registers 2

    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->statusChanged:Z

    return v0
.end method

.method public put(ILcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    .registers 4
    .param p1, "profileID"    # I
    .param p2, "status"    # Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    .prologue
    .line 1210
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->get(I)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    move-result-object v0

    if-eq v0, p2, :cond_9

    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->statusChanged:Z

    .line 1213
    :cond_9
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1214
    return-object p2
.end method

.method public remove(I)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    .registers 4
    .param p1, "profileID"    # I

    .prologue
    .line 1219
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->statusChanged:Z

    .line 1222
    :cond_9
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    .line 1223
    .local v0, "removed":Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1224
    return-object v0
.end method

.method public removeNotrunningStatus()V
    .registers 5

    .prologue
    .line 1243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_25

    .line 1244
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1245
    .local v1, "id":I
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    .line 1247
    .local v2, "status":Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    if-eqz v2, :cond_22

    sget-object v3, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Notrunning:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    if-ne v2, v3, :cond_22

    .line 1248
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1243
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1241
    .end local v1    # "id":I
    .end local v2    # "status":Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    :cond_25
    return-void
.end method

.method public setStatusChanged(Z)V
    .registers 2
    .param p1, "changed"    # Z

    .prologue
    .line 1182
    iput-boolean p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->statusChanged:Z

    .line 1180
    return-void
.end method

.method public updateAll(Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)V
    .registers 5
    .param p1, "status"    # Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    .prologue
    .line 1230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1231
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1232
    .local v1, "id":I
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1228
    .end local v1    # "id":I
    :cond_17
    return-void
.end method
