.class Lcom/lge/filterpacks/DualRecorderFilter$3;
.super Ljava/lang/Object;
.source "DualRecorderFilter.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/filterpacks/DualRecorderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/filterpacks/DualRecorderFilter;


# direct methods
.method constructor <init>(Lcom/lge/filterpacks/DualRecorderFilter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/filterpacks/DualRecorderFilter$3;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1537
    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter$3;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    monitor-enter v1

    .line 1538
    :try_start_3
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter$3;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/filterpacks/DualRecorderFilter;->access$1(Lcom/lge/filterpacks/DualRecorderFilter;Z)V

    .line 1539
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter$3;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1537
    monitor-exit v1

    .line 1541
    return-void

    .line 1537
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method
