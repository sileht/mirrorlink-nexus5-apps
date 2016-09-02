.class Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;
.super Lcom/lge/android/atservice/MTCHandler$MTCCmd;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MTCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTCCmdScreenCaptureResponse"
.end annotation


# instance fields
.field public bits_pixel:B

.field public bmp_data:[B

.field public bmp_height:S

.field public bmp_size:I

.field public bmp_width:S

.field public data_type:B

.field public pack_type:B

.field public quantizer:B

.field public screen_id:B

.field final synthetic this$0:Lcom/lge/android/atservice/MTCHandler;

.field public threshold:B


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/MTCHandler;[B)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/android/atservice/MTCHandler;
    .param p2, "cmd"    # [B

    .prologue
    const/4 v1, 0x0

    .line 745
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->this$0:Lcom/lge/android/atservice/MTCHandler;

    .line 746
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 747
    const/4 v0, 0x2

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->screen_id:B

    .line 748
    iput-short v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_width:S

    .line 749
    iput-short v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_height:S

    .line 750
    iput-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bits_pixel:B

    .line 751
    iput-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->data_type:B

    .line 752
    iput-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->pack_type:B

    .line 753
    iput-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->quantizer:B

    .line 754
    iput-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->threshold:B

    .line 755
    iput v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_size:I

    .line 745
    return-void
.end method


# virtual methods
.method public toBytes([B)V
    .registers 6
    .param p1, "cmd"    # [B

    .prologue
    const v3, 0xff00

    .line 761
    invoke-super {p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->toBytes([B)V

    .line 762
    iget-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->screen_id:B

    const/4 v2, 0x2

    aput-byte v1, p1, v2

    .line 763
    iget-short v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_width:S

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, p1, v2

    .line 764
    iget-short v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_width:S

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, p1, v2

    .line 765
    iget-short v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_height:S

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, p1, v2

    .line 766
    iget-short v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_height:S

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, p1, v2

    .line 767
    iget-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bits_pixel:B

    const/4 v2, 0x7

    aput-byte v1, p1, v2

    .line 768
    iget-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->data_type:B

    const/16 v2, 0x8

    aput-byte v1, p1, v2

    .line 769
    iget-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->pack_type:B

    const/16 v2, 0x9

    aput-byte v1, p1, v2

    .line 770
    iget-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->quantizer:B

    const/16 v2, 0xa

    aput-byte v1, p1, v2

    .line 771
    iget-byte v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->threshold:B

    const/16 v2, 0xb

    aput-byte v1, p1, v2

    .line 772
    iget v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_size:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xc

    aput-byte v1, p1, v2

    .line 773
    iget v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_size:I

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/16 v2, 0xd

    aput-byte v1, p1, v2

    .line 774
    iget v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_size:I

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/16 v2, 0xe

    aput-byte v1, p1, v2

    .line 775
    iget v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_size:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/16 v2, 0xf

    aput-byte v1, p1, v2

    .line 777
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_76
    iget v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_size:I

    if-ge v0, v1, :cond_85

    .line 778
    add-int/lit8 v1, v0, 0x10

    iget-object v2, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdScreenCaptureResponse;->bmp_data:[B

    aget-byte v2, v2, v0

    aput-byte v2, p1, v1

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 758
    :cond_85
    return-void
.end method
