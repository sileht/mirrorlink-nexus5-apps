.class public Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "DisplayInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field public contentCategory:J

.field public contentRules:J

.field public orientation:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

.field public trustLevel:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 16
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 21
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentCategory:J

    .line 22
    iput-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentRules:J

    .line 23
    sget-object v0, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->both:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->orientation:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    .line 24
    iput-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->trustLevel:J

    .line 16
    return-void
.end method


# virtual methods
.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 12
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 62
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 63
    .local v2, "eventType":I
    :goto_6
    if-eq v2, v9, :cond_11c

    .line 64
    if-nez v2, :cond_f

    .line 120
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_6

    .line 66
    :cond_f
    if-eq v2, v9, :cond_a

    .line 68
    const/4 v5, 0x2

    if-ne v2, v5, :cond_106

    .line 71
    const-string/jumbo v5, "contentCategory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_24} :catch_52
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_24} :catch_9c

    move-result-object v4

    .line 73
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 75
    :try_start_27
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentCategory:J
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_35} :catch_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_35} :catch_52
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_35} :catch_9c

    goto :goto_a

    .line 76
    :catch_36
    move-exception v3

    .line 77
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_37
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[DisplayInfo.fromXML] invalid contentCategory : "

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

    .line 122
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :catch_52
    move-exception v0

    .line 123
    .local v0, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "displayInfo.fromXML : XmlPullParserException"

    invoke-static {v5, v6, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    return v8

    .line 80
    .end local v0    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    :cond_5d
    :try_start_5d
    const-string/jumbo v5, "contentRules"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d .. :try_end_6d} :catch_52
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6d} :catch_9c

    move-result-object v4

    .line 82
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 84
    :try_start_70
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentRules:J
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_7e} :catch_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_7e} :catch_52
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7e} :catch_9c

    goto :goto_a

    .line 85
    :catch_7f
    move-exception v3

    .line 86
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_80
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[DisplayInfo.fromXML] invalid contentRules : "

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

    .line 125
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :catch_9c
    move-exception v1

    .line 126
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "displayInfo.fromXML : IOException"

    invoke-static {v5, v6, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    return v8

    .line 89
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    :cond_a7
    :try_start_a7
    const-string/jumbo v5, "orientation"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 90
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/mirrorlink/common/StringUtil;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 93
    invoke-static {v4}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->valueOf(Ljava/lang/String;)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->orientation:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    goto/16 :goto_a

    .line 99
    .end local v4    # "text":Ljava/lang/String;
    :cond_c6
    const-string/jumbo v5, "trustLevel"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 100
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_d6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a7 .. :try_end_d6} :catch_52
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_d6} :catch_9c

    move-result-object v4

    .line 101
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 103
    :try_start_d9
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->trustLevel:J
    :try_end_e7
    .catch Ljava/lang/NumberFormatException; {:try_start_d9 .. :try_end_e7} :catch_e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d9 .. :try_end_e7} :catch_52
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_e7} :catch_9c

    goto/16 :goto_a

    .line 104
    :catch_e9
    move-exception v3

    .line 105
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_ea
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[DisplayInfo.fromXML] invalid trustLevel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 110
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_106
    const/4 v5, 0x3

    if-ne v2, v5, :cond_117

    .line 112
    const-string/jumbo v5, "displayInfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_113
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ea .. :try_end_113} :catch_52
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_113} :catch_9c

    move-result v5

    if-eqz v5, :cond_a

    .line 113
    return v9

    .line 115
    :cond_117
    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    goto/16 :goto_a

    .line 130
    :cond_11c
    return v8
.end method

.method public makeXMLString(ZZ)Ljava/lang/String;
    .registers 14
    .param p1, "isCertified"    # Z
    .param p2, "driveCert"    # Z

    .prologue
    const/16 v10, 0x10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->hasRequiredElements()Z

    move-result v1

    if-nez v1, :cond_10

    .line 137
    const-string/jumbo v1, ""

    return-object v1

    .line 140
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, "strXML":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentCategory:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_4b

    .line 143
    if-nez p2, :cond_c9

    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentCategory:J

    invoke-static {v2, v3, v10}, Lcom/lge/mirrorlink/common/Utility;->isSet(JI)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 145
    const-string/jumbo v1, "<contentCategory>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%08X"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentCategory:J

    invoke-static {v4, v5, v10}, Lcom/lge/mirrorlink/common/Utility;->clearBit(JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</contentCategory>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_4b
    :goto_4b
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentRules:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_73

    .line 152
    const-string/jumbo v1, "<contentRules>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%08X"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentRules:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</contentRules>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_73
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->orientation:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    if-eqz v1, :cond_8e

    .line 156
    const-string/jumbo v1, "<orientation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->orientation:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</orientation>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_8e
    if-eqz p1, :cond_ed

    .line 160
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

    .line 167
    :cond_b2
    :goto_b2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c4

    .line 168
    const-string/jumbo v1, "<displayInfo>\n"

    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v1, "</displayInfo>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    :cond_c9
    const-string/jumbo v1, "<contentCategory>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%08X"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentCategory:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</contentCategory>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4b

    .line 161
    :cond_ed
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->trustLevel:J

    const-wide/16 v4, 0xa0

    cmp-long v1, v2, v4

    if-nez v1, :cond_118

    .line 162
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

    goto :goto_b2

    .line 163
    :cond_118
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->trustLevel:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_b2

    .line 164
    const-string/jumbo v1, "<trustLevel>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%04X"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->trustLevel:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</trustLevel>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2
.end method

.method public matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 28
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 29
    :cond_6
    return v5

    .line 33
    :cond_7
    :try_start_7
    const-string/jumbo v1, "displayInfo@contentCategory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 34
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentCategory:J

    invoke-static {v2, v3, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 35
    return v4

    .line 37
    :cond_19
    const-string/jumbo v1, "displayInfo@contentRules"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 38
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentRules:J

    invoke-static {v2, v3, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 39
    return v4

    .line 41
    :cond_2b
    const-string/jumbo v1, "displayInfo@orientation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 42
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->orientation:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->orientation:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$DisplayOrientation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 43
    return v4

    .line 45
    :cond_45
    const-string/jumbo v1, "displayInfo@trustLevel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 46
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->trustLevel:J

    invoke-static {v2, v3, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(JLjava/lang/String;)Z
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_53} :catch_57

    move-result v1

    if-eqz v1, :cond_84

    .line 47
    return v4

    .line 50
    :catch_57
    move-exception v0

    .line 51
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

    .line 54
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_84
    return v5
.end method
