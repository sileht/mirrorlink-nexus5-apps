.class public final Landroid/media/TimedTextEx$Reset;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reset"
.end annotation


# instance fields
.field public final reset:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "reset"    # I

    .prologue
    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput p1, p0, Landroid/media/TimedTextEx$Reset;->reset:I

    .line 1071
    return-void
.end method
