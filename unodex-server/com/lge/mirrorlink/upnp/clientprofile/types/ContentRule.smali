.class public Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "ContentRule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field ruleId:I

.field ruleValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleId:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleValue:Ljava/lang/String;

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

    .line 26
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 27
    .local v2, "eventType":I
    :goto_6
    if-eq v2, v9, :cond_d5

    .line 28
    if-nez v2, :cond_f

    .line 70
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

    if-ne v2, v5, :cond_a4

    .line 35
    const-string/jumbo v5, "ruleId"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_24} :catch_5d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_24} :catch_84

    move-result-object v4

    .line 38
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 40
    :try_start_27
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleId:I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_35} :catch_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_35} :catch_5d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_35} :catch_84

    .line 45
    :goto_35
    :try_start_35
    iget v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleId:I

    if-ltz v5, :cond_3f

    iget v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleId:I

    const/16 v6, 0x1f

    if-le v5, v6, :cond_a

    .line 46
    :cond_3f
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected contentRules.rule.ruleId : OutofRange, replaced with 0 from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v5, 0x0

    iput v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleId:I
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_5c} :catch_5d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_5c} :catch_84

    goto :goto_a

    .line 72
    .end local v2    # "eventType":I
    .end local v4    # "text":Ljava/lang/String;
    :catch_5d
    move-exception v0

    .line 73
    .local v0, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "contentRules.fromXML : XmlPullParserException"

    invoke-static {v5, v6, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return v8

    .line 41
    .end local v0    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    .restart local v4    # "text":Ljava/lang/String;
    :catch_68
    move-exception v3

    .line 42
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_69
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[ContentRule.fromXML] invalid ruleId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_83} :catch_5d
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_83} :catch_84

    goto :goto_35

    .line 75
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :catch_84
    move-exception v1

    .line 76
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "contentRules.fromXML : IOException"

    invoke-static {v5, v6, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return v8

    .line 51
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    :cond_8f
    :try_start_8f
    const-string/jumbo v5, "ruleValue"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleValue:Ljava/lang/String;

    goto/16 :goto_a

    .line 54
    :cond_a4
    const/4 v5, 0x3

    if-ne v2, v5, :cond_d0

    .line 56
    const-string/jumbo v5, "rule"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 57
    return v9

    .line 58
    :cond_b5
    const-string/jumbo v5, "ruleId"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 59
    const-string/jumbo v5, "ruleValue"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_cc} :catch_5d
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_cc} :catch_84

    move-result v5

    .line 58
    if-nez v5, :cond_a

    .line 63
    return v8

    .line 65
    :cond_d0
    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    goto/16 :goto_a

    .line 80
    :cond_d5
    return v8
.end method

.method public hasRequiredElements()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 86
    iget v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleId:I

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleId:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_d

    .line 87
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_d
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->hasRequiredElements()Z

    move-result v1

    if-nez v1, :cond_a

    .line 96
    const-string/jumbo v1, ""

    return-object v1

    .line 99
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .local v0, "strXML":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<rule>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v1, "<ruleId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</ruleId>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 105
    const-string/jumbo v1, "<ruleValue>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->ruleValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</ruleValue>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_45
    const-string/jumbo v1, "</rule>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
