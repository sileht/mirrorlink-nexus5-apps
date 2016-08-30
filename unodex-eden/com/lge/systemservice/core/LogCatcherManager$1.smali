.class Lcom/lge/systemservice/core/LogCatcherManager$1;
.super Ljava/lang/Object;
.source "LogCatcherManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/LogCatcherManager;->getService()Lcom/lge/systemservice/core/ILogCatcherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/LogCatcherManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/LogCatcherManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/systemservice/core/LogCatcherManager$1;->this$0:Lcom/lge/systemservice/core/LogCatcherManager;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lge/systemservice/core/LogCatcherManager$1;->this$0:Lcom/lge/systemservice/core/LogCatcherManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LogCatcherManager;->access$0(Lcom/lge/systemservice/core/LogCatcherManager;Lcom/lge/systemservice/core/ILogCatcherManager;)V

    return-void
.end method
