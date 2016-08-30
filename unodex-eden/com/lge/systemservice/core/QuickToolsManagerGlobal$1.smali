.class Lcom/lge/systemservice/core/QuickToolsManagerGlobal$1;
.super Ljava/lang/Object;
.source "QuickToolsManagerGlobal.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/QuickToolsManagerGlobal;-><init>(Landroid/content/Context;Lcom/lge/systemservice/core/IQuickToolsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/QuickToolsManagerGlobal;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/QuickToolsManagerGlobal;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/systemservice/core/QuickToolsManagerGlobal$1;->this$0:Lcom/lge/systemservice/core/QuickToolsManagerGlobal;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 46
    # getter for: Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickToolsManager is died."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/lge/systemservice/core/QuickToolsManagerGlobal$1;->this$0:Lcom/lge/systemservice/core/QuickToolsManagerGlobal;

    invoke-static {v0, v2}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->access$3(Lcom/lge/systemservice/core/QuickToolsManagerGlobal;Lcom/lge/systemservice/core/IQuickToolsManager;)V

    .line 48
    invoke-static {v2}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->access$4(Lcom/lge/systemservice/core/QuickToolsManagerGlobal;)V

    .line 49
    return-void
.end method
