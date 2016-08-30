.class public Lcom/lge/view/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field static mLGSystemUiVisibility:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLGSystemUiVisibility(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibilityLG()I

    move-result v0

    sput v0, Lcom/lge/view/ViewUtil;->mLGSystemUiVisibility:I

    .line 25
    sget v0, Lcom/lge/view/ViewUtil;->mLGSystemUiVisibility:I

    return v0
.end method

.method public static setLGSystemUiVisibility(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibilityLG(I)V

    .line 17
    return-void
.end method
