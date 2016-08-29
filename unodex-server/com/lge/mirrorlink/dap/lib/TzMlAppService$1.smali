.class Lcom/lge/mirrorlink/dap/lib/TzMlAppService$1;
.super Ljava/lang/Object;
.source "TzMlAppService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/dap/lib/TzMlAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/dap/lib/TzMlAppService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService$1;->this$0:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 41
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "sATService onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p2}, Lcom/lge/android/atservice/client/ILGATCMDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/android/atservice/client/ILGATCMDService;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->-set0(Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;

    .line 40
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 47
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "sATService onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->-set0(Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;

    .line 46
    return-void
.end method
