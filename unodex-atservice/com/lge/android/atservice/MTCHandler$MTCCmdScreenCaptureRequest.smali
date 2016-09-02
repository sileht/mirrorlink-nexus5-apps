.class Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;
.super Lcom/lge/android/atservice/MTCHandler$MTCCmd;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MTCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTCCmdScreenCaptureRequest"
.end annotation


# instance fields
.field public data_type:B

.field public height:S

.field public left:S

.field public pack_type:B

.field public quantizer:B

.field public refresh:B

.field public screen_id:B

.field final synthetic this$0:Lcom/lge/android/atservice/MTCHandler;

.field public threshold:B

.field public top:S

.field public width:S


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/MTCHandler;[B)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/android/atservice/MTCHandler;
    .param p2, "cmd"    # [B

    .prologue
    .line 718
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->this$0:Lcom/lge/android/atservice/MTCHandler;

    .line 719
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 720
    const/4 v0, 0x2

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->screen_id:B

    .line 721
    const/4 v0, 0x3

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->left:S

    .line 722
    const/4 v0, 0x5

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->top:S

    .line 723
    const/4 v0, 0x7

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->width:S

    .line 724
    const/16 v0, 0x9

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->height:S

    .line 725
    const/16 v0, 0xb

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->refresh:B

    .line 726
    const/16 v0, 0xc

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->data_type:B

    .line 727
    const/16 v0, 0xd

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->pack_type:B

    .line 728
    const/16 v0, 0xe

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->quantizer:B

    .line 729
    const/16 v0, 0xf

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureRequest;->threshold:B

    .line 718
    return-void
.end method
