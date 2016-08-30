.class Lcom/lge/gles/GLESSurfaceView$3;
.super Ljava/lang/Object;
.source "GLESSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/gles/GLESSurfaceView;->touchMove(FFF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/gles/GLESSurfaceView;

.field private final synthetic val$userData:F

.field private final synthetic val$x:F

.field private final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/lge/gles/GLESSurfaceView;FFF)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/gles/GLESSurfaceView$3;->this$0:Lcom/lge/gles/GLESSurfaceView;

    iput p2, p0, Lcom/lge/gles/GLESSurfaceView$3;->val$x:F

    iput p3, p0, Lcom/lge/gles/GLESSurfaceView$3;->val$y:F

    iput p4, p0, Lcom/lge/gles/GLESSurfaceView$3;->val$userData:F

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView$3;->this$0:Lcom/lge/gles/GLESSurfaceView;

    iget-object v0, v0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    iget v1, p0, Lcom/lge/gles/GLESSurfaceView$3;->val$x:F

    iget v2, p0, Lcom/lge/gles/GLESSurfaceView$3;->val$y:F

    iget v3, p0, Lcom/lge/gles/GLESSurfaceView$3;->val$userData:F

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/gles/GLESRenderer;->touchMove(FFF)Z

    .line 235
    return-void
.end method
