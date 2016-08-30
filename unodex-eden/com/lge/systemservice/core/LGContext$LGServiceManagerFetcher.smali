.class abstract Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;
.super Ljava/lang/Object;
.source "LGContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LGContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LGServiceManagerFetcher"
.end annotation


# instance fields
.field private mCachedInstance:Ljava/lang/Object;

.field private final mFeatureName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;->mFeatureName:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;->mFeatureName:Ljava/lang/String;

    .line 280
    return-void
.end method


# virtual methods
.method public abstract createServiceManager(Landroid/content/Context;)Ljava/lang/Object;
.end method

.method public declared-synchronized getService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;->mCachedInstance:Ljava/lang/Object;

    if-nez v0, :cond_1b

    .line 288
    iget-object v0, p0, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;->mFeatureName:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 290
    :cond_15
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;->createServiceManager(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;->mCachedInstance:Ljava/lang/Object;

    .line 293
    :cond_1b
    iget-object v0, p0, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    .line 287
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
