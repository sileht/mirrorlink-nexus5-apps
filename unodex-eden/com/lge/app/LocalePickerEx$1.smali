.class Lcom/lge/app/LocalePickerEx$1;
.super Landroid/widget/ArrayAdapter;
.source "LocalePickerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/LocalePickerEx;->constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$fieldId:I

.field private final synthetic val$inflater:Landroid/view/LayoutInflater;

.field private final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II[Lcom/lge/app/LocalePickerEx$LocaleInfo;Landroid/view/LayoutInflater;II)V
    .registers 8
    .param p1, "$anonymous0"    # Landroid/content/Context;
    .param p2, "$anonymous1"    # I
    .param p3, "$anonymous2"    # I
    .param p4, "$anonymous3"    # [Lcom/lge/app/LocalePickerEx$LocaleInfo;

    .prologue
    .line 1
    iput-object p5, p0, Lcom/lge/app/LocalePickerEx$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p6, p0, Lcom/lge/app/LocalePickerEx$1;->val$layoutId:I

    iput p7, p0, Lcom/lge/app/LocalePickerEx$1;->val$fieldId:I

    .line 385
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 390
    if-nez p2, :cond_4a

    .line 391
    iget-object v4, p0, Lcom/lge/app/LocalePickerEx$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/lge/app/LocalePickerEx$1;->val$layoutId:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 396
    .local v3, "view":Landroid/view/View;
    :goto_b
    invoke-virtual {p0, p1}, Lcom/lge/app/LocalePickerEx$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    .line 397
    .local v0, "item":Lcom/lge/app/LocalePickerEx$LocaleInfo;
    if-eqz v0, :cond_49

    if-eqz v3, :cond_49

    .line 398
    iget v4, p0, Lcom/lge/app/LocalePickerEx$1;->val$fieldId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 399
    .local v2, "text":Landroid/widget/TextView;
    if-eqz v2, :cond_2d

    .line 400
    invoke-virtual {v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 404
    :cond_2d
    sget v4, Lcom/lge/internal/R$id;->radio1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 405
    .local v1, "radioButton":Landroid/widget/RadioButton;
    if-eqz v1, :cond_49

    .line 406
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 407
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 415
    .end local v1    # "radioButton":Landroid/widget/RadioButton;
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_49
    :goto_49
    return-object v3

    .line 393
    .end local v0    # "item":Lcom/lge/app/LocalePickerEx$LocaleInfo;
    .end local v3    # "view":Landroid/view/View;
    :cond_4a
    move-object v3, p2

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_b

    .line 409
    .restart local v0    # "item":Lcom/lge/app/LocalePickerEx$LocaleInfo;
    .restart local v1    # "radioButton":Landroid/widget/RadioButton;
    .restart local v2    # "text":Landroid/widget/TextView;
    :cond_4c
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_49
.end method
