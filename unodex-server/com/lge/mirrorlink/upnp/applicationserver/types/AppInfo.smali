.class public Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "AppInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field public appCategory:J

.field public trustLevel:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 18
    iput-wide v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J

    .line 19
    iput-wide v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->trustLevel:J

    .line 13
    return-void
.end method


# virtual methods
.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 12
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 51
    .local v2, "eventType":I
    :goto_6
    if-eq v2, v9, :cond_bd

    .line 52
    if-nez v2, :cond_f

    .line 89
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_6

    .line 54
    :cond_f
    if-eq v2, v9, :cond_a

    .line 56
    const/4 v5, 0x2

    if-ne v2, v5, :cond_a7

    .line 59
    const-string/jumbo v5, "appCategory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_24} :catch_52
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_24} :catch_9c

    move-result-object v4

    .line 61
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 63
    :try_start_27
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_35} :catch_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_35} :catch_52
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_35} :catch_9c

    goto :goto_a

    .line 64
    :catch_36
    move-exception v3

    .line 65
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_37
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[appInfo.fromXML] invalid appCategory : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_51} :catch_9c

    goto :goto_a

    .line 91
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :catch_52
    move-exception v0

    .line 92
    .local v0, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "appInfo.fromXML : XmlPullParserException"

    invoke-static {v5, v6, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return v8

    .line 68
    .end local v0    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    :cond_5d
    :try_start_5d
    const-string/jumbo v5, "trustLevel"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d .. :try_end_6d} :catch_52
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6d} :catch_9c

    move-result-object v4

    .line 70
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 72
    :try_start_70
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->trustLevel:J
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_7e} :catch_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_7e} :catch_52
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7e} :catch_9c

    goto :goto_a

    .line 73
    :catch_7f
    move-exception v3

    .line 74
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_80
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[appInfo.fromXML] invalid trustLevel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_9a} :catch_52
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_9a} :catch_9c

    goto/16 :goto_a

    .line 94
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :catch_9c
    move-exception v1

    .line 95
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "appInfo.fromXML : IOException"

    invoke-static {v5, v6, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return v8

    .line 79
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    :cond_a7
    const/4 v5, 0x3

    if-ne v2, v5, :cond_b8

    .line 81
    :try_start_aa
    const-string/jumbo v5, "appInfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_b4} :catch_52
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b4} :catch_9c

    move-result v5

    if-eqz v5, :cond_a

    .line 82
    return v9

    .line 84
    :cond_b8
    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    goto/16 :goto_a

    .line 99
    :cond_bd
    return v8
.end method

.method public makeXMLString(Z)Ljava/lang/String;
    .registers 12
    .param p1, "isCertified"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->hasRequiredElements()Z

    move-result v1

    if-nez v1, :cond_e

    .line 105
    const-string/jumbo v1, ""

    return-object v1

    .line 108
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, "strXML":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_3b

    .line 111
    const-string/jumbo v1, "<appCategory>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%08X"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</appCategory>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_3b
    if-eqz p1, :cond_76

    .line 115
    const-string/jumbo v1, "<trustLevel>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%04X"

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v4, 0xa0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</trustLevel>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_5f
    :goto_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_71

    .line 123
    const-string/jumbo v1, "<appInfo>\n"

    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v1, "</appInfo>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 116
    :cond_76
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->trustLevel:J

    const-wide/16 v4, 0xa0

    cmp-long v1, v2, v4

    if-nez v1, :cond_a1

    .line 117
    const-string/jumbo v1, "<trustLevel>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%04X"

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v4, 0x60

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</trustLevel>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 118
    :cond_a1
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->trustLevel:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_5f

    .line 119
    const-string/jumbo v1, "<trustLevel>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%04X"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->trustLevel:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</trustLevel>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f
.end method

.method public matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 24
    :cond_6
    return v4

    .line 27
    :cond_7
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appInfo.matchesFilter \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :try_start_33
    const-string/jumbo v1, "appInfo@appCategory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 31
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J

    invoke-static {v2, v3, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 32
    return v5

    .line 34
    :cond_45
    const-string/jumbo v1, "appInfo@trustLevel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 35
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->trustLevel:J

    invoke-static {v2, v3, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(JLjava/lang/String;)Z
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_53} :catch_57

    move-result v1

    if-eqz v1, :cond_84

    .line 36
    return v5

    .line 39
    :catch_57
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid AppListingFilter with \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_84
    return v4
.end method
