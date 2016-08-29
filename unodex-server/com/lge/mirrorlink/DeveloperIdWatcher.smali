.class public Lcom/lge/mirrorlink/DeveloperIdWatcher;
.super Ljava/lang/Object;
.source "DeveloperIdWatcher.java"


# static fields
.field private static final ML_DB_DEVELOPER_ID:Ljava/lang/String; = "mirrorlink_developer_id"

.field private static final TAG:Ljava/lang/String; = "MirrorLink_Settings"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/DeveloperIdWatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 21
    iput-object p1, p0, Lcom/lge/mirrorlink/DeveloperIdWatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 20
    return-void
.end method


# virtual methods
.method public refresh(Z)Z
    .registers 9
    .param p1, "force"    # Z

    .prologue
    const/4 v6, 0x0

    .line 25
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v2

    .line 26
    .local v2, "tmAppListManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-nez v2, :cond_8

    .line 27
    return v6

    .line 30
    :cond_8
    iget-object v3, p0, Lcom/lge/mirrorlink/DeveloperIdWatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mirrorlink_developer_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "devIdFromDB":Ljava/lang/String;
    if-nez v1, :cond_1d

    .line 32
    const-string/jumbo v3, "MirrorLink_Settings"

    const-string/jumbo v4, "DeveloperIdWatcher devIdFromDB == null"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return v6

    .line 35
    :cond_1d
    const-string/jumbo v3, "MirrorLink_Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DeveloperIdWatcher devIdFromDB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getDeveloperID()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "curDevId":Ljava/lang/String;
    if-nez v0, :cond_47

    .line 41
    const-string/jumbo v3, "MirrorLink_Settings"

    const-string/jumbo v4, "DeveloperIdWatcher curDevId == null"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return v6

    .line 44
    :cond_47
    const-string/jumbo v3, "MirrorLink_Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DeveloperIdWatcher curDevId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-nez p1, :cond_69

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 49
    :cond_69
    invoke-virtual {v2, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->setDeveloperID(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v3, "MirrorLink_Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DeveloperIdUpdater, execute setDeveloperID(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v3, 0x1

    return v3

    .line 53
    :cond_88
    return v6
.end method
