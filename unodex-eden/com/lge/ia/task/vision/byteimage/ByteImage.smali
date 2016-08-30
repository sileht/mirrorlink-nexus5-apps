.class public Lcom/lge/ia/task/vision/byteimage/ByteImage;
.super Ljava/lang/Object;
.source "ByteImage.java"


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(IILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/lge/ia/task/vision/byteimage/ByteImage;->width:I

    .line 12
    iput p2, p0, Lcom/lge/ia/task/vision/byteimage/ByteImage;->height:I

    .line 13
    iput-object p3, p0, Lcom/lge/ia/task/vision/byteimage/ByteImage;->data:Ljava/nio/ByteBuffer;

    .line 14
    return-void
.end method
