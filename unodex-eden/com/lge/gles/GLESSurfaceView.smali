.class public Lcom/lge/gles/GLESSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GLESSurfaceView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESSurfaceView"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mRenderer:Lcom/lge/gles/GLESRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/lge/gles/GLESRenderer;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "renderer"    # Lcom/lge/gles/GLESRenderer;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    .line 46
    invoke-direct {p0, p1, p3}, Lcom/lge/gles/GLESSurfaceView;->init(Landroid/content/Context;Lcom/lge/gles/GLESRenderer;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/gles/GLESRenderer;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderer"    # Lcom/lge/gles/GLESRenderer;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    .line 29
    const-string v0, "quilt GLESSurfaceView"

    const-string v1, "Q3D Engine Version : 1.00.04"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/lge/gles/GLESSurfaceView;->init(Landroid/content/Context;Lcom/lge/gles/GLESRenderer;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;Lcom/lge/gles/GLESRenderer;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderer"    # Lcom/lge/gles/GLESRenderer;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/gles/GLESSurfaceView;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    .line 52
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    invoke-interface {v0, p0}, Lcom/lge/gles/GLESRenderer;->setSurfaceView(Lcom/lge/gles/GLESSurfaceView;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    invoke-interface {v0}, Lcom/lge/gles/GLESRenderer;->initRenderer()V

    .line 83
    :cond_9
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 84
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    invoke-interface {v0}, Lcom/lge/gles/GLESRenderer;->initRenderer()V

    .line 96
    :cond_9
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 97
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .registers 3
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 65
    move-object v0, p1

    check-cast v0, Lcom/lge/gles/GLESRenderer;

    iput-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    .line 66
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    invoke-interface {v0, p0}, Lcom/lge/gles/GLESRenderer;->setSurfaceView(Lcom/lge/gles/GLESSurfaceView;)V

    .line 68
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 69
    return-void
.end method

.method public touchCancel(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-nez v0, :cond_5

    .line 259
    :goto_4
    return-void

    .line 253
    :cond_5
    new-instance v0, Lcom/lge/gles/GLESSurfaceView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/lge/gles/GLESSurfaceView$4;-><init>(Lcom/lge/gles/GLESSurfaceView;FF)V

    invoke-virtual {p0, v0}, Lcom/lge/gles/GLESSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public touchDown(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/gles/GLESSurfaceView;->touchDown(FFF)Z

    move-result v0

    return v0
.end method

.method public touchDown(FFF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "userData"    # F

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-nez v0, :cond_6

    .line 125
    const/4 v0, 0x0

    .line 134
    :goto_5
    return v0

    .line 128
    :cond_6
    new-instance v0, Lcom/lge/gles/GLESSurfaceView$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lge/gles/GLESSurfaceView$1;-><init>(Lcom/lge/gles/GLESSurfaceView;FFF)V

    invoke-virtual {p0, v0}, Lcom/lge/gles/GLESSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 134
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public touchMove(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/gles/GLESSurfaceView;->touchMove(FFF)Z

    move-result v0

    return v0
.end method

.method public touchMove(FFF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "userData"    # F

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-nez v0, :cond_6

    .line 228
    const/4 v0, 0x0

    .line 237
    :goto_5
    return v0

    .line 231
    :cond_6
    new-instance v0, Lcom/lge/gles/GLESSurfaceView$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lge/gles/GLESSurfaceView$3;-><init>(Lcom/lge/gles/GLESSurfaceView;FFF)V

    invoke-virtual {p0, v0}, Lcom/lge/gles/GLESSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 237
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public touchUp(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/lge/gles/GLESSurfaceView;->touchUp(FFFI)V

    .line 147
    return-void
.end method

.method public touchUp(FFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "userData"    # F

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/gles/GLESSurfaceView;->touchUp(FFFI)V

    .line 175
    return-void
.end method

.method public touchUp(FFFI)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "userFloatData"    # F
    .param p4, "userIntData"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-nez v0, :cond_5

    .line 200
    :goto_4
    return-void

    .line 194
    :cond_5
    new-instance v0, Lcom/lge/gles/GLESSurfaceView$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/gles/GLESSurfaceView$2;-><init>(Lcom/lge/gles/GLESSurfaceView;FFFI)V

    invoke-virtual {p0, v0}, Lcom/lge/gles/GLESSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public touchUp(FFI)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "userData"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/gles/GLESSurfaceView;->touchUp(FFFI)V

    .line 161
    return-void
.end method
