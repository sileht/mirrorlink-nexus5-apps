.class Lcom/lge/systemservice/core/LeccpManager$LeccpListenerId;
.super Ljava/lang/Object;
.source "LeccpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeccpListenerId"
.end annotation


# static fields
.field static final ON_BLE_SERVER_STATUS_CHANGED:I = 0x1

.field static final ON_CARD_ACTION_UPDATED:I = 0x8

.field static final ON_CARD_ADDED:I = 0x5

.field static final ON_CARD_REMOVED:I = 0x6

.field static final ON_CARD_UPDATED:I = 0x7

.field static final ON_DEAD_LISTENER_CHECK:I = 0x9

.field static final ON_MY_CARD_ADDED:I = 0x3

.field static final ON_MY_CARD_REMOVED:I = 0x4

.field static final ON_RESPONSE_ACTION:I = 0x2

.field static final ON_STATUS_CHANGED:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
