.class public Lcom/lge/content/pm/PackageParserAO;
.super Ljava/lang/Object;
.source "PackageParserAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
    value = "perthis(parseBaseApplicationPC(android.content.pm.PackageParser, android.content.pm.PackageParser$Package, android.content.res.Resources))"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic declared-synchronized ajc$perObjectBind(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    const-class v2, Lcom/lge/content/pm/PackageParserAO;

    monitor-enter v2

    :try_start_3
    instance-of v1, p0, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;

    if-eqz v1, :cond_1b

    move-object v0, p0

    check-cast v0, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;

    move-object v1, v0

    invoke-interface {v1}, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;->ajc$com_lge_content_pm_PackageParserAO$perObjectGet()Lcom/lge/content/pm/PackageParserAO;

    move-result-object v1

    if-nez v1, :cond_1b

    check-cast p0, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;

    new-instance v1, Lcom/lge/content/pm/PackageParserAO;

    invoke-direct {v1}, Lcom/lge/content/pm/PackageParserAO;-><init>()V

    invoke-interface {p0, v1}, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;->ajc$com_lge_content_pm_PackageParserAO$perObjectSet(Lcom/lge/content/pm/PackageParserAO;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit v2

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static ajc$privMethod$com_lge_content_pm_PackageParserAO$com_lge_content_pm_PackageParserAO$getLgeThemeFromMetaData(ILandroid/os/Bundle;Landroid/content/res/Resources;)I
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/content/pm/PackageParserAO;->getLgeThemeFromMetaData(ILandroid/os/Bundle;Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static ajc$privMethod$com_lge_content_pm_PackageParserAO$com_lge_content_pm_PackageParserAO$setLgeThemeIfNecessary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/content/pm/PackageParserAO;->setLgeThemeIfNecessary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static aspectOf(Ljava/lang/Object;)Lcom/lge/content/pm/PackageParserAO;
    .registers 2

    .prologue
    .line 1
    instance-of v0, p0, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;

    invoke-interface {p0}, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;->ajc$com_lge_content_pm_PackageParserAO$perObjectGet()Lcom/lge/content/pm/PackageParserAO;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_c
    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-direct {v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>()V

    throw v0

    :cond_12
    return-object v0
.end method

.method private static getLgeThemeFromMetaData(ILandroid/os/Bundle;Landroid/content/res/Resources;)I
    .registers 8
    .param p0, "theme"    # I
    .param p1, "metadata"    # Landroid/os/Bundle;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x0

    .line 35
    if-nez p0, :cond_2b

    if-eqz p1, :cond_2b

    .line 36
    const-string v2, "com.lge.theme"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "lgeTheme":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 38
    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.lge:style/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, "themeResId":I
    if-eqz v1, :cond_2b

    .line 46
    .end local v0    # "lgeTheme":Ljava/lang/String;
    .end local v1    # "themeResId":I
    :goto_2a
    return v1

    :cond_2b
    move v1, p0

    goto :goto_2a
.end method

.method public static hasAspect(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 1
    instance-of v0, p0, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;

    invoke-interface {p0}, Lcom/lge/content/pm/PackageParserAO$ajcMightHaveAspect;->ajc$com_lge_content_pm_PackageParserAO$perObjectGet()Lcom/lge/content/pm/PackageParserAO;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static setLgeThemeIfNecessary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;)V
    .registers 7
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 28
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-static {v2, v3, p1}, Lcom/lge/content/pm/PackageParserAO;->ajc$privMethod$com_lge_content_pm_PackageParserAO$com_lge_content_pm_PackageParserAO$getLgeThemeFromMetaData(ILandroid/os/Bundle;Landroid/content/res/Resources;)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 29
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 32
    return-void

    .line 29
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 30
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {v3, v4, p1}, Lcom/lge/content/pm/PackageParserAO;->ajc$privMethod$com_lge_content_pm_PackageParserAO$com_lge_content_pm_PackageParserAO$getLgeThemeFromMetaData(ILandroid/os/Bundle;Landroid/content/res/Resources;)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_14
.end method


# virtual methods
.method public ajc$afterReturning$com_lge_content_pm_PackageParserAO$1$798a36ec(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Z)V
    .registers 5
    .param p1, "pp"    # Landroid/content/pm/PackageParser;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "result"    # Z
    .annotation runtime Lorg/aspectj/lang/annotation/AfterReturning;
        argNames = "pp,pkg,res,result"
        pointcut = "parseBaseApplicationPC(pp, pkg, res)"
        returning = "result"
    .end annotation

    .prologue
    .line 22
    if-eqz p4, :cond_5

    .line 23
    invoke-static {p2, p3}, Lcom/lge/content/pm/PackageParserAO;->ajc$privMethod$com_lge_content_pm_PackageParserAO$com_lge_content_pm_PackageParserAO$setLgeThemeIfNecessary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;)V

    .line 25
    :cond_5
    return-void
.end method

.method synthetic ajc$pointcut$$parseBaseApplicationPC$1e9(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "pp,pkg,res"
        value = "(target(pp) && (args(pkg, res, XmlPullParser, AttributeSet, int, String) && execution(boolean android.content.pm.PackageParser.parseBaseApplication(android.content.pm.PackageParser$Package, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, int, java.lang.String[]))))"
    .end annotation

    .prologue
    .line 19
    return-void
.end method
