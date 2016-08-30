.class public Lcom/lge/app/floating/FloatingWindow$LayoutParams;
.super Ljava/lang/Object;
.source "FloatingWindow.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FloatingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public bounceMarginBottom:F

.field public bounceMarginLeft:F

.field public bounceMarginRight:F

.field public bounceMarginTop:F

.field public dontUseIme:Z

.field public fullScreen:Z

.field public height:I

.field public hideFullScreenButton:Z

.field public hideTitle:Z

.field public maxHeightWeight:F

.field public maxWidthWeight:F

.field public minHeightWeight:F

.field public minWidthWeight:F

.field public moveOption:I

.field public overIme:Z

.field public resizeOption:I

.field public useDoubleTapMinimize:Z

.field public useHardwareAcceleration:Z

.field public useOverlappingTitle:Z

.field public useOverlay:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v8, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlay:Z

    .line 81
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlappingTitle:Z

    .line 90
    const/4 v3, 0x3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->resizeOption:I

    .line 100
    iput v4, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->moveOption:I

    .line 108
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    .line 120
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->fullScreen:Z

    .line 130
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->overIme:Z

    .line 136
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideFullScreenButton:Z

    .line 142
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useDoubleTapMinimize:Z

    .line 220
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useHardwareAcceleration:Z

    .line 261
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    .line 274
    invoke-static {p1}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 275
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v3, 0x7f060000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 276
    const v3, 0x7f060001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 278
    const/high16 v3, 0x7f070000

    .line 277
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    .line 279
    .local v2, "widthWeight":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 280
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    .line 281
    iget v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    .line 283
    const v3, 0x7f070001

    .line 282
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->maxHeightWeight:F

    .line 285
    const v3, 0x7f070002

    .line 284
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->minHeightWeight:F

    .line 287
    const v3, 0x7f070003

    .line 286
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->maxWidthWeight:F

    .line 289
    const v3, 0x7f070004

    .line 288
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->minWidthWeight:F

    .line 291
    const v3, 0x7f070006

    .line 290
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginTop:F

    .line 293
    const v3, 0x7f070008

    .line 292
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginBottom:F

    .line 295
    const v3, 0x7f070005

    .line 294
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginLeft:F

    .line 297
    const v3, 0x7f070007

    .line 296
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginRight:F

    .line 298
    return-void
.end method


# virtual methods
.method public clone()Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    .registers 3

    .prologue
    .line 303
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 307
    :goto_6
    return-object v1

    .line 304
    :catch_7
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 307
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->clone()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location=("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " bounceMargin=("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginTop:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginRight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginBottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " hideFullScreenButton="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideFullScreenButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " hideTitle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " fullScreen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->fullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " overIme="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->overIme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " moveOption="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->moveOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " resizeOption="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->resizeOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " useDoubleTapMinimize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useDoubleTapMinimize:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " useHardwareAcceleration="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useHardwareAcceleration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " useOverlappingTitle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlappingTitle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " useOverlay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " dontUseIme="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
