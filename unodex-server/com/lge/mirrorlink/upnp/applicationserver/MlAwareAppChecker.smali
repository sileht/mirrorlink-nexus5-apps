.class public Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;
.super Ljava/lang/Object;
.source "MlAwareAppChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_MlAwareAppChecker"


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->mContext:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->mPackageName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->mActivityName:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->mPackageName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public isMlAwareApp()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v1, Lcom/lge/mirrorlink/upnp/applicationserver/MlActivityFinder;

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/MlActivityFinder;-><init>(Landroid/content/Context;)V

    .line 25
    .local v1, "mlActivityFinder":Lcom/lge/mirrorlink/upnp/applicationserver/MlActivityFinder;
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/MlActivityFinder;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 26
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_18

    .line 27
    :cond_17
    return v3

    .line 29
    :cond_18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->mActivityName:Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->mActivityName:Ljava/lang/String;

    if-nez v2, :cond_29

    .line 31
    return v3

    .line 34
    :cond_29
    return v4
.end method
