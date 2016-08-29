.class public Lcom/lge/mirrorlink/upnp/applicationserver/ForegroundAppDecider;
.super Ljava/lang/Object;
.source "ForegroundAppDecider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/ForegroundAppDecider;->mContext:Landroid/content/Context;

    .line 17
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/ForegroundAppDecider;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public isForegroundApp(Ljava/lang/String;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 21
    const-string/jumbo v7, "MirrorLink_UPnP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v5, 0x0

    .line 23
    .local v5, "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const-string/jumbo v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;

    move-result-object v6

    .line 25
    .local v6, "winManager":Lcom/lge/view/IWindowManagerEx;
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_2a
    invoke-interface {v6, v7, v8}, Lcom/lge/view/IWindowManagerEx;->getWindowInfoList(IZ)Ljava/util/List;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_3a

    move-result-object v5

    .line 30
    .local v5, "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v5, :cond_45

    .line 31
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "winList is null !"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return v10

    .line 26
    .local v5, "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_3a
    move-exception v3

    .line 27
    .local v3, "re":Landroid/os/RemoteException;
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "RemoteException Happens !"

    invoke-static {v7, v8, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return v10

    .line 35
    .end local v3    # "re":Landroid/os/RemoteException;
    .local v5, "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_45
    const/4 v4, 0x0

    .line 36
    .local v4, "winInfo":Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;
    const/4 v2, 0x0

    .line 37
    .local v2, "curPkgName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "curPkgName":Ljava/lang/String;
    .end local v4    # "winInfo":Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;
    .local v1, "bndl$iterator":Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 38
    .local v0, "bndl":Landroid/os/Bundle;
    new-instance v4, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;

    invoke-direct {v4, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;-><init>(Landroid/os/Bundle;)V

    .line 39
    .local v4, "winInfo":Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;
    if-nez v4, :cond_68

    .line 40
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "winInfo is null !"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 43
    :cond_68
    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "curPkgName":Ljava/lang/String;
    if-eqz v2, :cond_4b

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 45
    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;->getArea()I

    move-result v7

    if-lez v7, :cond_4b

    .line 46
    return v11

    .line 50
    .end local v0    # "bndl":Landroid/os/Bundle;
    .end local v2    # "curPkgName":Ljava/lang/String;
    .end local v4    # "winInfo":Lcom/lge/mirrorlink/upnp/applicationserver/WinInfoExtractor;
    :cond_81
    return v10
.end method
