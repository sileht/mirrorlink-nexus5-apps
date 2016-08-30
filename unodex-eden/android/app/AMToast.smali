.class public Landroid/app/AMToast;
.super Ljava/lang/Object;
.source "AMToast.java"


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AMToast"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Toast;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toast"    # Landroid/widget/Toast;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroid/app/AMToast;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    .line 27
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mTN"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 28
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    .local v3, "tn":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mParams"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 32
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 35
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7e8

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_31} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_31} :catch_3b

    .line 39
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "tn":Ljava/lang/Object;
    :goto_31
    return-void

    .line 36
    :catch_32
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    :goto_33
    const-string v4, "AMToast"

    const-string v5, "Can\'t change window type of toast."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3b
    move-exception v0

    goto :goto_33

    :catch_3d
    move-exception v0

    goto :goto_33
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/app/AMToast;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/app/AMToast;

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/AMToast;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/app/AMToast;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 97
    new-instance v0, Landroid/app/AMToast;

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/AMToast;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 50
    return-void
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getDuration()I

    move-result v0

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()F
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v0

    return v0
.end method

.method public getVerticalMargin()F
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getXOffset()I
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v0

    return v0
.end method

.method public getYOffset()I
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v0

    return v0
.end method

.method public setDuration(I)V
    .registers 3
    .param p1, "duration"    # I

    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 62
    return-void
.end method

.method public setGravity(III)V
    .registers 5
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .prologue
    .line 81
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 82
    return-void
.end method

.method public setMargin(FF)V
    .registers 4
    .param p1, "horizontalMargin"    # F
    .param p2, "verticalMargin"    # F

    .prologue
    .line 69
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Toast;->setMargin(FF)V

    .line 70
    return-void
.end method

.method public setText(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 105
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 106
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Landroid/app/AMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    return-void
.end method
