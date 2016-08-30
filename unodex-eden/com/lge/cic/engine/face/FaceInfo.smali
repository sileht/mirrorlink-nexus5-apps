.class public Lcom/lge/cic/engine/face/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;
    }
.end annotation


# instance fields
.field public expressionStrength:F

.field public expressionType:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

.field public faceRect:Landroid/graphics/RectF;

.field public id:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 18
    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v1

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/lge/cic/engine/face/FaceInfo;-><init>(IFFFFIF)V

    .line 19
    return-void
.end method

.method public constructor <init>(IFFFFIF)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "expressionType_i"    # I
    .param p7, "expressionStrength"    # F

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/lge/cic/engine/face/FaceInfo;->id:I

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/lge/cic/engine/face/FaceInfo;->faceRect:Landroid/graphics/RectF;

    .line 26
    packed-switch p6, :pswitch_data_20

    .line 34
    sget-object v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;->NEUTRAL:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    iput-object v0, p0, Lcom/lge/cic/engine/face/FaceInfo;->expressionType:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    .line 37
    :goto_13
    iput p7, p0, Lcom/lge/cic/engine/face/FaceInfo;->expressionStrength:F

    .line 38
    return-void

    .line 28
    :pswitch_16
    sget-object v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;->NEUTRAL:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    iput-object v0, p0, Lcom/lge/cic/engine/face/FaceInfo;->expressionType:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    goto :goto_13

    .line 31
    :pswitch_1b
    sget-object v0, Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;->SMILE:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    iput-object v0, p0, Lcom/lge/cic/engine/face/FaceInfo;->expressionType:Lcom/lge/cic/engine/face/FaceInfo$ExpressionType;

    goto :goto_13

    .line 26
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
    .end packed-switch
.end method
