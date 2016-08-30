.class Lcom/lge/app/AlertDialogEx$ButtonInfo;
.super Ljava/lang/Object;
.source "AlertDialogEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/AlertDialogEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonInfo"
.end annotation


# instance fields
.field private button:Landroid/widget/Button;

.field private buttonString:Ljava/lang/String;

.field private fontSize:F

.field private fullStringWidth:I

.field private harfWidth:I

.field private isOverFlow:Z

.field private lineBreakArray:[I

.field private longestLineWidth:I

.field private marginWidth:I

.field private oHarfWidth:I

.field private paddingWidth:I

.field private singleWord:Z

.field private stringSpace:I

.field final synthetic this$0:Lcom/lge/app/AlertDialogEx;


# direct methods
.method private constructor <init>(Lcom/lge/app/AlertDialogEx;Landroid/widget/Button;)V
    .registers 6
    .param p2, "initVal"    # Landroid/widget/Button;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 255
    iput-object p1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->this$0:Lcom/lge/app/AlertDialogEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    .line 242
    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->stringSpace:I

    .line 243
    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fontSize:F

    .line 245
    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->singleWord:Z

    .line 247
    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    .line 248
    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->marginWidth:I

    .line 249
    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I

    .line 250
    iput-boolean v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->isOverFlow:Z

    .line 251
    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I

    .line 252
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;

    .line 253
    iput-object v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->lineBreakArray:[I

    .line 256
    iput-object p2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/app/AlertDialogEx;Landroid/widget/Button;Lcom/lge/app/AlertDialogEx$ButtonInfo;)V
    .registers 4

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;-><init>(Lcom/lge/app/AlertDialogEx;Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I

    return v0
.end method

.method static synthetic access$1(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I

    return v0
.end method

.method static synthetic access$10(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Z
    .registers 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->isOverFlow:Z

    return v0
.end method

.method static synthetic access$11(Lcom/lge/app/AlertDialogEx$ButtonInfo;)F
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fontSize:F

    return v0
.end method

.method static synthetic access$12(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lge/app/AlertDialogEx$ButtonInfo;IF)V
    .registers 3

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->setButtonWidth(IF)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I

    return v0
.end method

.method static synthetic access$3(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Z
    .registers 2

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->loadButtonInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    return v0
.end method

.method static synthetic access$5(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    return v0
.end method

.method static synthetic access$6(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I
    .registers 2

    .prologue
    .line 248
    iget v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->marginWidth:I

    return v0
.end method

.method static synthetic access$8(Lcom/lge/app/AlertDialogEx$ButtonInfo;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lge/app/AlertDialogEx$ButtonInfo;)V
    .registers 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->getStringWidth()V

    return-void
.end method

.method private getStringWidth()V
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 282
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-array v2, v10, [F

    .line 283
    .local v2, "charWidth":[F
    const/4 v0, 0x0

    .line 284
    .local v0, "breakLineAhead":I
    const/4 v1, 0x0

    .line 285
    .local v1, "breakLineFallow":I
    const/4 v4, 0x0

    .line 286
    .local v4, "firstLienWidth":I
    const/4 v8, 0x0

    .line 287
    .local v8, "tempWidth":I
    const/4 v9, 0x0

    .line 288
    .local v9, "totalStringWidth":I
    const/4 v7, 0x0

    .line 289
    .local v7, "stringHarfWidth":I
    const/4 v6, 0x1

    .line 290
    .local v6, "lineBreakArrayIdx":I
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    iget-object v13, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;

    invoke-virtual {v10, v13, v2}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 291
    array-length v13, v2

    move v10, v12

    :goto_1e
    if-lt v10, v13, :cond_31

    .line 294
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getMaxLines()I

    move-result v10

    if-ne v10, v11, :cond_38

    .line 295
    iput v9, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I

    iput v9, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I

    iput v9, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I

    iput v9, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    .line 355
    :cond_30
    :goto_30
    return-void

    .line 291
    :cond_31
    aget v3, v2, v10

    .line 292
    .local v3, "eachLength":F
    float-to-int v14, v3

    add-int/2addr v9, v14

    .line 291
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    .line 298
    .end local v3    # "eachLength":F
    :cond_38
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->lineBreakArray:[I

    array-length v10, v10

    const/4 v13, 0x3

    if-le v10, v13, :cond_40

    .line 299
    iput-boolean v12, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->singleWord:Z

    .line 301
    :cond_40
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_41
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v5, v10, :cond_83

    .line 334
    :cond_49
    :goto_49
    iput v9, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    .line 335
    iget-boolean v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->singleWord:Z

    if-eqz v10, :cond_df

    .line 338
    array-length v13, v2

    move v10, v12

    :goto_51
    if-lt v10, v13, :cond_cd

    .line 350
    :goto_53
    iget v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    if-eqz v10, :cond_30

    .line 351
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->this$0:Lcom/lge/app/AlertDialogEx;

    # getter for: Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I
    invoke-static {v10}, Lcom/lge/app/AlertDialogEx;->access$10(Lcom/lge/app/AlertDialogEx;)I

    move-result v10

    iget v13, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I

    if-le v10, v13, :cond_ef

    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->this$0:Lcom/lge/app/AlertDialogEx;

    # getter for: Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I
    invoke-static {v10}, Lcom/lge/app/AlertDialogEx;->access$10(Lcom/lge/app/AlertDialogEx;)I

    move-result v10

    :goto_67
    iput v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I

    .line 352
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->this$0:Lcom/lge/app/AlertDialogEx;

    # getter for: Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I
    invoke-static {v10}, Lcom/lge/app/AlertDialogEx;->access$10(Lcom/lge/app/AlertDialogEx;)I

    move-result v10

    iget v13, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I

    if-le v10, v13, :cond_f3

    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->this$0:Lcom/lge/app/AlertDialogEx;

    # getter for: Lcom/lge/app/AlertDialogEx;->buttonMinWidth:I
    invoke-static {v10}, Lcom/lge/app/AlertDialogEx;->access$10(Lcom/lge/app/AlertDialogEx;)I

    move-result v10

    :goto_79
    iput v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I

    .line 353
    iget v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->stringSpace:I

    if-le v9, v10, :cond_f6

    move v10, v11

    :goto_80
    iput-boolean v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->isOverFlow:Z

    goto :goto_30

    .line 302
    :cond_83
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->lineBreakArray:[I

    aget v10, v10, v6

    if-lez v10, :cond_49

    .line 305
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->lineBreakArray:[I

    aget v10, v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ne v5, v10, :cond_c5

    .line 307
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->lineBreakArray:[I

    add-int/lit8 v13, v6, 0x1

    aget v10, v10, v13

    const/4 v13, -0x1

    if-ne v10, v13, :cond_9e

    .line 308
    aget v10, v2, v5

    float-to-int v10, v10

    add-int/2addr v8, v10

    .line 311
    :cond_9e
    iget-object v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->this$0:Lcom/lge/app/AlertDialogEx;

    iget-object v13, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    # invokes: Lcom/lge/app/AlertDialogEx;->isHangul(C)Z
    invoke-static {v10, v13}, Lcom/lge/app/AlertDialogEx;->access$9(Lcom/lge/app/AlertDialogEx;C)Z

    move-result v10

    if-nez v10, :cond_c3

    .line 312
    move v1, v0

    .line 313
    move v0, v8

    .line 314
    div-int/lit8 v10, v9, 0x2

    if-le v0, v10, :cond_c3

    .line 315
    if-nez v1, :cond_b6

    .line 316
    move v4, v0

    .line 317
    goto :goto_49

    .line 319
    :cond_b6
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v0, v10

    div-int/lit8 v13, v9, 0x2

    sub-int/2addr v13, v1

    if-ge v10, v13, :cond_c1

    .line 321
    move v4, v0

    .line 322
    goto :goto_49

    .line 325
    :cond_c1
    move v4, v1

    .line 326
    goto :goto_49

    .line 330
    :cond_c3
    add-int/lit8 v6, v6, 0x1

    .line 332
    :cond_c5
    aget v10, v2, v5

    float-to-int v10, v10

    add-int/2addr v8, v10

    .line 301
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_41

    .line 338
    :cond_cd
    aget v3, v2, v10

    .line 339
    .restart local v3    # "eachLength":F
    float-to-int v14, v3

    add-int/2addr v7, v14

    .line 340
    div-int/lit8 v14, v9, 0x2

    if-le v7, v14, :cond_db

    .line 341
    iput v9, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I

    .line 342
    iput v7, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I

    goto/16 :goto_53

    .line 338
    :cond_db
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_51

    .line 347
    .end local v3    # "eachLength":F
    :cond_df
    iget v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    sub-int/2addr v10, v4

    if-le v10, v4, :cond_ed

    .line 348
    iget v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    sub-int/2addr v10, v4

    .line 347
    :goto_e7
    iput v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I

    iput v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I

    goto/16 :goto_53

    :cond_ed
    move v10, v4

    .line 348
    goto :goto_e7

    .line 351
    :cond_ef
    iget v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I

    goto/16 :goto_67

    .line 352
    :cond_f3
    iget v10, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I

    goto :goto_79

    :cond_f6
    move v10, v12

    .line 353
    goto :goto_80
.end method

.method private loadButtonInfo()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    if-eqz v1, :cond_7d

    .line 261
    iget-object v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->this$0:Lcom/lge/app/AlertDialogEx;

    # getter for: Lcom/lge/app/AlertDialogEx;->density:F
    invoke-static {v3}, Lcom/lge/app/AlertDialogEx;->access$6(Lcom/lge/app/AlertDialogEx;)F

    move-result v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fontSize:F

    .line 262
    iget-object v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    .line 263
    iget-object v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 264
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->marginWidth:I

    .line 265
    iget-object v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->marginWidth:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->stringSpace:I

    .line 268
    :try_start_3b
    iget-object v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->this$0:Lcom/lge/app/AlertDialogEx;

    # getter for: Lcom/lge/app/AlertDialogEx;->fieldMTransformed:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/lge/app/AlertDialogEx;->access$7(Lcom/lge/app/AlertDialogEx;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4f} :catch_73

    .line 273
    iget-object v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 274
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->lineBreakArray:[I

    .line 273
    # invokes: Lcom/lge/app/AlertDialogEx;->getLineBreakOpp(Ljava/lang/String;[CI[I)[I
    invoke-static {v1, v2, v3, v4}, Lcom/lge/app/AlertDialogEx;->access$8(Ljava/lang/String;[CI[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->lineBreakArray:[I

    .line 275
    const/4 v1, 0x1

    .line 277
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_72
    return v1

    .line 270
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :catch_73
    move-exception v1

    const-string v1, "AlertDialogEx"

    const-string v3, "Fail to get buttonString"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 271
    goto :goto_72

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7d
    move v1, v2

    .line 277
    goto :goto_72
.end method

.method private setButtonWidth(IF)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "weight"    # F

    .prologue
    .line 358
    iget v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    if-eqz v2, :cond_99

    .line 359
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 360
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez p1, :cond_9a

    .line 361
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 365
    :goto_11
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 366
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-boolean v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->singleWord:Z

    if-eqz v2, :cond_a1

    iget v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    if-le v2, p1, :cond_a1

    .line 368
    iget v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I

    if-le p1, v2, :cond_a1

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "padding":I
    iget v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    add-int v0, v2, v3

    .line 371
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    div-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getPaddingTop()I

    move-result v4

    div-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 372
    const-string v2, "AlertDialogEx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MIN Width: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  padding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 373
    const-string v4, "  full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  harf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v0    # "padding":I
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_99
    :goto_99
    return-void

    .line 363
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9a
    iget v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_11

    .line 377
    :cond_a1
    iget-object v2, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    iget v3, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->button:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 378
    const-string v2, "AlertDialogEx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NOR Width: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  padding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->paddingWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 379
    const-string v4, "  full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->fullStringWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  harf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->harfWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/AlertDialogEx$ButtonInfo;->buttonString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99
.end method
