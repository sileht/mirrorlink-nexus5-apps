.class Lcom/lge/systemservice/core/LGContext$2;
.super Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;
.source "LGContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LGContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public createServiceManager(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 310
    new-instance v0, Lcom/lge/systemservice/core/VolumeVibratorManager;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/VolumeVibratorManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public declared-synchronized getService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/LGContext$2;->createServiceManager(Landroid/content/Context;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
