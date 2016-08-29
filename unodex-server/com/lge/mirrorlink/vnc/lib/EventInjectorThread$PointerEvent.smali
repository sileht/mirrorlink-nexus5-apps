.class Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;
.super Ljava/lang/Object;
.source "EventInjectorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerEvent"
.end annotation


# instance fields
.field public buttonMask:I

.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

.field public time:J

.field public x:F

.field public y:F


# direct methods
.method private constructor <init>(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;-><init>(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;)V

    return-void
.end method
