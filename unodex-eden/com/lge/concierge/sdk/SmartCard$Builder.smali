.class public final Lcom/lge/concierge/sdk/SmartCard$Builder;
.super Ljava/lang/Object;
.source "SmartCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/concierge/sdk/SmartCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mButton1Actions:[Ljava/lang/String;

.field public mButton1IconNumForWearable:I

.field private mButton1Text:Ljava/lang/String;

.field private mButton2Actions:[Ljava/lang/String;

.field public mButton2IconNumForWearable:I

.field private mButton2Text:Ljava/lang/String;

.field private mCardId:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mConfirmPopupActions:[Ljava/lang/String;

.field private mConfirmPopupDesc:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field public mDescriptionAutoTimeParam:J

.field private mExpiredTime:J

.field private mExtraImg:Landroid/graphics/Bitmap;

.field private mExtraOptions:[Ljava/lang/String;

.field private mIconNew:Landroid/graphics/Bitmap;

.field private mIconNormal:Landroid/graphics/Bitmap;

.field private mIsNotificationRequired:Z

.field private mIsRead:Z

.field private mIsUpdated:Z

.field private mIssuedTime:J

.field private mKeyDataValue:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mRawUri:Ljava/lang/String;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mSummary:Ljava/lang/String;

.field public mSummaryAutoTimeParam:J

.field private mTemplateNum:I

.field private mWearableNotiType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, -0x1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIsNotificationRequired:Z

    .line 289
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mContext:Landroid/content/Context;

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mTemplateNum:I

    .line 291
    iput-wide v2, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mSummaryAutoTimeParam:J

    .line 292
    iput-wide v2, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mDescriptionAutoTimeParam:J

    .line 293
    return-void
.end method

.method private getBitmap(III)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "resId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v6, 0x1

    .line 481
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 482
    .local v1, "bmpFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 483
    iget-object v4, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    int-to-float v5, p3

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 487
    .local v2, "heightRatio":I
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 489
    .local v3, "widthRatio":I
    if-gt v2, v6, :cond_2c

    if-le v3, v6, :cond_30

    .line 491
    :cond_2c
    if-le v2, v3, :cond_3e

    .line 493
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 499
    :cond_30
    :goto_30
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 501
    iget-object v4, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 502
    return-object v0

    .line 495
    :cond_3e
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_30
.end method


# virtual methods
.method public build()Lcom/lge/concierge/sdk/SmartCard;
    .registers 39

    .prologue
    .line 471
    new-instance v3, Lcom/lge/concierge/sdk/SmartCard;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mTemplateNum:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mCardId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIconNew:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIconNormal:Landroid/graphics/Bitmap;

    .line 472
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mSummary:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mDescription:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton1Text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton1Actions:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton2Text:Ljava/lang/String;

    .line 473
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton2Actions:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mConfirmPopupDesc:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mConfirmPopupActions:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIssuedTime:J

    move-wide/from16 v18, v0

    .line 474
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mExpiredTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIsUpdated:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIsRead:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mSummaryAutoTimeParam:J

    move-wide/from16 v24, v0

    .line 475
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mDescriptionAutoTimeParam:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mKeyDataValue:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mExtraImg:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mRemoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mRawUri:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 476
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIsNotificationRequired:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mWearableNotiType:I

    move/from16 v33, v0

    .line 477
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton1IconNumForWearable:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton2IconNumForWearable:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mExtraOptions:[Ljava/lang/String;

    move-object/from16 v36, v0

    .line 471
    const/16 v37, 0x0

    invoke-direct/range {v3 .. v37}, Lcom/lge/concierge/sdk/SmartCard;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JJZZJJLjava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/RemoteViews;Ljava/lang/String;ZIII[Ljava/lang/String;Lcom/lge/concierge/sdk/SmartCard;)V

    return-object v3
.end method

.method public setButton1Actions([Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "button1Actions"    # [Ljava/lang/String;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton1Actions:[Ljava/lang/String;

    .line 362
    return-object p0
.end method

.method public setButton1IconNumForWearable(I)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "icon"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton1IconNumForWearable:I

    .line 367
    return-object p0
.end method

.method public setButton1Text(Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "button1Text"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton1Text:Ljava/lang/String;

    .line 357
    return-object p0
.end method

.method public setButton2Actions([Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "button2Actions"    # [Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton2Actions:[Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public setButton2IconNumForWearable(I)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "icon"    # I

    .prologue
    .line 381
    iput p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton2IconNumForWearable:I

    .line 382
    return-object p0
.end method

.method public setButton2Text(Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "button2Text"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mButton2Text:Ljava/lang/String;

    .line 372
    return-object p0
.end method

.method public setCardId(Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mCardId:Ljava/lang/String;

    .line 302
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mCategory:Ljava/lang/String;

    .line 312
    return-object p0
.end method

.method public setConfirmPopupActions([Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "confirmPopupActions"    # [Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mConfirmPopupActions:[Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public setConfirmPopupDesc(Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "confirmPopupDesc"    # Ljava/lang/String;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mConfirmPopupDesc:Ljava/lang/String;

    .line 387
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mDescription:Ljava/lang/String;

    .line 352
    return-object p0
.end method

.method public setDescriptionAutoTimeParam(J)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 4
    .param p1, "param"    # J

    .prologue
    .line 421
    iput-wide p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mDescriptionAutoTimeParam:J

    .line 422
    return-object p0
.end method

.method public setExpiredTime(J)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 4
    .param p1, "expiredTime"    # J

    .prologue
    .line 401
    iput-wide p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mExpiredTime:J

    .line 402
    return-object p0
.end method

.method public setExtraImg(I)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mExtraImg:Landroid/graphics/Bitmap;

    .line 437
    return-object p0
.end method

.method public setExtraImg(III)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 5
    .param p1, "resId"    # I
    .param p2, "widthPixel"    # I
    .param p3, "heightPixel"    # I

    .prologue
    .line 441
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/concierge/sdk/SmartCard$Builder;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mExtraImg:Landroid/graphics/Bitmap;

    .line 442
    return-object p0
.end method

.method public setExtraImg(Landroid/graphics/Bitmap;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mExtraImg:Landroid/graphics/Bitmap;

    .line 432
    return-object p0
.end method

.method public setExtraOptions([Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "extraOptions"    # [Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mExtraOptions:[Ljava/lang/String;

    .line 467
    return-object p0
.end method

.method public setIconNew(I)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIconNew:Landroid/graphics/Bitmap;

    .line 327
    return-object p0
.end method

.method public setIconNew(III)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 5
    .param p1, "resId"    # I
    .param p2, "widthPixel"    # I
    .param p3, "heightPixel"    # I

    .prologue
    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/concierge/sdk/SmartCard$Builder;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIconNew:Landroid/graphics/Bitmap;

    .line 337
    return-object p0
.end method

.method public setIconNew(Landroid/graphics/Bitmap;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "iconNew"    # Landroid/graphics/Bitmap;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIconNew:Landroid/graphics/Bitmap;

    .line 317
    return-object p0
.end method

.method public setIconNormal(I)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIconNormal:Landroid/graphics/Bitmap;

    .line 332
    return-object p0
.end method

.method public setIconNormal(III)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 5
    .param p1, "resId"    # I
    .param p2, "widthPixel"    # I
    .param p3, "heightPixel"    # I

    .prologue
    .line 341
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/concierge/sdk/SmartCard$Builder;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIconNormal:Landroid/graphics/Bitmap;

    .line 342
    return-object p0
.end method

.method public setIconNormal(Landroid/graphics/Bitmap;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "iconNormal"    # Landroid/graphics/Bitmap;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIconNormal:Landroid/graphics/Bitmap;

    .line 322
    return-object p0
.end method

.method public setIsNotificationRequired(Z)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "required"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIsNotificationRequired:Z

    .line 457
    return-object p0
.end method

.method public setIsRead(Z)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "isRead"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIsRead:Z

    .line 412
    return-object p0
.end method

.method public setIsUpdated(Z)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "isUpdated"    # Z

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIsUpdated:Z

    .line 407
    return-object p0
.end method

.method public setIssuedTime(J)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 4
    .param p1, "issuedTime"    # J

    .prologue
    .line 396
    iput-wide p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mIssuedTime:J

    .line 397
    return-object p0
.end method

.method public setKeyDataValue(Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mKeyDataValue:Ljava/lang/String;

    .line 427
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mName:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public setRawUri(Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "rawUri"    # Ljava/lang/String;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mRawUri:Ljava/lang/String;

    .line 452
    return-object p0
.end method

.method public setRemoteViews(Landroid/widget/RemoteViews;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "rv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 447
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mSummary:Ljava/lang/String;

    .line 347
    return-object p0
.end method

.method public setSummaryAutoTimeParam(J)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 4
    .param p1, "param"    # J

    .prologue
    .line 416
    iput-wide p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mSummaryAutoTimeParam:J

    .line 417
    return-object p0
.end method

.method public setTemplateNum(I)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "templateNum"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mTemplateNum:I

    .line 297
    return-object p0
.end method

.method public setWearableNotiType(I)Lcom/lge/concierge/sdk/SmartCard$Builder;
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 461
    iput p1, p0, Lcom/lge/concierge/sdk/SmartCard$Builder;->mWearableNotiType:I

    .line 462
    return-object p0
.end method
