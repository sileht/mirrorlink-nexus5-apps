.class public Lcom/lge/gles/GLESParticleController$DummyObject;
.super Lcom/lge/gles/GLESObject;
.source "GLESParticleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/gles/GLESParticleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DummyObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/gles/GLESParticleController;


# direct methods
.method public constructor <init>(Lcom/lge/gles/GLESParticleController;Landroid/content/Context;ZZ)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "useTexture"    # Z
    .param p4, "useNormal"    # Z

    .prologue
    .line 359
    iput-object p1, p0, Lcom/lge/gles/GLESParticleController$DummyObject;->this$0:Lcom/lge/gles/GLESParticleController;

    .line 360
    invoke-direct {p0, p2, p3, p4}, Lcom/lge/gles/GLESObject;-><init>(Landroid/content/Context;ZZ)V

    .line 361
    return-void
.end method


# virtual methods
.method protected draw()V
    .registers 1

    .prologue
    .line 371
    return-void
.end method

.method protected getUniformLocations()V
    .registers 1

    .prologue
    .line 376
    return-void
.end method

.method protected update()V
    .registers 1

    .prologue
    .line 366
    return-void
.end method
