.class public Lcom/lge/util/LGUserIcons;
.super Ljava/lang/Object;
.source "LGUserIcons.java"


# static fields
.field private static final USER_ICON_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/lge/util/LGUserIcons;->USER_ICON_COLORS:[I

    .line 27
    return-void

    .line 18
    :array_a
    .array-data 4
        0x106005c
        0x106005d
        0x106005e
        0x106005f
        0x1060060
        0x1060061
        0x1060062
        0x1060063
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    .line 41
    :goto_3
    return-object v0

    .line 38
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 39
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 38
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method public static getTwoPhoneIcon(IZ)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "userId"    # I
    .param p1, "light"    # Z

    .prologue
    const/4 v5, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_3d

    const v1, 0x1060065

    .line 56
    .local v1, "colorResId":I
    :goto_7
    if-nez p0, :cond_41

    sget v0, Lcom/lge/internal/R$drawable;->ic_account_owner:I

    .line 58
    .local v0, "accountResId":I
    :goto_b
    const/16 v3, -0x2710

    if-eq p0, v3, :cond_18

    .line 59
    sget-object v3, Lcom/lge/util/LGUserIcons;->USER_ICON_COLORS:[I

    sget-object v4, Lcom/lge/util/LGUserIcons;->USER_ICON_COLORS:[I

    array-length v4, v4

    rem-int v4, p0, v4

    aget v1, v3, v4

    .line 62
    :cond_18
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 63
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 65
    return-object v2

    .line 55
    .end local v0    # "accountResId":I
    .end local v1    # "colorResId":I
    :cond_3d
    const v1, 0x1060064

    goto :goto_7

    .line 56
    .restart local v1    # "colorResId":I
    :cond_41
    sget v0, Lcom/lge/internal/R$drawable;->ic_account_user:I

    goto :goto_b
.end method
