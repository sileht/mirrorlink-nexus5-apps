.class public Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;
.super Ljava/lang/Object;
.source "CardPublisher.java"


# static fields
.field private static final MILLISECS_PER_DAY:I = 0x5265c00

.field private static final MILLISECS_PER_HOUR:I = 0x36ee80

.field private static final TODAY_EVENT:I = 0x0

.field private static final TODAY_LASTYEAR_EVENT:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 40
    iput-object p1, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->context:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "create DatabaseBridge"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->create(Landroid/content/ContentResolver;)V

    .line 44
    return-void
.end method

.method private checkCard()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 216
    iget-object v1, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "concierge_memories"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_17

    .line 217
    iget-object v1, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "  concierge_card_key does exist."

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 221
    :goto_16
    return v0

    .line 220
    :cond_17
    iget-object v0, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "  concierge_card_key does not exist."

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private getEventDistanceofDate(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 8
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 239
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 240
    .local v2, "startDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    iget-wide v4, p1, Lcom/lge/cic/eden/db/type/EventInfo;->endTime:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 241
    .local v1, "endDate":Ljava/util/Date;
    invoke-static {v2, v1}, Lcom/lge/cic/eden/clustering/utils/StaticEventTypeDecider;->getDistanceOfDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 242
    .local v0, "date":I
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getEventInfosAfter(I)Ljava/util/ArrayList;
    .registers 10
    .param p1, "eventId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/EventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "bridge":Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    :try_start_2
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_5} :catch_3e

    move-result-object v0

    .line 160
    const-class v1, Lcom/lge/cic/eden/db/type/EventInfo;

    .line 161
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v2

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EVENT_ID > "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "E_START_TIME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 165
    .local v7, "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    if-nez v7, :cond_4c

    .line 166
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 170
    :goto_3d
    return-object v7

    .line 154
    :catch_3e
    move-exception v6

    .line 155
    .local v6, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "DatabaseBridge havn\'t created"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    .line 156
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3d

    .line 169
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v7    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_4c
    iget-object v1, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    num of eEventInfos After "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private getEventInfosAtLastYear()Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/EventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "getEventInfosAtLastYear()"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 177
    .local v2, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 178
    .local v11, "end":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 179
    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 181
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 182
    .local v9, "date":Ljava/util/Date;
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 183
    invoke-virtual {v11, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 185
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Calendar;->set(IIIII)V

    .line 186
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x17

    const/16 v8, 0x3b

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Ljava/util/Calendar;->set(IIIII)V

    .line 188
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 189
    .local v16, "startTime":J
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 191
    .local v12, "endTime":J
    const/4 v3, 0x0

    .line 193
    .local v3, "bridge":Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    :try_start_5a
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    :try_end_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_5a .. :try_end_5d} :catch_ba

    move-result-object v3

    .line 200
    const-class v4, Lcom/lge/cic/eden/db/type/EventInfo;

    .line 201
    invoke-static {}, Lcom/lge/cic/eden/db/table/EventInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/cic/eden/db/table/TableInfo;->getTableUri()Landroid/net/Uri;

    move-result-object v5

    .line 202
    const/4 v6, 0x0

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(E_START_TIME > "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 204
    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "E_START_TIME"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 205
    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "E_VISIBILITY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 203
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 206
    const/4 v8, 0x0

    .line 200
    invoke-virtual/range {v3 .. v8}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 207
    .local v14, "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    if-nez v14, :cond_ca

    .line 208
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 212
    :goto_b9
    return-object v14

    .line 194
    :catch_ba
    move-exception v10

    .line 195
    .local v10, "e":Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "DatabaseBridge havn\'t created"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    .line 196
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b9

    .line 211
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    .restart local v14    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_ca
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    num of eventInfos at last year is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    goto :goto_b9
.end method

.method private getEventStartTime(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 6
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 231
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/EventInfo;->startTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 233
    .local v1, "startDate":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 234
    .local v0, "dateFormat":Ljava/text/DateFormat;
    iget-object v2, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 235
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getEventTitle(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "eventInfo"    # Lcom/lge/cic/eden/db/type/EventInfo;

    .prologue
    .line 226
    new-instance v0, Lcom/lge/cic/eden/namingrule/EventTitleMaker;

    iget-object v1, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, "tm":Lcom/lge/cic/eden/namingrule/EventTitleMaker;
    invoke-virtual {v0, p1}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->makeEventTitleUsingToken(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized getNewEventInfos()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/EventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "getNewEventInfos()"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    invoke-virtual {p0}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->getPrefLastestEventId()I

    move-result v2

    .line 122
    .local v2, "lastestEventId":I
    invoke-direct {p0, v2}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->getEventInfosAfter(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 123
    .local v1, "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 137
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_58

    .line 138
    iget-object v5, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "  there are new "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " events and the newest id is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/EventInfo;

    iget v4, v4, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 141
    :cond_58
    invoke-virtual {p0, v2}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->setPrefLastestEventId(I)V

    .line 144
    :cond_5b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 145
    iget-object v4, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "  publishing card(or event) dose not exist."

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_a7

    .line 147
    :cond_68
    monitor-exit p0

    return-object v3

    .line 125
    :cond_6a
    :try_start_6a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/EventInfo;

    .line 126
    .local v0, "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    iget v5, v0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    if-nez v5, :cond_7e

    .line 127
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :goto_77
    iget v5, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    if-le v5, v2, :cond_21

    .line 133
    iget v2, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    goto :goto_21

    .line 129
    :cond_7e
    iget-object v5, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "eventId "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not visible. ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_6a .. :try_end_a6} :catchall_a7

    goto :goto_77

    .line 117
    .end local v0    # "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    .end local v1    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .end local v2    # "lastestEventId":I
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :catchall_a7
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private makeCardUri(Ljava/util/ArrayList;IJ)Ljava/lang/String;
    .registers 24
    .param p2, "eventType"    # I
    .param p3, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/EventInfo;",
            ">;IJ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    new-instance v13, Ljava/util/GregorianCalendar;

    invoke-direct {v13}, Ljava/util/GregorianCalendar;-><init>()V

    .line 275
    .local v13, "gregorianCalendar":Ljava/util/GregorianCalendar;
    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "makeCardUri, expireTime = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3d

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    const-string v17, "eventInfos is null."

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 280
    const/4 v15, 0x0

    .line 340
    :goto_3c
    return-object v15

    .line 283
    :cond_3d
    new-instance v12, Lcom/lge/cic/eden/namingrule/EventTitleMaker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;-><init>(Landroid/content/Context;)V

    .line 285
    .local v12, "eventTitleMaker":Lcom/lge/cic/eden/namingrule/EventTitleMaker;
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/cic/eden/db/type/EventInfo;

    .line 286
    .local v8, "eventInfo":Lcom/lge/cic/eden/db/type/EventInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "information of event for card, visibility = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v8, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v12, v8}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->getLocationStringForCard(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "eventLocation":Ljava/lang/String;
    if-nez v9, :cond_7a

    .line 289
    const/4 v15, 0x0

    goto :goto_3c

    .line 292
    :cond_7a
    const-string v3, "MemoriesCard"

    .line 293
    .local v3, "cardCategory":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->getEventTitle(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v11

    .line 294
    .local v11, "eventTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->getEventStartTime(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v10

    .line 295
    .local v10, "eventStartTime":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->getEventDistanceofDate(Lcom/lge/cic/eden/db/type/EventInfo;)Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, "eventDistantOfDate":Ljava/lang/String;
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "deleteTime":Ljava/lang/String;
    const-string v4, ""

    .line 299
    .local v4, "cardSource":Ljava/lang/String;
    const-string v16, "1"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_166

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    const-string v17, "    just 1day"

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 301
    const-string v4, "[@string/memories_title_source_text_no_duration]"

    .line 308
    :goto_ab
    const-string v2, "[@string/memories_ok]"

    .line 310
    .local v2, "cardButton":Ljava/lang/String;
    if-nez p2, :cond_184

    .line 312
    const-string v5, ""

    .line 313
    .local v5, "cardTitle":Ljava/lang/String;
    new-instance v14, Lcom/lge/cic/eden/namingrule/EventTitleMaker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;-><init>(Landroid/content/Context;)V

    .line 314
    .local v14, "tm":Lcom/lge/cic/eden/namingrule/EventTitleMaker;
    const-string v16, "CN"

    invoke-virtual {v14}, Lcom/lge/cic/eden/namingrule/EventTitleMaker;->isForChina()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_175

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    const-string v17, "in CN"

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 316
    const-string v5, "[@string/memories_title_text_chinese]"

    .line 323
    :goto_d7
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "memories_card?id=sample_id&category="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&memories_title="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 324
    const-string v17, "&place="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&memories_source="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&eventTitle="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 325
    const-string v17, "&startTime="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&duration="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 326
    const-string v17, "&eventID="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v8, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&expire_time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 323
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 327
    .local v15, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Card Uri : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 303
    .end local v2    # "cardButton":Ljava/lang/String;
    .end local v5    # "cardTitle":Ljava/lang/String;
    .end local v14    # "tm":Lcom/lge/cic/eden/namingrule/EventTitleMaker;
    .end local v15    # "uri":Ljava/lang/String;
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    const-string v17, "    not a 1day"

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 304
    const-string v4, "[@string/memories_title_source_text]"

    goto/16 :goto_ab

    .line 319
    .restart local v2    # "cardButton":Ljava/lang/String;
    .restart local v5    # "cardTitle":Ljava/lang/String;
    .restart local v14    # "tm":Lcom/lge/cic/eden/namingrule/EventTitleMaker;
    :cond_175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    const-string v17, "not in CN"

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 320
    const-string v5, "[@string/memories_title_text]"

    goto/16 :goto_d7

    .line 329
    .end local v5    # "cardTitle":Ljava/lang/String;
    .end local v14    # "tm":Lcom/lge/cic/eden/namingrule/EventTitleMaker;
    :cond_184
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_21d

    .line 330
    const-string v5, "[@string/last_year_memories_title_text]"

    .line 331
    .restart local v5    # "cardTitle":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "last_year_memories_card?id=sample_id&category="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&memories_title="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 332
    const-string v17, "&place="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&memories_source="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&eventTitle="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 333
    const-string v17, "&startTime="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&duration="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 334
    const-string v17, "&eventID="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v8, Lcom/lge/cic/eden/db/type/EventInfo;->eventId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&expire_time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 331
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 335
    .restart local v15    # "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Card Uri : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 339
    .end local v5    # "cardTitle":Ljava/lang/String;
    .end local v15    # "uri":Ljava/lang/String;
    :cond_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "wrong eventType = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 340
    const/4 v15, 0x0

    goto/16 :goto_3c
.end method


# virtual methods
.method public clearPublishedEventId()V
    .registers 5

    .prologue
    .line 112
    iget-object v1, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->context:Landroid/content/Context;

    const-string v2, "com.lge.cic.eden.pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_KEY_PREVIOUS_EID"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public getPrefLastestEventId()I
    .registers 6

    .prologue
    .line 95
    iget-object v2, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->context:Landroid/content/Context;

    const-string v3, "com.lge.cic.eden.pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "PREF_KEY_PREVIOUS_EID"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 97
    .local v0, "lastestEventId":I
    iget-object v2, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  lastestEventId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 99
    return v0
.end method

.method public setPrefLastestEventId(I)V
    .registers 7
    .param p1, "eventId"    # I

    .prologue
    .line 103
    iget-object v2, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->context:Landroid/content/Context;

    const-string v3, "com.lge.cic.eden.pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 105
    .local v1, "pref":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  save lastestEventId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 106
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PREF_KEY_PREVIOUS_EID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    return-void
.end method

.method public showCard(Ljava/util/ArrayList;I)V
    .registers 11
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/EventInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    iget-object v4, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "showCard()"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    sub-long v0, v4, v6

    .line 58
    .local v0, "expireTime":J
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->makeCardUri(Ljava/util/ArrayList;IJ)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_37

    .line 65
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.lge.mrg.service.action.CARD_COMMAND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.lge.intent.category.CONCIERGE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v4, "extra_cmd"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v4, "extra_card_uri"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v4, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_36
    return-void

    .line 71
    :cond_37
    iget-object v4, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "uri is null."

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_36
.end method

.method public showCardIfNeeded()V
    .registers 5

    .prologue
    .line 76
    iget-object v2, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "showCardIfNeeded()"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->checkCard()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 79
    invoke-direct {p0}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->getNewEventInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 80
    .local v0, "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 81
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->showCard(Ljava/util/ArrayList;I)V

    .line 92
    .end local v0    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_1b
    :goto_1b
    return-void

    .line 85
    .restart local v0    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_1c
    invoke-direct {p0}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->getEventInfosAtLastYear()Ljava/util/ArrayList;

    move-result-object v1

    .line 86
    .local v1, "todaylastYear":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 87
    iget-object v2, p0, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v3, "TODAY_LASTYEAR_EVENT exist"

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/lge/cic/eden/smartnotice/cardpublisher/CardPublisher;->showCard(Ljava/util/ArrayList;I)V

    goto :goto_1b
.end method
