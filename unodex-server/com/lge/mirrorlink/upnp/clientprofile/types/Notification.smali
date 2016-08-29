.class public Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "Notification.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field actionNameMaxLength:I

.field maxActions:I

.field notiBodyMaxLength:I

.field notiTitleMaxLength:I

.field notiUiSupport:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiUiSupport:Z

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->maxActions:I

    .line 18
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->actionNameMaxLength:I

    .line 19
    const/16 v0, 0x14

    iput v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiTitleMaxLength:I

    .line 20
    const/16 v0, 0x50

    iput v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiBodyMaxLength:I

    .line 12
    return-void
.end method


# virtual methods
.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 12
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 26
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 27
    .local v2, "eventType":I
    :goto_6
    if-eq v2, v9, :cond_15a

    .line 28
    if-nez v2, :cond_f

    .line 83
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_6

    .line 30
    :cond_f
    if-eq v2, v9, :cond_a

    .line 32
    const/4 v5, 0x2

    if-ne v2, v5, :cond_144

    .line 33
    const-string/jumbo v5, "notiUiSupport"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiUiSupport:Z
    :try_end_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2f} :catch_30
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_79

    goto :goto_a

    .line 85
    .end local v2    # "eventType":I
    .end local v4    # "text":Ljava/lang/String;
    :catch_30
    move-exception v0

    .line 86
    .local v0, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "notification.fromXML : XmlPullParserException"

    invoke-static {v5, v6, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return v8

    .line 36
    .end local v0    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    :cond_3b
    :try_start_3b
    const-string/jumbo v5, "maxActions"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_4b} :catch_30
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4b} :catch_79

    move-result-object v4

    .line 38
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 40
    :try_start_4e
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->maxActions:I
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_5c} :catch_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_5c} :catch_30
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5c} :catch_79

    goto :goto_a

    .line 41
    :catch_5d
    move-exception v3

    .line 42
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_5e
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[notification.fromXML] invalid maxActions : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_78} :catch_30
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_78} :catch_79

    goto :goto_a

    .line 88
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :catch_79
    move-exception v1

    .line 89
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "notification.fromXML : IOException"

    invoke-static {v5, v6, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return v8

    .line 45
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    :cond_84
    :try_start_84
    const-string/jumbo v5, "actionNameMaxLength"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_94
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_94} :catch_30
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_94} :catch_79

    move-result-object v4

    .line 47
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 49
    :try_start_97
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->actionNameMaxLength:I
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_97 .. :try_end_a5} :catch_a7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_97 .. :try_end_a5} :catch_30
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a5} :catch_79

    goto/16 :goto_a

    .line 50
    :catch_a7
    move-exception v3

    .line 51
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_a8
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[notification.fromXML] invalid actionNameMaxLength : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 54
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_c4
    const-string/jumbo v5, "notiTitleMaxLength"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a8 .. :try_end_d4} :catch_30
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_d4} :catch_79

    move-result-object v4

    .line 56
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 58
    :try_start_d7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiTitleMaxLength:I
    :try_end_e5
    .catch Ljava/lang/NumberFormatException; {:try_start_d7 .. :try_end_e5} :catch_e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d7 .. :try_end_e5} :catch_30
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_e5} :catch_79

    goto/16 :goto_a

    .line 59
    :catch_e7
    move-exception v3

    .line 60
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_e8
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[notification.fromXML] invalid notiTitleMaxLength : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 63
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_104
    const-string/jumbo v5, "notiBodyMaxLength"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 64
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_114
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e8 .. :try_end_114} :catch_30
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_114} :catch_79

    move-result-object v4

    .line 65
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 67
    :try_start_117
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiBodyMaxLength:I
    :try_end_125
    .catch Ljava/lang/NumberFormatException; {:try_start_117 .. :try_end_125} :catch_127
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_117 .. :try_end_125} :catch_30
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_125} :catch_79

    goto/16 :goto_a

    .line 68
    :catch_127
    move-exception v3

    .line 69
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_128
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[notification.fromXML] invalid notiBodyMaxLength : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 73
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_144
    const/4 v5, 0x3

    if-ne v2, v5, :cond_155

    .line 75
    const-string/jumbo v5, "notification"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_151
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_128 .. :try_end_151} :catch_30
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_151} :catch_79

    move-result v5

    if-eqz v5, :cond_a

    .line 76
    return v9

    .line 78
    :cond_155
    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    goto/16 :goto_a

    .line 93
    :cond_15a
    return v8
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->hasRequiredElements()Z

    move-result v1

    if-nez v1, :cond_b

    .line 99
    const-string/jumbo v1, ""

    return-object v1

    .line 102
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "strXML":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<notiUiSupport>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiUiSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</notiUiSupport>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->maxActions:I

    if-lez v1, :cond_3a

    .line 107
    const-string/jumbo v1, "<maxActions>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->maxActions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</maxActions>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_3a
    iget v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->actionNameMaxLength:I

    if-lez v1, :cond_51

    .line 111
    const-string/jumbo v1, "<actionNameMaxLength>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->actionNameMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</actionNameMaxLength>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_51
    iget v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiTitleMaxLength:I

    if-lez v1, :cond_68

    .line 115
    const-string/jumbo v1, "<notiTitleMaxLength>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiTitleMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</notiTitleMaxLength>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_68
    iget v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiBodyMaxLength:I

    if-lez v1, :cond_7f

    .line 119
    const-string/jumbo v1, "<notiBodyMaxLength>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->notiBodyMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</notiBodyMaxLength>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_91

    .line 123
    const-string/jumbo v1, "<notification>\n"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v1, "</notification>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
