.class Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;
.super Lcom/lge/android/atservice/MTCHandler$MTCCmd;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MTCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTCCmdKey"
.end annotation


# instance fields
.field public delay:S

.field public keycode:B

.field public pause:S

.field final synthetic this$0:Lcom/lge/android/atservice/MTCHandler;

.field public type:B


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/MTCHandler;[B)V
    .registers 6
    .param p1, "this$0"    # Lcom/lge/android/atservice/MTCHandler;
    .param p2, "cmd"    # [B

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x5

    .line 612
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->this$0:Lcom/lge/android/atservice/MTCHandler;

    .line 613
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 614
    const/4 v0, 0x2

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->type:B

    .line 615
    const/4 v0, 0x3

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->keycode:B

    .line 616
    array-length v0, p2

    if-le v0, v1, :cond_1f

    .line 617
    const/4 v0, 0x4

    aget-byte v0, p2, v0

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->delay:S

    .line 619
    :cond_1f
    array-length v0, p2

    if-le v0, v2, :cond_2d

    .line 620
    const/4 v0, 0x6

    aget-byte v0, p2, v0

    aget-byte v1, p2, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->pause:S

    .line 612
    :cond_2d
    return-void
.end method


# virtual methods
.method public toBytes([B)V
    .registers 7
    .param p1, "cmd"    # [B

    .prologue
    const v4, 0xff00

    const/4 v3, 0x7

    const/4 v2, 0x5

    .line 626
    invoke-super {p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->toBytes([B)V

    .line 627
    iget-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->type:B

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    .line 628
    iget-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->keycode:B

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    .line 629
    array-length v0, p1

    if-le v0, v2, :cond_25

    .line 630
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->delay:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    .line 631
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->delay:S

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 633
    :cond_25
    array-length v0, p1

    if-le v0, v3, :cond_38

    .line 634
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->pause:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x6

    aput-byte v0, p1, v1

    .line 635
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdKey;->pause:S

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    .line 625
    :cond_38
    return-void
.end method
