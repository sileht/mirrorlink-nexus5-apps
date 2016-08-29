.class Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;
.super Ljava/lang/Object;
.source "TZMirrorLinkInterfaceService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;->this$0:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 46
    const-string/jumbo v0, "TZMirrorLinkInterfaceService"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;->this$0:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-static {p2}, Lcom/lge/android/atservice/client/ILGATCMDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/android/atservice/client/ILGATCMDService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->-set0(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;

    .line 48
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;->this$0:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-static {v0}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->-get0(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;)Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 49
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;->this$0:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-static {v0}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->-get0(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;)Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;->onServiceConnected()V

    .line 45
    :cond_23
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 55
    const-string/jumbo v0, "TZMirrorLinkInterfaceService"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;->this$0:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-static {v0, v2}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->-set0(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;

    .line 57
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;->this$0:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-static {v0}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->-get0(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;)Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 58
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;->this$0:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-static {v0}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->-get0(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;)Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;->onServiceDisconnected()V

    .line 54
    :cond_20
    return-void
.end method
