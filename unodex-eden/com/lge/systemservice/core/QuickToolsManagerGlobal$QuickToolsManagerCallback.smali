.class final Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsManagerCallback;
.super Lcom/lge/systemservice/core/IQuickToolsManagerCallback$Stub;
.source "QuickToolsManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/QuickToolsManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QuickToolsManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/QuickToolsManagerGlobal;


# direct methods
.method private constructor <init>(Lcom/lge/systemservice/core/QuickToolsManagerGlobal;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsManagerCallback;->this$0:Lcom/lge/systemservice/core/QuickToolsManagerGlobal;

    invoke-direct {p0}, Lcom/lge/systemservice/core/IQuickToolsManagerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/systemservice/core/QuickToolsManagerGlobal;Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsManagerCallback;)V
    .registers 3

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsManagerCallback;-><init>(Lcom/lge/systemservice/core/QuickToolsManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public onSetVisibilityChanged(II)V
    .registers 6
    .param p1, "visibility"    # I
    .param p2, "mode"    # I

    .prologue
    .line 190
    # getter for: Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->DEBUG:Z
    invoke-static {}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->access$0()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 191
    # getter for: Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetVisibilityChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2c
    iget-object v0, p0, Lcom/lge/systemservice/core/QuickToolsManagerGlobal$QuickToolsManagerCallback;->this$0:Lcom/lge/systemservice/core/QuickToolsManagerGlobal;

    # invokes: Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->handleSetVisibilityChanged(II)V
    invoke-static {v0, p1, p2}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->access$2(Lcom/lge/systemservice/core/QuickToolsManagerGlobal;II)V

    .line 195
    return-void
.end method
