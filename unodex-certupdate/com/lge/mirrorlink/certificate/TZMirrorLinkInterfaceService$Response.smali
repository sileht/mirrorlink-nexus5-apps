.class public Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;
.super Ljava/lang/Object;
.source "TZMirrorLinkInterfaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public result:I

.field public status:I

.field final synthetic this$0:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;[B)V
    .registers 6
    .param p1, "this$0"    # Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;
    .param p2, "buffer"    # [B

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;->this$0:Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-eqz p2, :cond_7e

    .line 117
    const/4 v1, 0x0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 118
    const/4 v2, 0x2

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 117
    add-int/2addr v1, v2

    .line 118
    const/4 v2, 0x3

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 117
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;->result:I

    .line 120
    const/4 v1, 0x4

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 121
    const/4 v2, 0x6

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 120
    add-int/2addr v1, v2

    .line 121
    const/4 v2, 0x7

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 120
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;->length:I

    .line 123
    const/16 v1, 0x8

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x9

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 124
    const/16 v2, 0xa

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 123
    add-int/2addr v1, v2

    .line 124
    const/16 v2, 0xb

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 123
    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;->status:I

    .line 126
    const/16 v1, 0x108

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;->data:[B

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6f
    iget v1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;->length:I

    if-ge v0, v1, :cond_87

    .line 129
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;->data:[B

    add-int/lit8 v2, v0, 0xc

    aget-byte v2, p2, v2

    aput-byte v2, v1, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 133
    .end local v0    # "i":I
    :cond_7e
    const-string/jumbo v1, "TZMirrorLinkInterfaceService"

    const-string/jumbo v2, "Buffer for reponse is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_87
    return-void
.end method
