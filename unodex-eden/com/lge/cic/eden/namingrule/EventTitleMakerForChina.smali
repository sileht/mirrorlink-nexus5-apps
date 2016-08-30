.class public Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;
.super Ljava/lang/Object;
.source "EventTitleMakerForChina.java"


# static fields
.field private static final MILLISECS_PER_DAY:J = 0x5265c00L


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->context:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private getAMPMUsingToken(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 12
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x9

    .line 105
    new-instance v5, Ljava/util/Date;

    iget-wide v6, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 106
    .local v5, "startDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p1, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 108
    .local v3, "endDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 109
    .local v4, "startCal":Ljava/util/Calendar;
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 112
    .local v2, "endCal":Ljava/util/Calendar;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 113
    iget-object v6, p0, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/lge/cic/eden/R$array;->am_pm_array:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "ampmArray":[Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 115
    .local v0, "ampm":I
    packed-switch v0, :pswitch_data_4e

    .line 129
    const-string v6, ""

    :goto_34
    return-object v6

    .line 117
    :pswitch_35
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_3f

    .line 118
    const/4 v6, 0x0

    aget-object v6, v1, v6

    goto :goto_34

    .line 120
    :cond_3f
    const-string v6, ""

    goto :goto_34

    .line 123
    :pswitch_42
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v9, :cond_4b

    .line 124
    aget-object v6, v1, v9

    goto :goto_34

    .line 126
    :cond_4b
    const-string v6, ""

    goto :goto_34

    .line 115
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

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 78
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 79
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 80
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 81
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 83
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private getDayUsingToken(J)Ljava/lang/String;
    .registers 10
    .param p1, "time"    # J

    .prologue
    .line 92
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 94
    .local v3, "startDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 95
    .local v2, "startCal":Ljava/util/Calendar;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 97
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 99
    .local v0, "day":I
    iget-object v4, p0, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/cic/eden/R$array;->a_day_of_the_week:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "dayofweek":[Ljava/lang/String;
    aget-object v4, v1, v0

    return-object v4
.end method

.method private static getDistanceOfDates(Ljava/util/Date;Ljava/util/Date;)I
    .registers 8
    .param p0, "startdate"    # Ljava/util/Date;
    .param p1, "enddate"    # Ljava/util/Date;

    .prologue
    .line 87
    invoke-static {p1}, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->getDateToLong(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->getDateToLong(Ljava/util/Date;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long v0, v2, v4

    .line 88
    .local v0, "dateGap":J
    long-to-int v2, v0

    return v2
.end method

.method private static getMonth(J)I
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 52
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 54
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private static makeDateString(J)Ljava/lang/String;
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 46
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static makeDayDurationInfo(JJ)Ljava/lang/String;
    .registers 12
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    .line 57
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 58
    .local v2, "format":Ljava/text/SimpleDateFormat;
    const-string v3, ""

    .line 60
    .local v3, "returnString":Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 61
    .local v4, "startDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 63
    .local v1, "endDate":Ljava/util/Date;
    invoke-static {v4, v1}, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->getDistanceOfDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 64
    .local v0, "dateGap":I
    if-lez v0, :cond_33

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\uc77c\uac04"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    :goto_32
    return-object v3

    .line 67
    :cond_33
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32
.end method

.method private static makeEventDurationInfo(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 5
    .param p0, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    iget-wide v2, p0, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->makeDayDurationInfo(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public makeEventTitle(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 10
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 23
    iget-object v2, p0, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/cic/eden/R$array;->month_of_year_fullname:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "monthArray":[Ljava/lang/String;
    const-string v1, ""

    .line 26
    .local v1, "title":Ljava/lang/String;
    iget v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->eventType:I

    packed-switch v2, :pswitch_data_5a

    .line 41
    :goto_13
    invoke-static {v1}, Lcom/lge/cic/eden/namingrule/EventTitleMakerUtils;->removeEndSpaceInTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 29
    :pswitch_18
    iget-object v2, p0, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->context:Landroid/content/Context;

    sget v3, Lcom/lge/cic/eden/R$string;->memories_title_string_story:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-static {v6, v7}, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->getMonth(J)I

    move-result v5

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 30
    goto :goto_13

    .line 33
    :pswitch_38
    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-direct {p0, v4, v5}, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->getDayUsingToken(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/cic/eden/namingrule/EventTitleMakerForChina;->getAMPMUsingToken(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    goto :goto_13

    .line 26
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_38
        :pswitch_18
    .end packed-switch
.end method
