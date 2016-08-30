.class public Lcom/lge/wifi/p2p/LGP2pManagerFactory;
.super Ljava/lang/Object;
.source "LGP2pManagerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mLGP2pManagerImplClass:Ljava/lang/Class;

.field private static sLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 11
    const-class v2, Lcom/lge/wifi/p2p/LGP2pManagerFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->TAG:Ljava/lang/String;

    .line 12
    sput-object v3, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->mLGP2pManagerImplClass:Ljava/lang/Class;

    .line 13
    sput-object v3, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->sLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    .line 17
    :try_start_d
    sget-object v2, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->mLGP2pManagerImplClass:Ljava/lang/Class;

    if-nez v2, :cond_2e

    .line 18
    sget-object v2, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->TAG:Ljava/lang/String;

    const-string v3, "Load Class"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/LGP2pManager.jar"

    .line 21
    const-class v3, Lcom/lge/wifi/p2p/LGP2pManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 20
    invoke-direct {v0, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 22
    .local v0, "cLoader":Ljava/lang/ClassLoader;
    const-string v2, "com.lge.wifi.p2p.LGP2pManagerImpl"

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->mLGP2pManagerImplClass:Ljava/lang/Class;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2e} :catch_2f

    .line 27
    :cond_2e
    :goto_2e
    return-void

    .line 24
    :catch_2f
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Class not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/lge/wifi/p2p/LGP2pManager;
    .registers 4

    .prologue
    .line 52
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->sLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    if-nez v1, :cond_19

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->mLGP2pManagerImplClass:Ljava/lang/Class;

    if-eqz v1, :cond_19

    .line 53
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->TAG:Ljava/lang/String;

    const-string v2, "getInstance - sLGP2pManager == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_f
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->mLGP2pManagerImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pManager;

    sput-object v1, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->sLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_19} :catch_20
    .catch Ljava/lang/InstantiationException; {:try_start_f .. :try_end_19} :catch_36

    .line 62
    :cond_19
    :goto_19
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->sLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    if-eqz v1, :cond_4c

    .line 63
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->sLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    .line 68
    :goto_1f
    return-object v1

    .line 56
    :catch_20
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newInstance fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_36
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newInstance fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 65
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_4c
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->TAG:Ljava/lang/String;

    const-string v2, "getInstance - sLGP2pManager is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static isEnabled()Z
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->mLGP2pManagerImplClass:Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static resetInstance()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pManagerFactory;->sLGP2pManager:Lcom/lge/wifi/p2p/LGP2pManager;

    .line 35
    return-void
.end method
