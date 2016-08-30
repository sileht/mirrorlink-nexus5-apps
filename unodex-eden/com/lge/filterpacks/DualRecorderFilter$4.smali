.class Lcom/lge/filterpacks/DualRecorderFilter$4;
.super Ljava/lang/Object;
.source "DualRecorderFilter.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/filterpacks/DualRecorderFilter;->open(Landroid/filterfw/core/FilterContext;)V
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
    iput-object p1, p0, Lcom/lge/filterpacks/DualRecorderFilter$4;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 5
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 687
    if-eqz p1, :cond_a

    .line 689
    const-string v0, "DualRecorderFilter"

    const-string v1, "DualRecorderFilter.open() mCameraId 0 setting onAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_9
    return-void

    .line 693
    :cond_a
    const-string v0, "DualRecorderFilter"

    const-string v1, "DualRecorderFilter.open() mCameraId 0 setting fail"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
