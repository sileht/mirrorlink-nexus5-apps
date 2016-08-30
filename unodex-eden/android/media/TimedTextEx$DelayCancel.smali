.class public final Landroid/media/TimedTextEx$DelayCancel;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelayCancel"
.end annotation


# instance fields
.field public final delayCancel:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "delayCancel"    # I

    .prologue
    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    iput p1, p0, Landroid/media/TimedTextEx$DelayCancel;->delayCancel:I

    .line 1050
    return-void
.end method
