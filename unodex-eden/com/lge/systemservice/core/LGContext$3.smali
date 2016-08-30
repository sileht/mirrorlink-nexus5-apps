.class Lcom/lge/systemservice/core/LGContext$3;
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
    .line 319
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public createServiceManager(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 322
    new-instance v0, Lcom/lge/systemservice/core/LGSDEncManager;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/LGSDEncManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
