.class public Lcom/lge/cic/eden/namingrule/EventTitleMaker;
.super Ljava/lang/Object;
.source "EventTitleMaker.java"


# static fields
.field private static final GET_METHOD_NAME:Ljava/lang/String; = "get"

.field private static final MILLISECS_PER_DAY:J = 0x5265c00L

.field private static final SYSTEM_PROPERTIES_CLASS_NAME:Ljava/lang/String; = "android.os.SystemProperties"

.field private static isChinaFlag:Z

.field private static logger:Lcom/lge/cic/eden/utils/Logger;

.field private static sGetMethod:Ljava/lang/reflect/Method;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 523
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->sGetMethod:Ljava/lang/reflect/Method;

    .line 525
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->isChinaFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private checkAMPM(Lcom/lge/cic/eden/db/type/EventInfo;)Z
    .registers 12
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    const/16 v7, 0x9

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 355
    new-instance v4, Ljava/util/Date;

    iget-wide v8, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 356
    .local v4, "startDate":Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    iget-wide v8, p1, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 358
    .local v2, "endDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 359
    .local v3, "startCal":Ljava/util/Calendar;
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 361
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 362
    .local v1, "endCal":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 364
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 365
    .local v0, "ampm":I
    packed-switch v0, :pswitch_data_3a

    move v5, v6

    .line 379
    :cond_28
    :goto_28
    return v5

    .line 367
    :pswitch_29
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eqz v7, :cond_28

    move v5, v6

    .line 370
    goto :goto_28

    .line 373
    :pswitch_31
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v7, v5, :cond_28

    move v5, v6

    .line 376
    goto :goto_28

    .line 365
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_29
        :pswitch_31
    .end packed-switch
.end method

.method private static getAMPM(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 9
    .param p0, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    const/16 v5, 0x9

    .line 382
    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 383
    .local v4, "startDate":Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 385
    .local v2, "endDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 386
    .local v3, "startCal":Ljava/util/Calendar;
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 388
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 389
    .local v1, "endCal":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 391
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 392
    .local v0, "ampm":I
    packed-switch v0, :pswitch_data_42

    .line 406
    const-string v5, ""

    :goto_27
    return-object v5

    .line 394
    :pswitch_28
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_31

    .line 395
    const-string v5, " \uc624\uc804"

    goto :goto_27

    .line 397
    :cond_31
    const-string v5, ""

    goto :goto_27

    .line 400
    :pswitch_34
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3e

    .line 401
    const-string v5, " \uc624\ud6c4"

    goto :goto_27

    .line 403
    :cond_3e
    const-string v5, ""

    goto :goto_27

    .line 392
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_28
        :pswitch_34
    .end packed-switch
.end method

.method private getAMPMUsingToken(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 12
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x9

    .line 327
    new-instance v5, Ljava/util/Date;

    iget-wide v6, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 328
    .local v5, "startDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p1, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 330
    .local v3, "endDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 331
    .local v4, "startCal":Ljava/util/Calendar;
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 333
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 334
    .local v2, "endCal":Ljava/util/Calendar;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 335
    iget-object v6, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/lge/cic/eden/R$array;->am_pm_array:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "ampmArray":[Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 337
    .local v0, "ampm":I
    packed-switch v0, :pswitch_data_4e

    .line 351
    const-string v6, ""

    :goto_34
    return-object v6

    .line 339
    :pswitch_35
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_3f

    .line 340
    const/4 v6, 0x0

    aget-object v6, v1, v6

    goto :goto_34

    .line 342
    :cond_3f
    const-string v6, ""

    goto :goto_34

    .line 345
    :pswitch_42
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v9, :cond_4b

    .line 346
    aget-object v6, v1, v9

    goto :goto_34

    .line 348
    :cond_4b
    const-string v6, ""

    goto :goto_34

    .line 337
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_35
        :pswitch_42
    .end packed-switch
.end method

.method private static getDateToLong(Ljava/util/Date;)J
    .registers 5
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 273
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 274
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 275
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 276
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 277
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 278
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private static getDay(J)Ljava/lang/String;
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 287
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 289
    .local v2, "startDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 290
    .local v1, "startCal":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 292
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 293
    .local v0, "day":I
    packed-switch v0, :pswitch_data_2c

    .line 309
    const-string v3, ""

    :goto_16
    return-object v3

    .line 295
    :pswitch_17
    const-string v3, "\uc77c\uc694\uc77c"

    goto :goto_16

    .line 297
    :pswitch_1a
    const-string v3, "\uc6d4\uc694\uc77c"

    goto :goto_16

    .line 299
    :pswitch_1d
    const-string v3, "\ud654\uc694\uc77c"

    goto :goto_16

    .line 301
    :pswitch_20
    const-string v3, "\uc218\uc694\uc77c"

    goto :goto_16

    .line 303
    :pswitch_23
    const-string v3, "\ubaa9\uc694\uc77c"

    goto :goto_16

    .line 305
    :pswitch_26
    const-string v3, "\uae08\uc694\uc77c"

    goto :goto_16

    .line 307
    :pswitch_29
    const-string v3, "\ud1a0\uc694\uc77c"

    goto :goto_16

    .line 293
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method private getDayUsingToken(J)Ljava/lang/String;
    .registers 10
    .param p1, "time"    # J

    .prologue
    .line 314
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 316
    .local v3, "startDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 317
    .local v2, "startCal":Ljava/util/Calendar;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 319
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 321
    .local v0, "day":I
    iget-object v4, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/cic/eden/R$array;->a_day_of_the_week:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "dayofweek":[Ljava/lang/String;
    aget-object v4, v1, v0

    return-object v4
.end method

.method private static getDistanceOfDates(Ljava/util/Date;Ljava/util/Date;)I
    .registers 8
    .param p0, "startdate"    # Ljava/util/Date;
    .param p1, "enddate"    # Ljava/util/Date;

    .prologue
    .line 282
    invoke-static {p1}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->getDateToLong(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->getDateToLong(Ljava/util/Date;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long v0, v2, v4

    .line 283
    .local v0, "dateGap":J
    long-to-int v2, v0

    return v2
.end method

.method private static getTargetCountry()Ljava/lang/String;
    .registers 8

    .prologue
    .line 528
    const/4 v2, 0x0

    .line 530
    .local v2, "contryCode":Ljava/lang/String;
    :try_start_1
    sget-object v3, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->sGetMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1b

    .line 531
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 532
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->sGetMethod:Ljava/lang/reflect/Method;

    .line 534
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    sget-object v3, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->sGetMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.build.target_country"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2e} :catch_33

    .line 538
    :goto_2e
    if-nez v2, :cond_32

    .line 539
    const-string v2, "--"

    .line 541
    :cond_32
    return-object v2

    .line 535
    :catch_33
    move-exception v3

    goto :goto_2e
.end method

.method public static makeDayDurationInfo(JJ)Ljava/lang/String;
    .registers 12
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    .line 23
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 24
    .local v2, "format":Ljava/text/SimpleDateFormat;
    const-string v3, ""

    .line 26
    .local v3, "returnString":Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 27
    .local v4, "startDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 29
    .local v1, "endDate":Ljava/util/Date;
    invoke-static {v4, v1}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->getDistanceOfDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 30
    .local v0, "dateGap":I
    if-lez v0, :cond_55

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ~ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 32
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uc77c\uac04"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    :goto_54
    return-object v3

    .line 34
    :cond_55
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_54
.end method

.method public static makeEventDurationInfo(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 5
    .param p0, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    iget-wide v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->makeDayDurationInfo(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeEventTitle(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 9
    .param p0, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    const/4 v6, 0x1

    .line 48
    const-string v3, ""

    .line 49
    .local v3, "title":Ljava/lang/String;
    iget v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    sparse-switch v4, :sswitch_data_1c4

    .line 121
    const-string v3, "\uc774\uc57c\uae30"

    .line 125
    :goto_a
    return-object v3

    .line 51
    :sswitch_b
    const/4 v2, 0x0

    .line 52
    .local v2, "localTagState":I
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17

    .line 53
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    .line 54
    const/4 v2, 0x1

    .line 56
    :cond_17
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_48

    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_92

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    const/4 v2, 0x2

    .line 63
    :goto_35
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    :cond_48
    if-eqz v2, :cond_4d

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7d

    :cond_4d
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7d

    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6a

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    :cond_6a
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    :cond_7d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \uc5ec\ud589"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    goto/16 :goto_a

    .line 61
    :cond_92
    const/4 v2, 0x3

    goto :goto_35

    .line 74
    .end local v2    # "localTagState":I
    :sswitch_94
    const/4 v1, 0x0

    .line 75
    .local v1, "localTagCnt":I
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9f

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 79
    :cond_9f
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d1

    .line 80
    if-ne v1, v6, :cond_bc

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    :cond_bc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 85
    :cond_d1
    if-ne v1, v6, :cond_f4

    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f4

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    :cond_f4
    if-nez v1, :cond_109

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_109
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_122

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uc5d0\uc11c\uc758 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    :cond_122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-static {v6, v7}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->getDay(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->getAMPM(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    goto/16 :goto_a

    .line 98
    .end local v1    # "localTagCnt":I
    :sswitch_143
    const/4 v1, 0x0

    .line 99
    .restart local v1    # "localTagCnt":I
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_150

    .line 100
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 103
    :cond_150
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_191

    .line 104
    if-ne v1, v6, :cond_169

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    :cond_169
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    :cond_17c
    :goto_17c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \uc774\uc57c\uae30"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    goto/16 :goto_a

    .line 107
    :cond_191
    if-ge v1, v6, :cond_17c

    iget-object v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17c

    .line 108
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    goto :goto_17c

    .line 114
    .end local v1    # "localTagCnt":I
    :sswitch_19e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    .local v0, "calendar":Ljava/util/Calendar;
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uc6d4\uc758 \ubabb\ub2e4\ud55c \uc774\uc57c\uae30"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    goto/16 :goto_a

    .line 49
    nop

    :sswitch_data_1c4
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_94
        0x3 -> :sswitch_143
        0xd -> :sswitch_19e
    .end sparse-switch
.end method


# virtual methods
.method public getLocationStringForCard(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 9
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 410
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    .line 411
    .local v1, "country":Ljava/lang/String;
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    .line 412
    .local v0, "adminArea":Ljava/lang/String;
    iget-object v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    .line 413
    .local v2, "locality":Ljava/lang/String;
    iget-object v3, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    .line 416
    .local v3, "thoroughfare":Ljava/lang/String;
    const-string v4, "CN"

    invoke-static {}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->getTargetCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 417
    sget-object v4, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "make uri without location info. result = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 418
    iget-object v3, p1, Lcom/lge/cic/eden/db/type/EventInfo;->eventTitle:Ljava/lang/String;

    .line 513
    .end local v3    # "thoroughfare":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return-object v3

    .line 421
    .restart local v3    # "thoroughfare":Ljava/lang/String;
    :cond_2d
    iget v4, p1, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    packed-switch v4, :pswitch_data_2da

    .line 513
    :cond_32
    const/4 v3, 0x0

    goto :goto_2c

    .line 423
    :pswitch_34
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_69

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_69

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 426
    :cond_69
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8b

    :cond_71
    if-eqz v2, :cond_79

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8b

    .line 427
    :cond_79
    if-eqz v3, :cond_81

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2c

    .line 429
    :cond_81
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32

    move-object v3, v1

    .line 430
    goto :goto_2c

    .line 433
    :cond_8b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 439
    :pswitch_9d
    if-eqz v0, :cond_d3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d3

    if-eqz v2, :cond_d3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d3

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 442
    :cond_d3
    if-eqz v0, :cond_db

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f6

    :cond_db
    if-eqz v2, :cond_e3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f6

    .line 443
    :cond_e3
    if-eqz v3, :cond_eb

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2c

    .line 445
    :cond_eb
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32

    move-object v3, v1

    .line 446
    goto/16 :goto_2c

    .line 449
    :cond_f6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 455
    :pswitch_109
    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_13f

    if-eqz v2, :cond_13f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_13f

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 458
    :cond_13f
    if-eqz v0, :cond_147

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_162

    :cond_147
    if-eqz v2, :cond_14f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_162

    .line 459
    :cond_14f
    if-eqz v3, :cond_157

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2c

    .line 461
    :cond_157
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32

    move-object v3, v1

    .line 462
    goto/16 :goto_2c

    .line 465
    :cond_162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 471
    :pswitch_175
    if-eqz v1, :cond_1ab

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1ab

    if-eqz v0, :cond_1ab

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1ab

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 474
    :cond_1ab
    if-eqz v1, :cond_1e1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1e1

    if-eqz v2, :cond_1e1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1e1

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 477
    :cond_1e1
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32

    move-object v3, v1

    .line 478
    goto/16 :goto_2c

    .line 483
    :pswitch_1ec
    if-eqz v1, :cond_222

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_222

    if-eqz v0, :cond_222

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_222

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 486
    :cond_222
    if-eqz v1, :cond_258

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_258

    if-eqz v2, :cond_258

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_258

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 489
    :cond_258
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32

    move-object v3, v1

    .line 490
    goto/16 :goto_2c

    .line 495
    :pswitch_263
    if-eqz v1, :cond_299

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_299

    if-eqz v0, :cond_299

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_299

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 498
    :cond_299
    if-eqz v1, :cond_2cf

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2cf

    if-eqz v2, :cond_2cf

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2cf

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 501
    :cond_2cf
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32

    move-object v3, v1

    .line 502
    goto/16 :goto_2c

    .line 421
    :pswitch_data_2da
    .packed-switch 0x1
        :pswitch_34
        :pswitch_9d
        :pswitch_109
        :pswitch_175
        :pswitch_1ec
        :pswitch_263
    .end packed-switch
.end method

.method public isForChina()Ljava/lang/String;
    .registers 2

    .prologue
    .line 517
    invoke-static {}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->getTargetCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeEventTitleUsingToken(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 14
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v7, "title":Ljava/lang/StringBuilder;
    iget-object v3, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoCountryName:Ljava/lang/String;

    .line 132
    .local v3, "country":Ljava/lang/String;
    iget-object v0, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoAdminArea:Ljava/lang/String;

    .line 133
    .local v0, "adminArea":Ljava/lang/String;
    iget-object v5, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoLocality:Ljava/lang/String;

    .line 134
    .local v5, "locality":Ljava/lang/String;
    iget-object v6, p1, Lcom/lge/cic/eden/db/type/EventInfo;->geoThoroughfare:Ljava/lang/String;

    .line 135
    .local v6, "thoroughfare":Ljava/lang/String;
    iget-wide v8, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-direct {p0, v8, v9}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->getDayUsingToken(J)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "dayOfWeek":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->getAMPMUsingToken(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "ampm":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->checkAMPM(Lcom/lge/cic/eden/db/type/EventInfo;)Z

    move-result v2

    .line 139
    .local v2, "ampmFlag":Z
    iget v8, p1, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    packed-switch v8, :pswitch_data_518

    .line 268
    :cond_20
    :goto_20
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/cic/eden/namingrule/EventTitleMakerUtils;->removeEndSpaceInTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 141
    :pswitch_29
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_65

    if-eqz v5, :cond_65

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_65

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_internal_trip:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 144
    :cond_65
    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_bc

    :cond_6d
    if-eqz v5, :cond_75

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_bc

    .line 145
    :cond_75
    if-eqz v6, :cond_98

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_98

    .line 146
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_internal_trip:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 147
    :cond_98
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_20

    .line 148
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_internal_trip:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 151
    :cond_bc
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_internal_trip:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 157
    :pswitch_d6
    if-eqz v0, :cond_138

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_138

    if-eqz v5, :cond_138

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_138

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v2, :cond_11b

    .line 161
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday_am_pm:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 164
    :cond_11b
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 166
    :cond_138
    if-eqz v0, :cond_140

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1de

    :cond_140
    if-eqz v5, :cond_148

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1de

    .line 167
    :cond_148
    if-eqz v6, :cond_193

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_193

    .line 168
    if-eqz v2, :cond_174

    .line 169
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday_am_pm:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 172
    :cond_174
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 174
    :cond_193
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_20

    .line 175
    if-eqz v2, :cond_1bf

    .line 176
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday_am_pm:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 179
    :cond_1bf
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 183
    :cond_1de
    if-eqz v2, :cond_200

    .line 184
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday_am_pm:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 187
    :cond_200
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 194
    :pswitch_21d
    if-eqz v0, :cond_25a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_25a

    if-eqz v5, :cond_25a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_25a

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_story:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 197
    :cond_25a
    if-eqz v0, :cond_262

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2b2

    :cond_262
    if-eqz v5, :cond_26a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2b2

    .line 198
    :cond_26a
    if-eqz v6, :cond_28e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_28e

    .line 199
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_story:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 200
    :cond_28e
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_20

    .line 201
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_story:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 204
    :cond_2b2
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_story:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 210
    :pswitch_2cc
    if-eqz v3, :cond_309

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_309

    if-eqz v0, :cond_309

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_309

    .line 211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_external_trip:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 213
    :cond_309
    if-eqz v3, :cond_346

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_346

    if-eqz v5, :cond_346

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_346

    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_external_trip:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 216
    :cond_346
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_20

    .line 217
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_external_trip:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 223
    :pswitch_36a
    if-eqz v3, :cond_3cc

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3cc

    if-eqz v0, :cond_3cc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3cc

    .line 224
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    if-eqz v2, :cond_3af

    .line 227
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday_am_pm:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 230
    :cond_3af
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 232
    :cond_3cc
    if-eqz v3, :cond_42e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_42e

    if-eqz v5, :cond_42e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_42e

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    if-eqz v2, :cond_411

    .line 235
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday_am_pm:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 238
    :cond_411
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 240
    :cond_42e
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_20

    .line 241
    if-eqz v2, :cond_45a

    .line 242
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday_am_pm:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 245
    :cond_45a
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_oneday:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 252
    :pswitch_479
    if-eqz v3, :cond_4b6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4b6

    if-eqz v0, :cond_4b6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4b6

    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_story:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 255
    :cond_4b6
    if-eqz v3, :cond_4f3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4f3

    if-eqz v5, :cond_4f3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4f3

    .line 256
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_story:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 258
    :cond_4f3
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_20

    .line 259
    iget-object v8, p0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->context:Landroid/content/Context;

    sget v9, Lcom/lge/cic/eden/R$string;->memories_title_string_story:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_20

    .line 139
    nop

    :pswitch_data_518
    .packed-switch 0x1
        :pswitch_29
        :pswitch_d6
        :pswitch_21d
        :pswitch_2cc
        :pswitch_36a
        :pswitch_479
    .end packed-switch
.end method
