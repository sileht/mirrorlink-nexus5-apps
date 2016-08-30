.class public Lcom/lge/systemservice/core/LEDManager$ErrorNums;
.super Ljava/lang/Object;
.source "LEDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LEDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorNums"
.end annotation


# static fields
.field public static final INVALID_RECORD:I = -0x4

.field public static final LED_DISABLED:I = -0x6

.field public static final LIGHT_DEVICE_ERROR:I = -0x8

.field public static final NO_LIGHT_DEVICE:I = -0x7

.field public static final NO_RECORD_IN_LEDLIST:I = -0x5

.field public static final NO_SERVICE:I = -0x1

.field public static final NULL_LEDLIST:I = -0x2

.field public static final NULL_RECORD:I = -0x3

.field public static final VALID:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
