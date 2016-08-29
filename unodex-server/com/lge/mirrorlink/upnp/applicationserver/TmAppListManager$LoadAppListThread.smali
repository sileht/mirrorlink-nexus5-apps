.class Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$LoadAppListThread;
.super Ljava/lang/Thread;
.source "TmAppListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAppListThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$LoadAppListThread;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$LoadAppListThread;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->loadAllAppList()V

    .line 1291
    return-void
.end method
