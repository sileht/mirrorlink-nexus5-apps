.class Lcom/lge/systemservice/core/LGContext$21;
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
.method constructor <init>()V
    .registers 1

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createServiceManager(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 448
    new-instance v0, Lcom/lge/systemservice/core/MirrorLinkManager;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/MirrorLinkManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
