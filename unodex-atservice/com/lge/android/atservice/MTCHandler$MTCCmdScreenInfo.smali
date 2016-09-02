.class Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;
.super Lcom/lge/android/atservice/MTCHandler$MTCCmd;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MTCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTCCmdScreenInfo"
.end annotation


# instance fields
.field public bitsPixel:B

.field public height:S

.field public screenId:B

.field final synthetic this$0:Lcom/lge/android/atservice/MTCHandler;

.field public width:S


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/MTCHandler;[B)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/android/atservice/MTCHandler;
    .param p2, "cmd"    # [B

    .prologue
    .line 531
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->this$0:Lcom/lge/android/atservice/MTCHandler;

    .line 532
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 533
    const/4 v0, 0x2

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->screenId:B

    .line 531
    return-void
.end method


# virtual methods
.method public toBytes([B)V
    .registers 5
    .param p1, "cmd"    # [B

    .prologue
    const v2, 0xff00

    .line 538
    invoke-super {p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->toBytes([B)V

    .line 539
    iget-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->screenId:B

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    .line 540
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->width:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    .line 541
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->width:S

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    .line 542
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->height:S

    and-int/lit16 v0, v0, 0xff0

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, p1, v1

    .line 543
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->height:S

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x6

    aput-byte v0, p1, v1

    .line 544
    iget-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenInfo;->bitsPixel:B

    const/4 v1, 0x7

    aput-byte v0, p1, v1

    .line 537
    return-void
.end method
