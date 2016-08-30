.class final Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;
.super Lcom/lge/systemservice/core/IGlanceViewManagerCallback$Stub;
.source "GlanceViewManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/GlanceViewManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GlanceViewManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;


# direct methods
.method private constructor <init>(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;->this$0:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    invoke-direct {p0}, Lcom/lge/systemservice/core/IGlanceViewManagerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;)V
    .registers 3

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;-><init>(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public onStatusBarChanged(Lcom/lge/systemui/GlanceViewStatusBar;)V
    .registers 5
    .param p1, "statusBar"    # Lcom/lge/systemui/GlanceViewStatusBar;

    .prologue
    .line 225
    # getter for: Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z
    invoke-static {}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->access$0()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 226
    # getter for: Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStatusBarChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_22
    iget-object v0, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;->this$0:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    # invokes: Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->handleUpdateStatusBar(Lcom/lge/systemui/GlanceViewStatusBar;)V
    invoke-static {v0, p1}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->access$3(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;Lcom/lge/systemui/GlanceViewStatusBar;)V

    .line 230
    return-void
.end method

.method public onVisibilityChanged(II)V
    .registers 6
    .param p1, "visibility"    # I
    .param p2, "mode"    # I

    .prologue
    .line 216
    # getter for: Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->DEBUG:Z
    invoke-static {}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->access$0()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 217
    # getter for: Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVisibilityChanged("

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

    .line 220
    :cond_2c
    iget-object v0, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$GlanceViewManagerCallback;->this$0:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    # invokes: Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->handleVisibilityChanged(II)V
    invoke-static {v0, p1, p2}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->access$2(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;II)V

    .line 221
    return-void
.end method
