.class Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;
.super Lcom/lge/android/atservice/MTCHandler$MTCCmd;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MTCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTCCmdAgentSetup"
.end annotation


# instance fields
.field public packetSize:I

.field final synthetic this$0:Lcom/lge/android/atservice/MTCHandler;

.field public transferDelay:I


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/MTCHandler;[B)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/android/atservice/MTCHandler;
    .param p2, "cmd"    # [B

    .prologue
    .line 787
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;->this$0:Lcom/lge/android/atservice/MTCHandler;

    .line 788
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 789
    const/4 v0, 0x2

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;->packetSize:I

    .line 790
    const/4 v0, 0x4

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;->transferDelay:I

    .line 787
    return-void
.end method


# virtual methods
.method public toBytes([B)V
    .registers 5
    .param p1, "cmd"    # [B

    .prologue
    const v2, 0xff00

    .line 795
    invoke-super {p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->toBytes([B)V

    .line 796
    iget v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;->packetSize:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    .line 797
    iget v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;->packetSize:I

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    .line 798
    iget v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;->transferDelay:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    .line 799
    iget v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdAgentSetup;->transferDelay:I

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, p1, v1

    .line 794
    return-void
.end method
