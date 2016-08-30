.class Lcom/lge/dockservice/DockWindowService$1$2;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$1;->undockAtCenter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$1;

.field private final synthetic val$activityName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$1$2;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$1$2;->val$activityName:Ljava/lang/String;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$2;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$1$2;->val$activityName:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/dockservice/DockWindowService$1;->undock(Ljava/lang/String;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 270
    :goto_9
    return-void

    .line 267
    :catch_a
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method
