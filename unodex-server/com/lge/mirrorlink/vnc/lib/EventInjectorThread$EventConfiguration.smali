.class public Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;
.super Ljava/lang/Object;
.source "EventInjectorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventConfiguration"
.end annotation


# instance fields
.field public devicekey:I

.field public funckey:B

.field public itukey:Z

.field public kbdCountry:S

.field public kbdLanguage:S

.field public knobkey:I

.field public multimediakey:I

.field public pressure:B

.field final synthetic this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

.field public touch:B

.field public uiCountry:S

.field public uiLanguage:S


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->this$0:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
