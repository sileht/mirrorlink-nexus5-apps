.class public final Landroid/media/TimedTextEx$HorizontalCarriageReturn;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HorizontalCarriageReturn"
.end annotation


# instance fields
.field public final hcr:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "hcr"    # I

    .prologue
    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    iput p1, p0, Landroid/media/TimedTextEx$HorizontalCarriageReturn;->hcr:I

    .line 1091
    return-void
.end method
