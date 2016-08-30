.class Lcom/lge/filterpacks/DualRecorderFilter$1;
.super Ljava/lang/Object;
.source "DualRecorderFilter.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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
    iput-object p1, p0, Lcom/lge/filterpacks/DualRecorderFilter$1;->this$0:Lcom/lge/filterpacks/DualRecorderFilter;

    .line 1511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1513
    return-void
.end method
