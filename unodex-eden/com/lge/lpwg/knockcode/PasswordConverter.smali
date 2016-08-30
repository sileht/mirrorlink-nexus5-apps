.class public Lcom/lge/lpwg/knockcode/PasswordConverter;
.super Ljava/lang/Object;
.source "PasswordConverter.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PasswordConverter"

.field private static mDpi:I

.field private static mOrientations:[Z

.field private static mRotationFixed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/lge/lpwg/knockcode/PasswordConverter;->DEBUG:Z

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Z

    aput-boolean v1, v0, v2

    sput-object v0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    .line 14
    sput-boolean v2, Lcom/lge/lpwg/knockcode/PasswordConverter;->mRotationFixed:Z

    return-void

    :cond_19
    move v0, v2

    .line 10
    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPositionToPassword(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "mPointArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v14, 0x1

    .line 56
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v7, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/lpwg/knockcode/EasyKnockPoint;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v6, "password":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 59
    .local v8, "pwSize":I
    new-array v9, v14, [I

    .line 61
    .local v9, "tmp":[I
    const/4 v5, 0x0

    .line 62
    .local v5, "p":Landroid/graphics/Point;
    const/4 v3, 0x0

    .line 63
    .local v3, "isvalid":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-lt v2, v8, :cond_24

    .line 72
    if-eqz v8, :cond_1a

    if-nez v3, :cond_3b

    .line 73
    :cond_1a
    const-string v10, "PasswordConverter"

    const-string v11, "invalid touch points!"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v10, ""

    .line 97
    :goto_23
    return-object v10

    .line 64
    :cond_24
    if-eqz p0, :cond_2c

    .line 65
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "p":Landroid/graphics/Point;
    check-cast v5, Landroid/graphics/Point;

    .line 67
    .restart local v5    # "p":Landroid/graphics/Point;
    :cond_2c
    if-eqz v5, :cond_38

    iget v10, v5, Landroid/graphics/Point;->x:I

    if-lez v10, :cond_38

    iget v10, v5, Landroid/graphics/Point;->y:I

    if-lez v10, :cond_38

    .line 68
    or-int/lit8 v3, v3, 0x1

    .line 63
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 77
    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    if-lt v2, v8, :cond_b2

    .line 81
    sget v1, Lcom/lge/lpwg/knockcode/PasswordConverter;->mDpi:I

    .line 82
    .local v1, "dpi":I
    sget-boolean v10, Lcom/lge/lpwg/knockcode/PasswordConverter;->DEBUG:Z

    if-eqz v10, :cond_77

    .line 83
    const-string v10, "PasswordConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mOrientations : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    const/4 v13, 0x0

    aget-boolean v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    aget-boolean v12, v12, v14

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    const/4 v13, 0x2

    aget-boolean v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    const/4 v13, 0x3

    aget-boolean v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_77
    sget-object v10, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    sget-boolean v11, Lcom/lge/lpwg/knockcode/PasswordConverter;->mRotationFixed:Z

    invoke-static {v7, v10, v1, v11}, Lcom/lge/lpwg/knockcode/EasyKnockPassword;->getAnswers(Ljava/util/List;[ZIZ)[I

    move-result-object v0

    .line 87
    .local v0, "answers":[I
    move-object v9, v0

    .line 88
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_81
    array-length v10, v9

    if-lt v4, v10, :cond_d0

    .line 94
    sget-boolean v10, Lcom/lge/lpwg/knockcode/PasswordConverter;->DEBUG:Z

    if-eqz v10, :cond_ac

    .line 95
    const-string v10, "PasswordConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Array["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] string["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_ac
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_23

    .line 78
    .end local v0    # "answers":[I
    .end local v1    # "dpi":I
    .end local v4    # "j":I
    :cond_b2
    new-instance v11, Lcom/lge/lpwg/knockcode/EasyKnockPoint;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v12, v10

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-direct {v11, v12, v10}, Lcom/lge/lpwg/knockcode/EasyKnockPoint;-><init>(FF)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3c

    .line 89
    .restart local v0    # "answers":[I
    .restart local v1    # "dpi":I
    .restart local v4    # "j":I
    :cond_d0
    aget v10, v9, v4

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    rem-int v10, v4, v8

    if-nez v10, :cond_de

    .line 91
    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :cond_de
    add-int/lit8 v4, v4, 0x1

    goto :goto_81
.end method

.method public static resetOrientation()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 48
    sget-object v0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    aput-boolean v2, v0, v2

    .line 49
    sget-object v0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x1

    aput-boolean v2, v0, v1

    .line 50
    sget-object v0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 51
    sget-object v0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 52
    return-void
.end method

.method public static setDisplay(I)V
    .registers 1
    .param p0, "dpi"    # I

    .prologue
    .line 21
    sput p0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mDpi:I

    .line 22
    return-void
.end method

.method public static setOrientation(I)V
    .registers 5
    .param p0, "rotation"    # I

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-static {}, Lcom/lge/lpwg/knockcode/PasswordConverter;->resetOrientation()V

    .line 29
    packed-switch p0, :pswitch_data_2e

    .line 39
    const-string v0, "PasswordConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not  supported rotation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    if-eqz v0, :cond_24

    .line 41
    sget-object v0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 45
    :cond_24
    :goto_24
    return-void

    .line 34
    :pswitch_25
    sget-object v0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    if-eqz v0, :cond_24

    .line 35
    sget-object v0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mOrientations:[Z

    aput-boolean v3, v0, p0

    goto :goto_24

    .line 29
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public static setRotatedVariantPasswordChecking(Z)V
    .registers 1
    .param p0, "value"    # Z

    .prologue
    .line 17
    sput-boolean p0, Lcom/lge/lpwg/knockcode/PasswordConverter;->mRotationFixed:Z

    .line 18
    return-void
.end method
