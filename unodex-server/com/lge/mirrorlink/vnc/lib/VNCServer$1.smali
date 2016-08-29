.class Lcom/lge/mirrorlink/vnc/lib/VNCServer$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "VNCServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/VNCServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/VNCServer;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/vnc/lib/VNCServer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$1;->this$0:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/VNCServer$1;->this$0:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->onWindowRotationChanged(I)V

    .line 195
    return-void
.end method
