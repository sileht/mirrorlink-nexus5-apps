.class Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;
.super Ljava/lang/Thread;
.source "VZWAggregation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/aggregation/VZWAggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AggregationSubThread"
.end annotation


# instance fields
.field isComplete:Z

.field redirectMaxCount:I

.field final synthetic this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V
    .registers 3

    .prologue
    .line 179
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z

    .line 183
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->redirectMaxCount:I

    return-void
.end method


# virtual methods
.method public getTagContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "parentTag"    # Ljava/lang/String;
    .param p3, "parentEndTag"    # Ljava/lang/String;
    .param p4, "targetTag"    # Ljava/lang/String;
    .param p5, "targetEndTag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 293
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 294
    .local v2, "parentStartIndex":I
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 296
    .local v1, "parentEndIndex":I
    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    if-eqz p4, :cond_12

    if-nez p5, :cond_13

    .line 312
    :cond_12
    :goto_12
    return-object v3

    .line 299
    :cond_13
    if-eq v2, v7, :cond_12

    if-eq v1, v7, :cond_12

    .line 302
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "parentContent":Ljava/lang/String;
    invoke-virtual {v0, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 305
    .local v5, "targetStartIndex":I
    invoke-virtual {v0, p5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 307
    .local v4, "targetEndIndex":I
    if-eq v5, v7, :cond_12

    if-eq v4, v7, :cond_12

    .line 310
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "resultContent":Ljava/lang/String;
    goto :goto_12
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 188
    iget-object v7, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$4(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Landroid/content/Context;

    move-result-object v6

    const-string v8, "wifi"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, v7, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 189
    iget-object v7, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$4(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Landroid/content/Context;

    move-result-object v6

    const-string v8, "phone"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, v7, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 190
    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    invoke-static {}, Landroid/telephony/TelephonyManagerEx;->getDefault()Landroid/telephony/TelephonyManagerEx;

    move-result-object v7

    iput-object v7, v6, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "VzW3652987!"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    iget-object v7, v7, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@hds.vzw3g.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_userName_Value:Ljava/lang/String;

    .line 196
    const-string v6, "WiFiAggregation"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " Parameter : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_userName_Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_userName_Value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 201
    .local v1, "cal":Ljava/util/Calendar;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%02d"

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%02d"

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%04d"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "curDate":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    iget-object v6, v6, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "curMDN":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # invokes: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->getEQIMID()Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$5(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "EQIMID":Ljava/lang/String;
    if-eqz v0, :cond_e7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v10, :cond_e7

    if-eqz v3, :cond_e7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v10, :cond_f1

    .line 207
    :cond_e7
    const-string v6, "FAIL"

    const-string v7, "SIM DATA ERROR"

    invoke-virtual {p0, v6, v7, v11, v11}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iput-boolean v10, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z

    .line 259
    :goto_f0
    return-void

    .line 212
    :cond_f1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "hashInput":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # invokes: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->getHashString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$6(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_password_Value:Ljava/lang/String;

    .line 214
    const-string v6, "WiFiAggregation"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " Parameter : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_password_Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_password_Value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] before hash = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    iget-object v6, v6, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_155

    .line 220
    const-string v6, "FAIL"

    const-string v7, "WIFI NETWORK UNAVAILABLE"

    invoke-virtual {p0, v6, v7, v11, v11}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-boolean v10, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z

    goto :goto_f0

    .line 224
    :cond_155
    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    iget-object v6, v6, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 225
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_18c

    .line 226
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_181

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v10, :cond_181

    .line 227
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_181

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-ge v6, v7, :cond_197

    .line 229
    :cond_181
    const-string v6, "FAIL"

    const-string v7, "WIFI NETWORK UNAVAILABLE"

    invoke-virtual {p0, v6, v7, v11, v11}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iput-boolean v10, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z

    goto/16 :goto_f0

    .line 235
    :cond_18c
    const-string v6, "FAIL"

    const-string v7, "mWifiManager getConnectionInfo is null"

    invoke-virtual {p0, v6, v7, v11, v11}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iput-boolean v10, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z

    goto/16 :goto_f0

    .line 239
    :cond_197
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_stationId_Value:Ljava/lang/String;

    .line 240
    const-string v6, "WiFiAggregation"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " Parameter : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_stationId_Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_stationId_Value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v6, "WiFiAggregation"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[Sub Thread] Step1 - connected URL:["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->lastUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$7(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v6, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;

    iget-object v7, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    invoke-direct {v6, v7, v11}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;-><init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;)V

    new-array v7, v10, [Ljava/lang/String;

    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->lastUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$7(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v6, v7}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_f0
.end method

.method public sendResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "bw_user_group"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string v1, "WiFiAggregation"

    const-string v2, "Send Result Intent [com.lge.wifi.impl.aggregation.end]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-nez p1, :cond_11

    .line 266
    const-string v1, "WiFiAggregation"

    const-string v2, "Send Result is NULL !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local p1    # "result":Ljava/lang/String;
    .end local p2    # "description":Ljava/lang/String;
    .end local p3    # "bw_user_group":Ljava/lang/String;
    .end local p4    # "location":Ljava/lang/String;
    :goto_10
    return-void

    .line 271
    .restart local p1    # "result":Ljava/lang/String;
    .restart local p2    # "description":Ljava/lang/String;
    .restart local p3    # "bw_user_group":Ljava/lang/String;
    .restart local p4    # "location":Ljava/lang/String;
    :cond_11
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, " aggregation_result "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_84

    move-object v1, p1

    :goto_1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, " aggregation_description "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_87

    move-object v1, p2

    :goto_34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, " aggregation_bw_user_group "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_8a

    move-object v1, p3

    :goto_4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, " aggregation_location "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_8d

    move-object v1, p4

    :goto_62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v1, "FAIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->retryCnt:I
    invoke-static {}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$8()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_90

    .line 278
    const-string v1, "WiFiAggregation"

    const-string v2, "Ignore fail intent. Only last try just send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 271
    :cond_84
    const-string v1, " "

    goto :goto_1d

    .line 272
    :cond_87
    const-string v1, " "

    goto :goto_34

    .line 273
    :cond_8a
    const-string v1, " "

    goto :goto_4b

    .line 274
    :cond_8d
    const-string v1, " "

    goto :goto_62

    .line 282
    :cond_90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.impl.aggregation.end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aggregation_result"

    if-eqz p1, :cond_c0

    .end local p1    # "result":Ljava/lang/String;
    :goto_9b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v1, "aggregation_description"

    if-eqz p2, :cond_c3

    .end local p2    # "description":Ljava/lang/String;
    :goto_a2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v1, "aggregation_bw_user_group"

    if-eqz p3, :cond_c6

    .end local p3    # "bw_user_group":Ljava/lang/String;
    :goto_a9
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "aggregation_location"

    if-eqz p4, :cond_c9

    .end local p4    # "location":Ljava/lang/String;
    :goto_b0
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    # getter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$4(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_10

    .line 283
    .restart local p1    # "result":Ljava/lang/String;
    .restart local p2    # "description":Ljava/lang/String;
    .restart local p3    # "bw_user_group":Ljava/lang/String;
    .restart local p4    # "location":Ljava/lang/String;
    :cond_c0
    const-string p1, " "

    goto :goto_9b

    .line 284
    .end local p1    # "result":Ljava/lang/String;
    :cond_c3
    const-string p2, " "

    goto :goto_a2

    .line 285
    .end local p2    # "description":Ljava/lang/String;
    :cond_c6
    const-string p3, " "

    goto :goto_a9

    .line 286
    .end local p3    # "bw_user_group":Ljava/lang/String;
    :cond_c9
    const-string p4, " "

    goto :goto_b0
.end method
