.class Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;
.super Ljava/lang/Object;
.source "FramebufferUpdateThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FramebufferUpdateRequest"
.end annotation


# instance fields
.field h:I

.field incremental:Z

.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;ZIIII)V
    .registers 7
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;
    .param p2, "inc"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->this$0:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean p2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->incremental:Z

    .line 161
    iput p3, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->x:I

    .line 162
    iput p4, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->y:I

    .line 163
    iput p5, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->w:I

    .line 164
    iput p6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;->h:I

    .line 158
    return-void
.end method
