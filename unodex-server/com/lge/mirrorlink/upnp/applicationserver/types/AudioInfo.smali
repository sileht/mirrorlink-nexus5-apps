.class public Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "AudioInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field audioType:Ljava/lang/String;

.field contentCategory:J

.field contentRules:J

.field trustLevel:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 15
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 20
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->audioType:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentCategory:J

    .line 22
    iput-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentRules:J

    .line 23
    iput-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->trustLevel:J

    .line 15
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Lcom/lge/mirrorlink/common/XMLElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    .line 31
    .local v0, "cloned":Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->audioType:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->audioType:Ljava/lang/String;

    .line 33
    return-object v0
.end method

.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 12
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 72
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 73
    .local v2, "eventType":I
    :goto_6
    if-eq v2, v9, :cond_112

    .line 74
    if-nez v2, :cond_f

    .line 122
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_6

    .line 76
    :cond_f
    if-eq v2, v9, :cond_a

    .line 78
    const/4 v5, 0x2

    if-ne v2, v5, :cond_fc

    .line 81
    const-string/jumbo v5, "audioType"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->audioType:Ljava/lang/String;
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_71

    goto :goto_a

    .line 124
    .end local v2    # "eventType":I
    :catch_28
    move-exception v0

    .line 125
    .local v0, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "audioInfo.fromXML : XmlPullParserException"

    invoke-static {v5, v6, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    return v8

    .line 83
    .end local v0    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    :cond_33
    :try_start_33
    const-string/jumbo v5, "contentCategory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_43} :catch_28
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_43} :catch_71

    move-result-object v4

    .line 85
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 87
    :try_start_46
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentCategory:J
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_54} :catch_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_54} :catch_28
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_54} :catch_71

    goto :goto_a

    .line 88
    :catch_55
    move-exception v3

    .line 89
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_56
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[AudioInfo.fromXML] invalid contentCategory : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_70} :catch_28
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_70} :catch_71

    goto :goto_a

    .line 127
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :catch_71
    move-exception v1

    .line 128
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "audioInfo.fromXML : IOException"

    invoke-static {v5, v6, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    return v8

    .line 92
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    :cond_7c
    :try_start_7c
    const-string/jumbo v5, "contentRules"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 93
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_8c} :catch_28
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8c} :catch_71

    move-result-object v4

    .line 94
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 96
    :try_start_8f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentRules:J
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_9d} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_9d} :catch_28
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9d} :catch_71

    goto/16 :goto_a

    .line 97
    :catch_9f
    move-exception v3

    .line 98
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_a0
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[AudioInfo.fromXML] invalid contentRules : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 101
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_bc
    const-string/jumbo v5, "trustLevel"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 102
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a0 .. :try_end_cc} :catch_28
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_cc} :catch_71

    move-result-object v4

    .line 103
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 105
    :try_start_cf
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->trustLevel:J
    :try_end_dd
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_dd} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cf .. :try_end_dd} :catch_28
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_dd} :catch_71

    goto/16 :goto_a

    .line 106
    :catch_df
    move-exception v3

    .line 107
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_e0
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[AudioInfo.fromXML] invalid trustLevel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 112
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_fc
    const/4 v5, 0x3

    if-ne v2, v5, :cond_10d

    .line 114
    const-string/jumbo v5, "audioInfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_109
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e0 .. :try_end_109} :catch_28
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_109} :catch_71

    move-result v5

    if-eqz v5, :cond_a

    .line 115
    return v9

    .line 117
    :cond_10d
    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    goto/16 :goto_a

    .line 132
    :cond_112
    return v8
.end method

.method public makeXMLString(Z)Ljava/lang/String;
    .registers 12
    .param p1, "isCertified"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->hasRequiredElements()Z

    move-result v1

    if-nez v1, :cond_e

    .line 138
    const-string/jumbo v1, ""

    return-object v1

    .line 141
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "strXML":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->audioType:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 144
    const-string/jumbo v1, "<audioType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->audioType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v1, "</audioType>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_28
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentCategory:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_50

    .line 150
    const-string/jumbo v1, "<contentCategory>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%08X"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentCategory:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</contentCategory>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_50
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentRules:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_78

    .line 154
    const-string/jumbo v1, "<contentRules>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%08X"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentRules:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</contentRules>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_78
    if-eqz p1, :cond_b3

    .line 158
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

    .line 165
    :cond_9c
    :goto_9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_ae

    .line 166
    const-string/jumbo v1, "<audioInfo>\n"

    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v1, "</audioInfo>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_ae
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 159
    :cond_b3
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->trustLevel:J

    const-wide/16 v4, 0xa0

    cmp-long v1, v2, v4

    if-nez v1, :cond_de

    .line 160
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

    goto :goto_9c

    .line 161
    :cond_de
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->trustLevel:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_9c

    .line 162
    const-string/jumbo v1, "<trustLevel>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x%04X"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->trustLevel:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</trustLevel>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9c
.end method

.method public matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 39
    :cond_6
    return v5

    .line 43
    :cond_7
    :try_start_7
    const-string/jumbo v1, "audioInfo@audioType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 44
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->audioType:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 45
    return v4

    .line 47
    :cond_19
    const-string/jumbo v1, "audioInfo@contentCategory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 48
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentCategory:J

    invoke-static {v2, v3, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 49
    return v4

    .line 51
    :cond_2b
    const-string/jumbo v1, "audioInfo@contentRules"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 52
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentRules:J

    invoke-static {v2, v3, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 53
    return v4

    .line 55
    :cond_3d
    const-string/jumbo v1, "audioInfo@trustLevel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 56
    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->trustLevel:J

    invoke-static {v2, v3, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(JLjava/lang/String;)Z
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_4b} :catch_4f

    move-result v1

    if-eqz v1, :cond_7c

    .line 57
    return v4

    .line 60
    :catch_4f
    move-exception v0

    .line 61
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

    .line 64
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_7c
    return v5
.end method
