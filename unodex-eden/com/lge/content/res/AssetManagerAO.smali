.class public Lcom/lge/content/res/AssetManagerAO;
.super Ljava/lang/Object;
.source "AssetManagerAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/content/res/AssetManagerAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    :try_start_0
    invoke-static {}, Lcom/lge/content/res/AssetManagerAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/content/res/AssetManagerAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_content_res_AssetManagerAO$2$9b8ceb9aproceed(Landroid/content/res/AssetManager;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_content_res_AssetManagerAO$3$ac2ab82aproceed(Landroid/content/res/AssetManager;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/content/res/AssetManagerAO;

    invoke-direct {v0}, Lcom/lge/content/res/AssetManagerAO;-><init>()V

    sput-object v0, Lcom/lge/content/res/AssetManagerAO;->ajc$perSingletonInstance:Lcom/lge/content/res/AssetManagerAO;

    return-void
.end method

.method public static aspectOf()Lcom/lge/content/res/AssetManagerAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/content/res/AssetManagerAO;->ajc$perSingletonInstance:Lcom/lge/content/res/AssetManagerAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_content_res_AssetManagerAO"

    sget-object v2, Lcom/lge/content/res/AssetManagerAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/content/res/AssetManagerAO;->ajc$perSingletonInstance:Lcom/lge/content/res/AssetManagerAO;

    return-object v0
.end method

.method private getOverlayPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28
    const-string v1, "ro.lge.capp_cupss.rootdir"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "overlayPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/overlay/framework"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_1f
    return-object v0

    .line 32
    :cond_20
    const-string v0, "/vendor/overlay"

    goto :goto_1f
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/content/res/AssetManagerAO;->ajc$perSingletonInstance:Lcom/lge/content/res/AssetManagerAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_content_res_AssetManagerAO$1$a4a3a3eb(Landroid/content/res/AssetManager;)V
    .registers 4
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "am"
        value = "(withincode(AssetManager.new(..)) && (call(private void AssetManager.init(boolean)) && target(am)))"
    .end annotation

    .prologue
    .line 22
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->ajc$privMethod$com_lge_content_res_AssetManagerAO$android_content_res_AssetManager$getResourceName(I)Ljava/lang/String;

    .line 23
    const-string v0, "/system/framework/lge-res/lge-res.apk"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lge/content/res/AssetManagerAO;->ajc$privMethod$com_lge_content_res_AssetManagerAO$com_lge_content_res_AssetManagerAO$getOverlayPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/com.lge.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public ajc$around$com_lge_content_res_AssetManagerAO$2$9b8ceb9a(Landroid/content/res/AssetManager;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "am,ajc$aroundClosure"
        value = "(withincode(public final int AssetManager.addAssetPath(String)) && (call(final void AssetManager.makeStringBlocks(..)) && target(am)))"
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Landroid/content/res/AssetManager;->ajc$get$mStringBlocks(Landroid/content/res/AssetManager;)[Landroid/content/res/StringBlock;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 49
    invoke-static {p1, p2}, Lcom/lge/content/res/AssetManagerAO;->ajc$around$com_lge_content_res_AssetManagerAO$2$9b8ceb9aproceed(Landroid/content/res/AssetManager;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 51
    :cond_9
    return-void
.end method

.method public ajc$around$com_lge_content_res_AssetManagerAO$3$ac2ab82a(Landroid/content/res/AssetManager;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 5
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "am,ajc$aroundClosure"
        value = "((within(AssetManager) || within(ResourcesManager)) && (call(public int AssetManager.addOverlayPath(String)) && target(am)))"
    .end annotation

    .prologue
    .line 61
    monitor-enter p1

    .line 62
    :try_start_1
    invoke-static {p1, p2}, Lcom/lge/content/res/AssetManagerAO;->ajc$around$com_lge_content_res_AssetManagerAO$3$ac2ab82aproceed(Landroid/content/res/AssetManager;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    .line 63
    .local v0, "res":I
    invoke-static {p1}, Landroid/content/res/AssetManager;->ajc$get$mStringBlocks(Landroid/content/res/AssetManager;)[Landroid/content/res/StringBlock;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 64
    invoke-static {p1}, Landroid/content/res/AssetManager;->ajc$get$mStringBlocks(Landroid/content/res/AssetManager;)[Landroid/content/res/StringBlock;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->ajc$privMethod$com_lge_content_res_AssetManagerAO$android_content_res_AssetManager$makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 66
    :cond_12
    monitor-exit p1

    return v0

    .line 61
    .end local v0    # "res":I
    :catchall_14
    move-exception v1

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public ajc$privMethod$com_lge_content_res_AssetManagerAO$com_lge_content_res_AssetManagerAO$getOverlayPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/lge/content/res/AssetManagerAO;->getOverlayPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
