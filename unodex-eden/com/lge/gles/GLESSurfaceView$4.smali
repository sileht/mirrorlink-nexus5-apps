.class Lcom/lge/gles/GLESSurfaceView$4;
.super Ljava/lang/Object;
.source "GLESSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/gles/GLESSurfaceView;->touchCancel(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/gles/GLESSurfaceView;

.field private final synthetic val$x:F

.field private final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/lge/gles/GLESSurfaceView;FF)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/gles/GLESSurfaceView$4;->this$0:Lcom/lge/gles/GLESSurfaceView;

    iput p2, p0, Lcom/lge/gles/GLESSurfaceView$4;->val$x:F

    iput p3, p0, Lcom/lge/gles/GLESSurfaceView$4;->val$y:F

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView$4;->this$0:Lcom/lge/gles/GLESSurfaceView;

    iget-object v0, v0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    iget v1, p0, Lcom/lge/gles/GLESSurfaceView$4;->val$x:F

    iget v2, p0, Lcom/lge/gles/GLESSurfaceView$4;->val$y:F

    invoke-interface {v0, v1, v2}, Lcom/lge/gles/GLESRenderer;->touchCancel(FF)V

    .line 257
    return-void
.end method
