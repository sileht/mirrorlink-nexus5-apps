.class public Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;
.super Ljava/lang/Object;
.source "EventInjectorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchData"
.end annotation


# instance fields
.field pointerId:I

.field pressure:I

.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
