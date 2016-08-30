.class Lcom/lge/filterpacks/DualRecorderFilter$5;
.super Ljava/lang/Object;
.source "DualRecorderFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/filterpacks/DualRecorderFilter;->process(Landroid/filterfw/core/FilterContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/filterpacks/DualRecorderFilter;

.field private final synthetic val$mPreviewBitmap_origin:Landroid/graphics/Bitmap;

.field private final synthetic val$mPreviewFrame:Landroid/filterfw/core/Frame;


# direct methods
.method constructor <init>(Lcom/lge/filterpacks/DualRecorderFilter;Landroid/graphics/Bitmap;Landroid/filterfw/core/Frame;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    iput-object p2, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->val$mPreviewBitmap_origin:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->val$mPreviewFrame:Landroid/filterfw/core/Frame;

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 978
    const/4 v0, 0x0

    .line 980
    .local v0, "mPreviewBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    # getter for: Lcom/lge/filterpacks/DualRecorderFilter;->mCaptureRotationDegree:I
    invoke-static {v2}, Lcom/lge/filterpacks/DualRecorderFilter;->access$2(Lcom/lge/filterpacks/DualRecorderFilter;)I

    move-result v2

    if-eqz v2, :cond_15

    .line 981
    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->val$mPreviewBitmap_origin:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    # getter for: Lcom/lge/filterpacks/DualRecorderFilter;->mCaptureRotationDegree:I
    invoke-static {v3}, Lcom/lge/filterpacks/DualRecorderFilter;->access$2(Lcom/lge/filterpacks/DualRecorderFilter;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/filterpacks/DualRecorderFilter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 984
    :cond_15
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 985
    .local v1, "mPreviewStream":Ljava/io/ByteArrayOutputStream;
    if-eqz v0, :cond_42

    .line 986
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    # getter for: Lcom/lge/filterpacks/DualRecorderFilter;->mQuality:I
    invoke-static {v3}, Lcom/lge/filterpacks/DualRecorderFilter;->access$3(Lcom/lge/filterpacks/DualRecorderFilter;)I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 988
    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    # getter for: Lcom/lge/filterpacks/DualRecorderFilter;->mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;
    invoke-static {v2}, Lcom/lge/filterpacks/DualRecorderFilter;->access$4(Lcom/lge/filterpacks/DualRecorderFilter;)Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 989
    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    # getter for: Lcom/lge/filterpacks/DualRecorderFilter;->mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;
    invoke-static {v2}, Lcom/lge/filterpacks/DualRecorderFilter;->access$4(Lcom/lge/filterpacks/DualRecorderFilter;)Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;->onPreviewFrame([B)V

    .line 993
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_48

    .line 997
    :goto_3f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 999
    :cond_42
    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter$5;->val$mPreviewFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 1000
    return-void

    .line 995
    :catch_48
    move-exception v2

    const-string v2, "DualRecorderFilter"

    const-string v3, "mPreviewStream.close() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method
