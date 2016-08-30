.class Lcom/lge/systemservice/core/GlanceViewManagerGlobal$1;
.super Ljava/lang/Object;
.source "GlanceViewManagerGlobal.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/GlanceViewManagerGlobal;-><init>(Landroid/content/Context;Lcom/lge/systemservice/core/IGlanceViewManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$1;->this$0:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

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
    # getter for: Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlanceViewManager is died."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/lge/systemservice/core/GlanceViewManagerGlobal$1;->this$0:Lcom/lge/systemservice/core/GlanceViewManagerGlobal;

    invoke-static {v0, v2}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->access$4(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;Lcom/lge/systemservice/core/IGlanceViewManager;)V

    .line 48
    invoke-static {v2}, Lcom/lge/systemservice/core/GlanceViewManagerGlobal;->access$5(Lcom/lge/systemservice/core/GlanceViewManagerGlobal;)V

    .line 49
    return-void
.end method
