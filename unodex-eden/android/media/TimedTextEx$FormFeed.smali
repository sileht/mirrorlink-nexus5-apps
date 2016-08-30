.class public final Landroid/media/TimedTextEx$FormFeed;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormFeed"
.end annotation


# instance fields
.field public final formFeed:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "formFeed"    # I

    .prologue
    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    iput p1, p0, Landroid/media/TimedTextEx$FormFeed;->formFeed:I

    .line 1111
    return-void
.end method
