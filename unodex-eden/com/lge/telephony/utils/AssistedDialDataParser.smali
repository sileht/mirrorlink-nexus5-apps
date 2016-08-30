.class public Lcom/lge/telephony/utils/AssistedDialDataParser;
.super Ljava/lang/Object;
.source "AssistedDialDataParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EVENT_RELOAD_NECESSARY:I = 0x1

.field static final mMinCapacity:I = 0xa


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsReloadNecessary:Z

.field private mLastAssistDialProperty:Ljava/lang/String;

.field private mLastDialingPoint:Ljava/lang/String;

.field private mLastRadioTech:Ljava/lang/String;

.field private mLastRoamingStatus:Ljava/lang/String;

.field private mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

.field private maPatternList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/PatternPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/lge/telephony/utils/AssistedDialDataParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/lge/telephony/utils/AssistedDialDataParser;->$assertionsDisabled:Z

    .line 48
    return-void

    .line 28
    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/SIDRangeType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "table":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/utils/SIDRangeType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mIsReloadNecessary:Z

    .line 38
    new-instance v0, Lcom/lge/telephony/utils/AssistedDialDataParser$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/utils/AssistedDialDataParser$1;-><init>(Lcom/lge/telephony/utils/AssistedDialDataParser;)V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mHandler:Landroid/os/Handler;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastRadioTech:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastRoamingStatus:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastDialingPoint:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastAssistDialProperty:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .line 56
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v0, p2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->setSIDTable(Ljava/util/ArrayList;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->maPatternList:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 59
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->registerForReloadNecessary(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/lge/telephony/utils/AssistedDialDataParser;Z)V
    .registers 2

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mIsReloadNecessary:Z

    return-void
.end method

.method private backupCurrentState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "radioTech"    # Ljava/lang/String;
    .param p2, "roamStatus"    # Ljava/lang/String;
    .param p3, "dialingPoint"    # Ljava/lang/String;
    .param p4, "assistDialProp"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastRadioTech:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastRoamingStatus:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastDialingPoint:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastAssistDialProperty:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static getAreaCodeMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .param p0, "sFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v0, "AreaCodeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "AssistedDial"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "try to parseXml : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_1a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 195
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 196
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 197
    .local v5, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 198
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 200
    .local v2, "eventType":I
    :goto_32
    if-ne v9, v2, :cond_35

    .line 235
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_34
    return-object v0

    .line 201
    .restart local v2    # "eventType":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_35
    packed-switch v2, :pswitch_data_6a

    .line 224
    :cond_38
    :goto_38
    :pswitch_38
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_32

    .line 203
    :pswitch_3d
    const-string v6, "AssistedDial"

    const-string v7, "Start AreaCode.xml doc"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 227
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_45
    move-exception v6

    goto :goto_34

    .line 210
    .restart local v2    # "eventType":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_47
    const-string v6, "area"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 211
    const/4 v6, 0x0

    const-string v7, "number"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "number":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "city"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "city":Ljava/lang/String;
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_64} :catch_45
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_64} :catch_65
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_64} :catch_67

    goto :goto_38

    .line 229
    .end local v1    # "city":Ljava/lang/String;
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_65
    move-exception v6

    goto :goto_34

    :catch_67
    move-exception v6

    goto :goto_34

    .line 201
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_38
        :pswitch_47
    .end packed-switch
.end method

.method public static getSIDTable(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "sFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/SIDRangeType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/utils/SIDRangeType;>;"
    const-string v8, "AssistedDial"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "try to parseXml : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :try_start_1a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 244
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 245
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 246
    .local v7, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 247
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 249
    .local v3, "eventType":I
    :goto_32
    if-ne v11, v3, :cond_35

    .line 286
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_34
    return-object v0

    .line 250
    .restart local v3    # "eventType":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_35
    packed-switch v3, :pswitch_data_b0

    .line 275
    :cond_38
    :goto_38
    :pswitch_38
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_32

    .line 252
    :pswitch_3d
    const-string v8, "AssistedDial"

    const-string v9, "Start AreaCode.xml doc"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 278
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_45
    move-exception v8

    goto :goto_34

    .line 259
    .restart local v3    # "eventType":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_47
    const-string v8, "sidrange"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 260
    const/4 v8, 0x0

    const-string v9, "index"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 261
    .local v5, "index":I
    const/4 v8, 0x0

    const-string v9, "countryIndex"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 262
    .local v1, "countryIndex":I
    const/4 v8, 0x0

    const-string v9, "start"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 263
    .local v6, "start":I
    const/4 v8, 0x0

    const-string v9, "end"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 266
    .local v2, "end":I
    new-instance v8, Lcom/lge/telephony/utils/SIDRangeType;

    invoke-direct {v8, v5, v1, v6, v2}, Lcom/lge/telephony/utils/SIDRangeType;-><init>(IIII)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_97} :catch_45
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_97} :catch_98
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_97} :catch_ae

    goto :goto_38

    .line 281
    .end local v1    # "countryIndex":I
    .end local v2    # "end":I
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "index":I
    .end local v6    # "start":I
    .end local v7    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_98
    move-exception v8

    const-string v8, "AssistedDial"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to open "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catch_ae
    move-exception v8

    goto :goto_34

    .line 250
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_38
        :pswitch_47
    .end packed-switch
.end method

.method private preParsePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "sPattern"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preParsePattern start for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v0, "_OTA_IDD"

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 112
    const-string v0, "_OTA_NDD"

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaNDDPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 113
    const-string v0, "_OTA_CC"

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 114
    const-string v0, "_REF_IDD"

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefIDDPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 115
    const-string v0, "_REF_NDD"

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNDDPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 116
    const-string v0, "_REF_CC"

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 117
    const-string v0, "_REF_NUMLEN"

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNumLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 118
    const-string v0, "_REF_PNLEN"

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefPNLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 119
    const-string v0, "_REF_AC"

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 120
    return-object p1
.end method


# virtual methods
.method checkStateChanged()Z
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->isRadioTechChanged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 97
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastRoamingStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->isRoamingStatusChanged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 98
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastDialingPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->isDialingPointChanged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 99
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mLastAssistDialProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->isAssistDialPropertyChanged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 96
    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
.end method

.method getPatternMap(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "operatorNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/PatternPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .line 126
    if-nez p1, :cond_4

    .line 127
    const/4 v0, 0x0

    .line 147
    :goto_3
    return-object v0

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "curRadioTech":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRoamingStatus()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "curRoamingStatus":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentDialingPoint()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "curDialingPoint":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentAssistDialProperty()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "curAssistDialProperty":Ljava/lang/String;
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tech : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", roam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", point : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curProp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/lge/telephony/utils/AssistedDialDataParser;->checkStateChanged()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mIsReloadNecessary:Z

    if-nez v0, :cond_5b

    .line 140
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->maPatternList:Ljava/util/ArrayList;

    goto :goto_3

    .line 143
    :cond_5b
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->maPatternList:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/telephony/utils/AssistedDialDataParser;->getPatternMapFor(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->maPatternList:Ljava/util/ArrayList;

    .line 144
    invoke-direct {p0, v3, v4, v6, v5}, Lcom/lge/telephony/utils/AssistedDialDataParser;->backupCurrentState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mIsReloadNecessary:Z

    .line 147
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->maPatternList:Ljava/util/ArrayList;

    goto :goto_3
.end method

.method getPatternMapFor(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .param p1, "operatorNode"    # Lorg/w3c/dom/Node;
    .param p3, "tech"    # Ljava/lang/String;
    .param p4, "roaming"    # Ljava/lang/String;
    .param p5, "prop"    # Ljava/lang/String;
    .param p6, "point"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/PatternPair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/utils/PatternPair;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "patternMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/utils/PatternPair;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "curNode":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .line 155
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1    # "operatorNode":Lorg/w3c/dom/Node;
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 156
    sget-boolean v5, Lcom/lge/telephony/utils/AssistedDialDataParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1a

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-eq v7, v5, :cond_1a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 157
    :cond_1a
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 159
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "curNode":Lorg/w3c/dom/Node;
    invoke-interface {v0, p4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 160
    sget-boolean v5, Lcom/lge/telephony/utils/AssistedDialDataParser;->$assertionsDisabled:Z

    if-nez v5, :cond_34

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-eq v7, v5, :cond_34

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 161
    :cond_34
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 163
    .restart local v0    # "curNode":Lorg/w3c/dom/Node;
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "curNode":Lorg/w3c/dom/Node;
    invoke-interface {v0, p5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 164
    sget-boolean v5, Lcom/lge/telephony/utils/AssistedDialDataParser;->$assertionsDisabled:Z

    if-nez v5, :cond_4e

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-eq v7, v5, :cond_4e

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 165
    :cond_4e
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 167
    .restart local v0    # "curNode":Lorg/w3c/dom/Node;
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "curNode":Lorg/w3c/dom/Node;
    invoke-interface {v0, p6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 168
    sget-boolean v5, Lcom/lge/telephony/utils/AssistedDialDataParser;->$assertionsDisabled:Z

    if-nez v5, :cond_68

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-eq v7, v5, :cond_68

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 169
    :cond_68
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 172
    .restart local v0    # "curNode":Lorg/w3c/dom/Node;
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "curNode":Lorg/w3c/dom/Node;
    const-string v5, "pattern"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 173
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 174
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_78
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v1, v5, :cond_7f

    .line 186
    return-object p2

    .line 175
    :cond_7f
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v6, "search"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "sSearch":Ljava/lang/String;
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v6, "format"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "sFormat":Ljava/lang/String;
    new-instance v5, Lcom/lge/telephony/utils/PatternPair;

    invoke-direct {p0, v4}, Lcom/lge/telephony/utils/AssistedDialDataParser;->preParsePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/lge/telephony/utils/AssistedDialDataParser;->preParsePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/lge/telephony/utils/PatternPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_78
.end method

.method public parsePatternsXml(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 15
    .param p1, "sFileName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 67
    const-string v9, "AssistedDial"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "try to parseXml : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_15
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 71
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 72
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 73
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    .line 74
    .local v8, "root":Lorg/w3c/dom/Element;
    const-string v9, "operator"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 75
    .local v7, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .line 76
    .local v6, "node":Lorg/w3c/dom/Node;
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_32
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lt v5, v9, :cond_43

    .line 82
    :cond_38
    if-nez v6, :cond_60

    .line 83
    const-string v9, "AssistedDial"

    const-string v11, "Failed to load xml!! Something WRONG!!"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v10

    .line 91
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "index":I
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v8    # "root":Lorg/w3c/dom/Element;
    :goto_42
    return-object v6

    .line 77
    .restart local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "index":I
    .restart local v6    # "node":Lorg/w3c/dom/Node;
    .restart local v7    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v8    # "root":Lorg/w3c/dom/Element;
    :cond_43
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 78
    iget-object v9, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v9}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOperatorName()Ljava/lang/String;

    move-result-object v11

    move-object v0, v6

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v9, v0

    const-string v12, "operator"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_38

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 86
    :cond_60
    const-string v9, "AssistedDial"

    const-string v11, "xml has been parsed"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_67} :catch_68

    goto :goto_42

    .line 88
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "index":I
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v8    # "root":Lorg/w3c/dom/Element;
    :catch_68
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "AssistedDial"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Exception "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Has occured!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v10

    .line 91
    goto :goto_42
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialDataParser;->mStateManager:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->setContext(Landroid/content/Context;)V

    .line 64
    return-void
.end method
