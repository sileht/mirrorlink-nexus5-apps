.class Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;
.super Lcom/lge/android/atservice/MTCHandler$MTCCmd;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MTCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTCCmdFastKey"
.end annotation


# instance fields
.field public keycode:B

.field public pause:S

.field final synthetic this$0:Lcom/lge/android/atservice/MTCHandler;


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/MTCHandler;[B)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/android/atservice/MTCHandler;
    .param p2, "cmd"    # [B

    .prologue
    const/4 v1, 0x4

    .line 644
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;->this$0:Lcom/lge/android/atservice/MTCHandler;

    .line 645
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 646
    const/4 v0, 0x2

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;->keycode:B

    .line 647
    array-length v0, p2

    if-le v0, v1, :cond_19

    .line 648
    const/4 v0, 0x3

    aget-byte v0, p2, v0

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;->pause:S

    .line 644
    :cond_19
    return-void
.end method


# virtual methods
.method public toBytes([B)V
    .registers 5
    .param p1, "cmd"    # [B

    .prologue
    const/4 v2, 0x4

    .line 654
    invoke-super {p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->toBytes([B)V

    .line 655
    iget-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;->keycode:B

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    .line 656
    array-length v0, p1

    if-le v0, v2, :cond_1f

    .line 657
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;->pause:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    .line 658
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdFastKey;->pause:S

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 653
    :cond_1f
    return-void
.end method
