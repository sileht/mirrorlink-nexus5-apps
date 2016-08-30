.class public Lcom/lge/concierge/sdk/SmartNotice;
.super Ljava/lang/Object;
.source "SmartNotice.java"


# static fields
.field private static final ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

.field private static final AUTHORITY:Ljava/lang/String; = "com.lge.launcher2.settings"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final ITEM_TYPE_APPWIDGET:I = 0x4

.field public static final SDK_VERSION:Ljava/lang/String; = "1.1"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    new-instance v0, Landroid/content/ComponentName;

    .line 21
    const-string v1, "com.lge.mrg.service"

    const-string v2, "com.lge.mrg.service.internal.ActionManagerService"

    .line 20
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/concierge/sdk/SmartNotice;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    .line 24
    const-string v0, "content://com.lge.launcher2.settings/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/concierge/sdk/SmartNotice;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCard(Landroid/content/Context;Lcom/lge/concierge/sdk/SmartCard;)V
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "smartCard"    # Lcom/lge/concierge/sdk/SmartCard;

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mrg.service.action.CARD_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_cmd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string v1, "extra_card_parcelable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    const-string v1, "com.lge.intent.category.CONCIERGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public static addCard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "cardUri"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mrg.service.action.CARD_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/lge/concierge/sdk/SmartNotice;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    const-string v1, "extra_cmd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    const-string v1, "extra_card_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "extra_card_category"

    .line 42
    const-string v2, "com.lge.intent.category.CONCIERGE"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    return-void
.end method

.method public static getCardDefaultOff(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawJsonResId"    # I

    .prologue
    const/4 v2, 0x0

    .line 110
    .line 111
    :try_start_1
    const-string v3, "default_off"

    .line 110
    invoke-static {p0, p1, v3}, Lcom/lge/concierge/sdk/ConciergeFeature;->isCardAvailable(Landroid/content/Context;ILjava/lang/String;)Z
    :try_end_6
    .catch Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat; {:try_start_1 .. :try_end_6} :catch_b

    move-result v0

    .line 112
    .local v0, "bEnabled":Z
    if-eqz v0, :cond_a

    const/4 v2, 0x1

    .line 116
    .end local v0    # "bEnabled":Z
    :cond_a
    :goto_a
    return v2

    .line 113
    :catch_b
    move-exception v1

    .line 114
    .local v1, "e":Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;
    invoke-virtual {v1}, Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;->printStackTrace()V

    goto :goto_a
.end method

.method public static isCardFeatureAvailable(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawJsonResId"    # I

    .prologue
    .line 92
    .line 93
    :try_start_0
    const-string v1, "featuring"

    .line 92
    invoke-static {p0, p1, v1}, Lcom/lge/concierge/sdk/ConciergeFeature;->isCardAvailable(Landroid/content/Context;ILjava/lang/String;)Z
    :try_end_5
    .catch Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 97
    :goto_6
    return v1

    .line 94
    :catch_7
    move-exception v0

    .line 95
    .local v0, "e":Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;
    invoke-virtual {v0}, Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;->printStackTrace()V

    .line 97
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static isWidgetExist(Landroid/content/Context;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/lge/concierge/sdk/SmartNotice;->CONTENT_URI:Landroid/net/Uri;

    .line 130
    const-string v3, "itemType=? and className=?"

    .line 131
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 132
    const-string v5, "com.lge.concierge.ConciergeWidgetProvider"

    aput-object v5, v4, v7

    move-object v5, v2

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2a

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_28

    move v0, v7

    .line 137
    :goto_27
    return v0

    :cond_28
    move v0, v8

    .line 135
    goto :goto_27

    :cond_2a
    move v0, v8

    .line 137
    goto :goto_27
.end method

.method public static removeCard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "cardUri"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mrg.service.action.CARD_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/lge/concierge/sdk/SmartNotice;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    const-string v1, "extra_cmd"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v1, "extra_card_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "extra_card_category"

    .line 61
    const-string v2, "com.lge.intent.category.CONCIERGE"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    return-void
.end method
