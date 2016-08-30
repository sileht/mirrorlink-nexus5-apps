.class Lcom/lge/cic/eden/controller/EdenController$1;
.super Landroid/database/ContentObserver;
.source "EdenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/controller/EdenController;->startImageContentChangeMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/controller/EdenController;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/controller/EdenController;Landroid/os/Handler;)V
    .registers 3
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/controller/EdenController$1;->this$0:Lcom/lge/cic/eden/controller/EdenController;

    .line 323
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 326
    sget-object v0, Lcom/lge/cic/eden/controller/EdenController;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChange(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/lge/cic/eden/controller/EdenController$1;->this$0:Lcom/lge/cic/eden/controller/EdenController;

    invoke-virtual {v0}, Lcom/lge/cic/eden/controller/EdenController;->syncOnRequest()V

    .line 328
    return-void
.end method
