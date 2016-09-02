.class Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;
.super Lcom/lge/android/atservice/MTCHandler$MTCCmd;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MTCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTCCmdTouch"
.end annotation


# static fields
.field public static final DOUBLETAB:I = 0x3

.field public static final DOWN:I = 0x4

.field public static final MOVEBY:I = 0x1

.field public static final MOVETO:I = 0x0

.field public static final TAB:I = 0x2

.field public static final UP:I = 0x5


# instance fields
.field public action:B

.field public screenid:B

.field final synthetic this$0:Lcom/lge/android/atservice/MTCHandler;

.field public x:S

.field public y:S


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/MTCHandler;[B)V
    .registers 6
    .param p1, "this$0"    # Lcom/lge/android/atservice/MTCHandler;
    .param p2, "cmd"    # [B

    .prologue
    const/4 v2, 0x2

    .line 677
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->this$0:Lcom/lge/android/atservice/MTCHandler;

    .line 678
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 679
    aget-byte v1, p2, v2

    iput-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->screenid:B

    .line 680
    const/4 v1, 0x3

    aget-byte v1, p2, v1

    iput-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->action:B

    .line 683
    const/4 v1, 0x4

    invoke-static {p2, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 684
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 686
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->x:S

    .line 688
    const/4 v1, 0x6

    invoke-static {p2, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 689
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 691
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->y:S

    .line 677
    return-void
.end method


# virtual methods
.method public toBytes([B)V
    .registers 5
    .param p1, "cmd"    # [B

    .prologue
    const v2, 0xff00

    .line 696
    invoke-super {p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->toBytes([B)V

    .line 697
    iget-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->screenid:B

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    .line 698
    iget-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->action:B

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    .line 699
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->x:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    .line 700
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->x:S

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, p1, v1

    .line 701
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->y:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x6

    aput-byte v0, p1, v1

    .line 702
    iget-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdTouch;->y:S

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x7

    aput-byte v0, p1, v1

    .line 695
    return-void
.end method
