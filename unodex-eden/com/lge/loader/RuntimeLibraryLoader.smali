.class public Lcom/lge/loader/RuntimeLibraryLoader;
.super Ljava/lang/Object;
.source "RuntimeLibraryLoader.java"


# static fields
.field public static CLIPTRAY_MANAGER:Ljava/lang/String;

.field private static FACTORY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Singleton",
            "<",
            "Lcom/lge/loader/InstanceCreator;",
            ">;>;"
        }
    .end annotation
.end field

.field public static MDM:Ljava/lang/String;

.field public static MDM_SPRINT:Ljava/lang/String;

.field public static VOLUME_MANAGER:Ljava/lang/String;

.field public static ZDI_INTERACTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/lge/loader/RuntimeLibraryLoader;->FACTORY_MAP:Ljava/util/HashMap;

    .line 19
    const-string v0, "volume"

    sput-object v0, Lcom/lge/loader/RuntimeLibraryLoader;->VOLUME_MANAGER:Ljava/lang/String;

    .line 20
    const-string v0, "cliptray"

    sput-object v0, Lcom/lge/loader/RuntimeLibraryLoader;->CLIPTRAY_MANAGER:Ljava/lang/String;

    .line 21
    const-string v0, "mdm"

    sput-object v0, Lcom/lge/loader/RuntimeLibraryLoader;->MDM:Ljava/lang/String;

    .line 22
    const-string v0, "mdm_sprint"

    sput-object v0, Lcom/lge/loader/RuntimeLibraryLoader;->MDM_SPRINT:Ljava/lang/String;

    .line 23
    const-string v0, "zdi_interaction"

    sput-object v0, Lcom/lge/loader/RuntimeLibraryLoader;->ZDI_INTERACTION:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/lge/loader/RuntimeLibraryLoader;->CLIPTRAY_MANAGER:Ljava/lang/String;

    new-instance v1, Lcom/lge/loader/RuntimeLibraryLoader$1;

    invoke-direct {v1}, Lcom/lge/loader/RuntimeLibraryLoader$1;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/loader/RuntimeLibraryLoader;->registerCreator(Ljava/lang/String;Landroid/util/Singleton;)V

    .line 85
    sget-object v0, Lcom/lge/loader/RuntimeLibraryLoader;->VOLUME_MANAGER:Ljava/lang/String;

    new-instance v1, Lcom/lge/loader/RuntimeLibraryLoader$2;

    invoke-direct {v1}, Lcom/lge/loader/RuntimeLibraryLoader$2;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/loader/RuntimeLibraryLoader;->registerCreator(Ljava/lang/String;Landroid/util/Singleton;)V

    .line 93
    sget-object v0, Lcom/lge/loader/RuntimeLibraryLoader;->ZDI_INTERACTION:Ljava/lang/String;

    new-instance v1, Lcom/lge/loader/RuntimeLibraryLoader$3;

    invoke-direct {v1}, Lcom/lge/loader/RuntimeLibraryLoader$3;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/loader/RuntimeLibraryLoader;->registerCreator(Ljava/lang/String;Landroid/util/Singleton;)V

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getCreator(Ljava/lang/String;)Lcom/lge/loader/InstanceCreator;
    .registers 2
    .param p0, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/loader/RuntimeLibraryLoader;->getCreator(Ljava/lang/String;Ljava/lang/Object;)Lcom/lge/loader/InstanceCreator;

    move-result-object v0

    return-object v0
.end method

.method public static getCreator(Ljava/lang/String;Ljava/lang/Object;)Lcom/lge/loader/InstanceCreator;
    .registers 4
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 45
    sget-object v1, Lcom/lge/loader/RuntimeLibraryLoader;->FACTORY_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Singleton;

    .line 46
    .local v0, "singletonCreator":Landroid/util/Singleton;, "Landroid/util/Singleton<Lcom/lge/loader/InstanceCreator;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/InstanceCreator;

    goto :goto_b
.end method

.method private static registerCreator(Ljava/lang/String;Landroid/util/Singleton;)V
    .registers 3
    .param p0, "factoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Singleton",
            "<",
            "Lcom/lge/loader/InstanceCreator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "factory":Landroid/util/Singleton;, "Landroid/util/Singleton<Lcom/lge/loader/InstanceCreator;>;"
    sget-object v0, Lcom/lge/loader/RuntimeLibraryLoader;->FACTORY_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
