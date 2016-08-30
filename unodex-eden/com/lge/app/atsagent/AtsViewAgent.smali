.class public Lcom/lge/app/atsagent/AtsViewAgent;
.super Ljava/lang/Object;
.source "AtsViewAgent.java"


# static fields
.field private static final ETA2_PACKAGE_NAME:Ljava/lang/String; = "lgerp.android.eta2"

.field public static final IS_ETA2_ACTIVATED:Z

.field private static final TAG:Ljava/lang/String; = "AtsViewAgent"

.field private static final VIEWAGENT2_CLASS_NAME:Ljava/lang/String; = "com.lge.atsagent.ViewAgent"

.field private static mClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    const-string v0, "persist.sys.ats_start"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/app/atsagent/AtsViewAgent;->IS_ETA2_ACTIVATED:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/app/atsagent/AtsViewAgent;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createViewAgent(Landroid/view/View;Ljava/lang/String;)Lcom/lge/app/atsagent/IViewAgent;
    .registers 8
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "viewHolderType"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-boolean v3, Lcom/lge/app/atsagent/AtsViewAgent;->IS_ETA2_ACTIVATED:Z

    if-eqz v3, :cond_53

    if-eqz p0, :cond_53

    .line 35
    :try_start_6
    sget-object v3, Lcom/lge/app/atsagent/AtsViewAgent;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_10

    .line 36
    invoke-static {}, Lcom/lge/app/atsagent/AtsViewAgent;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sput-object v3, Lcom/lge/app/atsagent/AtsViewAgent;->mClassLoader:Ljava/lang/ClassLoader;

    .line 39
    :cond_10
    sget-object v3, Lcom/lge/app/atsagent/AtsViewAgent;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_53

    .line 40
    const-string v3, "com.lge.atsagent.ViewAgent"

    const/4 v4, 0x1

    sget-object v5, Lcom/lge/app/atsagent/AtsViewAgent;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 42
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/app/atsagent/IViewAgent;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3d} :catch_3e

    .line 48
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_3d
    return-object v3

    .line 44
    :catch_3e
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AtsViewAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ViewAgent classes loading failure: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_53
    const/4 v3, 0x0

    goto :goto_3d
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 53
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 54
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_31

    .line 55
    const-string v2, "lgerp.android.eta2"

    invoke-interface {v1, v2, v3, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 56
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2a

    .line 57
    const-string v2, "AtsViewAgent"

    const-string v3, "Loading ViewAgent classes from Eta2..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v2, Ldalvik/system/PathClassLoader;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-class v4, Lcom/lge/app/atsagent/AtsViewAgent;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 64
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_29
    return-object v2

    .line 60
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2a
    const-string v2, "AtsViewAgent"

    const-string v3, "No Eta2 is installed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_31
    const/4 v2, 0x0

    goto :goto_29
.end method
