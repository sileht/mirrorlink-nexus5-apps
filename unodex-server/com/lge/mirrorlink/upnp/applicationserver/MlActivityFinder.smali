.class public Lcom/lge/mirrorlink/upnp/applicationserver/MlActivityFinder;
.super Ljava/lang/Object;
.source "MlActivityFinder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_MlActivityFinder"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlActivityFinder;->mContext:Landroid/content/Context;

    .line 16
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlActivityFinder;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/MlActivityFinder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 21
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.mirrorlink.android.app.LAUNCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 24
    .local v0, "actList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method
