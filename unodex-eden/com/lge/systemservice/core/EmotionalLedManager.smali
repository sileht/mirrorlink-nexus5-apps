.class public final Lcom/lge/systemservice/core/EmotionalLedManager;
.super Lcom/lge/systemservice/core/LEDManager;
.source "EmotionalLedManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/systemservice/core/LEDManager;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public clearAllLeds()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-super {p0}, Lcom/lge/systemservice/core/LEDManager;->clearAllPatterns()I

    .line 70
    return-void
.end method

.method public restart()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    invoke-super {p0}, Lcom/lge/systemservice/core/LEDManager;->restartPatterns()I

    .line 83
    return-void
.end method

.method public setBrightness(I)V
    .registers 3
    .param p1, "brightness"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/lge/systemservice/core/LEDManager;->setBrightnessLed(II)I

    .line 118
    return-void
.end method

.method public start(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "record"    # Lcom/lge/systemservice/core/LGLedRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/lge/systemservice/core/LEDManager;->startPattern(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I

    .line 33
    return-void
.end method

.method public stop(Ljava/lang/String;I)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/lge/systemservice/core/LEDManager;->stopPattern(Ljava/lang/String;I)I

    .line 46
    return-void
.end method

.method public update(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "record"    # Lcom/lge/systemservice/core/LGLedRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/lge/systemservice/core/LEDManager;->updatePattern(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I

    .line 60
    return-void
.end method

.method public updateLightList(IIIIIILjava/lang/String;)V
    .registers 8
    .param p1, "action"    # I
    .param p2, "recordId"    # I
    .param p3, "exceptional"    # I
    .param p4, "ledARGB"    # I
    .param p5, "ledOnMS"    # I
    .param p6, "ledOffMS"    # I
    .param p7, "pkg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    invoke-super/range {p0 .. p7}, Lcom/lge/systemservice/core/LEDManager;->updatePatternList(IIIIIILjava/lang/String;)I

    .line 106
    return-void
.end method
